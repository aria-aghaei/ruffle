//! `flash.system.ApplicationDomain` class

use crate::avm2::activation::Activation;
use crate::avm2::class::Class;
use crate::avm2::method::{Method, NativeMethodImpl};
use crate::avm2::object::{appdomain_allocator, DomainObject, Object, TObject};
use crate::avm2::value::Value;
use crate::avm2::Error;
use crate::avm2::Multiname;
use crate::avm2::Namespace;
use crate::avm2::QName;
use gc_arena::GcCell;

/// Implements `flash.system.ApplicationDomain`'s instance constructor.
pub fn instance_init<'gc>(
    activation: &mut Activation<'_, 'gc>,
    this: Option<Object<'gc>>,
    _args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    if let Some(this) = this {
        activation.super_init(this, &[])?;
    }

    Ok(Value::Undefined)
}

/// Implements `flash.system.ApplicationDomain`'s class constructor.
pub fn class_init<'gc>(
    _activation: &mut Activation<'_, 'gc>,
    _this: Option<Object<'gc>>,
    _args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    Ok(Value::Undefined)
}

/// `currentDomain` static property.
pub fn current_domain<'gc>(
    activation: &mut Activation<'_, 'gc>,
    _this: Option<Object<'gc>>,
    _args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    let appdomain = activation.caller_domain();

    Ok(DomainObject::from_domain(activation, appdomain)?.into())
}

/// `parentDomain` property
pub fn parent_domain<'gc>(
    activation: &mut Activation<'_, 'gc>,
    this: Option<Object<'gc>>,
    _args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    if let Some(appdomain) = this.and_then(|this| this.as_application_domain()) {
        if let Some(parent_domain) = appdomain.parent_domain() {
            return Ok(DomainObject::from_domain(activation, parent_domain)?.into());
        }
    }

    Ok(Value::Null)
}

/// `getDefinition` method
pub fn get_definition<'gc>(
    activation: &mut Activation<'_, 'gc>,
    this: Option<Object<'gc>>,
    args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    if let Some(appdomain) = this.and_then(|this| this.as_application_domain()) {
        let name = args
            .get(0)
            .cloned()
            .unwrap_or_else(|| "".into())
            .coerce_to_string(activation)?;
        let name = QName::from_qualified_name(name, activation);
        let (qname, mut defined_script) = match appdomain.get_defining_script(&name.into())? {
            Some(data) => data,
            None => {
                return Err(Error::AvmError(crate::avm2::error::reference_error(
                    activation,
                    &format!(
                        "Error #1065: Variable {} is not defined.",
                        name.local_name()
                    ),
                    1065,
                )?))
            }
        };
        let globals = defined_script.globals(&mut activation.context)?;
        let definition = globals.get_property(&qname.into(), activation)?;

        return Ok(definition);
    }

    Ok(Value::Undefined)
}

/// `hasDefinition` method
pub fn has_definition<'gc>(
    activation: &mut Activation<'_, 'gc>,
    this: Option<Object<'gc>>,
    args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    if let Some(appdomain) = this.and_then(|this| this.as_application_domain()) {
        let name = args
            .get(0)
            .cloned()
            .unwrap_or_else(|| "".into())
            .coerce_to_string(activation)?;

        let qname = QName::from_qualified_name(name, activation);

        return Ok(appdomain.has_definition(qname).into());
    }

    Ok(Value::Undefined)
}

/// `domainMemory` property setter
pub fn set_domain_memory<'gc>(
    activation: &mut Activation<'_, 'gc>,
    this: Option<Object<'gc>>,
    args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    if let Some(Value::Object(arg)) = args.get(0) {
        if let Some(bytearray_obj) = arg.as_bytearray_object() {
            if let Some(appdomain) = this.and_then(|this| this.as_application_domain()) {
                appdomain.set_domain_memory(activation.context.gc_context, bytearray_obj);
            }
        }
    }

    Ok(Value::Undefined)
}

/// `domainMemory` property getter
pub fn domain_memory<'gc>(
    _activation: &mut Activation<'_, 'gc>,
    this: Option<Object<'gc>>,
    _args: &[Value<'gc>],
) -> Result<Value<'gc>, Error<'gc>> {
    if let Some(appdomain) = this.and_then(|this| this.as_application_domain()) {
        let bytearray_object: Object<'gc> = appdomain.domain_memory().into();
        return Ok(bytearray_object.into());
    }

    Ok(Value::Undefined)
}

/// Construct `ApplicationDomain`'s class.
pub fn create_class<'gc>(activation: &mut Activation<'_, 'gc>) -> GcCell<'gc, Class<'gc>> {
    let mc = activation.context.gc_context;
    let class = Class::new(
        QName::new(Namespace::package("flash.system", mc), "ApplicationDomain"),
        Some(Multiname::new(activation.avm2().public_namespace, "Object")),
        Method::from_builtin(
            instance_init,
            "<ApplicationDomain instance initializer>",
            mc,
        ),
        Method::from_builtin(class_init, "<ApplicationDomain class initializer>", mc),
        mc,
    );

    let mut write = class.write(mc);
    write.set_instance_allocator(appdomain_allocator);

    const PUBLIC_CLASS_PROPERTIES: &[(&str, Option<NativeMethodImpl>, Option<NativeMethodImpl>)] =
        &[("currentDomain", Some(current_domain), None)];
    write.define_builtin_class_properties(
        mc,
        activation.avm2().public_namespace,
        PUBLIC_CLASS_PROPERTIES,
    );

    const PUBLIC_INSTANCE_PROPERTIES: &[(
        &str,
        Option<NativeMethodImpl>,
        Option<NativeMethodImpl>,
    )] = &[
        ("domainMemory", Some(domain_memory), Some(set_domain_memory)),
        ("parentDomain", Some(parent_domain), None),
    ];
    write.define_builtin_instance_properties(
        mc,
        activation.avm2().public_namespace,
        PUBLIC_INSTANCE_PROPERTIES,
    );

    const PUBLIC_INSTANCE_METHODS: &[(&str, NativeMethodImpl)] = &[
        ("getDefinition", get_definition),
        ("hasDefinition", has_definition),
    ];
    write.define_builtin_instance_methods(
        mc,
        activation.avm2().public_namespace,
        PUBLIC_INSTANCE_METHODS,
    );

    class
}
