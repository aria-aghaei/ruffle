// List is ordered alphabetically, except where superclasses
// need to come before subclasses.

include "Error.as"

include "ArgumentError.as"
include "DefinitionError.as"
include "JSON.as"
include "EvalError.as"
include "TypeError.as"
include "Math.as"
include "RangeError.as"
include "ReferenceError.as"
include "SecurityError.as"
include "SyntaxError.as"
include "URIError.as"
include "VerifyError.as"

include "flash/accessibility/AccessibilityProperties.as"
include "flash/crypto.as"
include "flash/utils/IDataInput.as"
include "flash/utils/IDataOutput.as"
include "flash/utils/ByteArray.as"
include "flash/utils/Dictionary.as"
include "flash/desktop/ClipboardFormats.as"
include "flash/desktop/ClipboardTransferMode.as"

include "flash/events/IEventDispatcher.as"
include "flash/events/EventDispatcher.as"

include "flash/display/IBitmapDrawable.as"
include "flash/display/DisplayObject.as"
include "flash/display/Bitmap.as"
include "flash/display/BitmapData.as"
include "flash/display/InteractiveObject.as"
include "flash/display/DisplayObjectContainer.as"
include "flash/display/Stage.as"
include "flash/display/LoaderInfo.as"

include "flash/display/ActionScriptVersion.as"
include "flash/display/BitmapDataChannel.as"
include "flash/display/BitmapEncodingColorSpace.as"
include "flash/display/BlendMode.as"
include "flash/display/CapsStyle.as"
include "flash/display/ColorCorrection.as"
include "flash/display/ColorCorrectionSupport.as"
include "flash/display/FocusDirection.as"
include "flash/display/FrameLabel.as"
include "flash/display/GradientType.as"
include "flash/display/GraphicsPathCommand.as"
include "flash/display/GraphicsPathWinding.as"
include "flash/display/InterpolationMethod.as"
include "flash/display/JointStyle.as"
include "flash/display/JPEGEncoderOptions.as"
include "flash/display/JPEGXREncoderOptions.as"
include "flash/display/Loader.as"
include "flash/display/LineScaleMode.as"
include "flash/display/NativeMenu.as"
include "flash/display/NativeMenuItem.as"
include "flash/display/PixelSnapping.as"
include "flash/display/PNGEncoderOptions.as"
include "flash/display/Scene.as"
include "flash/display/ShaderParameterType.as"
include "flash/display/ShaderPrecision.as"
include "flash/display/Shape.as"
include "flash/display/SpreadMethod.as"
include "flash/display/Sprite.as"
include "flash/display/Stage3D.as"
include "flash/display/StageAlign.as"
include "flash/display/StageDisplayState.as"
include "flash/display/StageQuality.as"
include "flash/display/StageScaleMode.as"
include "flash/display/SWFVersion.as"
include "flash/display/TriangleCulling.as"
include "flash/display3D/Context3D.as"
include "flash/display3D/Context3DBlendFactor.as"
include "flash/display3D/Context3DBufferUsage.as"
include "flash/display3D/Context3DClearMask.as"
include "flash/display3D/Context3DCompareMode.as"
include "flash/display3D/Context3DMipFilter.as"
include "flash/display3D/Context3DProfile.as"
include "flash/display3D/Context3DProgramType.as"
include "flash/display3D/Context3DRenderMode.as"
include "flash/display3D/Context3DStencilAction.as"
include "flash/display3D/Context3DTextureFilter.as"
include "flash/display3D/Context3DTextureFormat.as"
include "flash/display3D/Context3DTriangleFace.as"
include "flash/display3D/Context3DVertexBufferFormat.as"
include "flash/display3D/Context3DWrapMode.as"
include "flash/display3D/IndexBuffer3D.as"
include "flash/display3D/Program3D.as"
include "flash/display3D/VertexBuffer3D.as"

// Event needs to come before its subclasses
include "flash/events/Event.as"
include "flash/events/TextEvent.as"
include "flash/events/ActivityEvent.as"
include "flash/events/ErrorEvent.as"
include "flash/events/GestureEvent.as"
include "flash/events/MouseEvent.as"
include "flash/events/AccelerometerEvent.as"
include "flash/events/AsyncErrorEvent.as"
include "flash/events/AudioOutputChangeEvent.as"
include "flash/events/AVDictionaryDataEvent.as"
include "flash/events/AVHTTPStatusEvent.as"
include "flash/events/AVPauseAtPeriodEndEvent.as"
include "flash/events/ContextMenuEvent.as"
include "flash/events/DataEvent.as"
include "flash/events/DRMAuthenticationCompleteEvent.as"
include "flash/events/DRMAuthenticationErrorEvent.as"
include "flash/events/DRMLicenseRequestEvent.as"
include "flash/events/DRMReturnVoucherCompleteEvent.as"
include "flash/events/DRMReturnVoucherErrorEvent.as"
include "flash/events/FocusEvent.as"
include "flash/events/FullScreenEvent.as"
include "flash/events/GameInputEvent.as"
include "flash/events/GesturePhase.as"
include "flash/events/HTTPStatusEvent.as"
include "flash/events/IOErrorEvent.as"
include "flash/events/KeyboardEvent.as"
include "flash/events/NetDataEvent.as"
include "flash/events/NetStatusEvent.as"
include "flash/events/ProgressEvent.as"
include "flash/events/SampleDataEvent.as"
include "flash/events/SecurityErrorEvent.as"
include "flash/events/ShaderEvent.as"
include "flash/events/SoftKeyboardEvent.as"
include "flash/events/SoftKeyboardTrigger.as"
include "flash/events/StageVideoAvailabilityEvent.as"
include "flash/events/StageVideoEvent.as"
include "flash/events/StatusEvent.as"
include "flash/events/SyncEvent.as"
include "flash/events/ThrottleEvent.as"
include "flash/events/ThrottleType.as"
include "flash/events/TimerEvent.as"
include "flash/events/TouchEvent.as"
include "flash/events/UncaughtErrorEvent.as"
include "flash/events/UncaughtErrorEvents.as"
include "flash/events/VideoEvent.as"
include "flash/events/VideoTextureEvent.as"
include "flash/errors/IOError.as"
include "flash/errors/EOFError.as"
include "flash/errors/IllegalOperationError.as"
include "flash/errors/InvalidSWFError.as"
include "flash/errors/MemoryError.as"
include "flash/errors/ScriptTimeoutError.as"
include "flash/errors/StackOverflowError.as"

include "flash/filters/BitmapFilter.as"
include "flash/filters/BitmapFilterQuality.as"
include "flash/filters/BitmapFilterType.as"
include "flash/filters/BevelFilter.as"
include "flash/filters/ConvolutionFilter.as"
include "flash/filters/GradientBevelFilter.as"
include "flash/filters/BlurFilter.as"
include "flash/filters/ColorMatrixFilter.as"
include "flash/filters/DisplacementMapFilter.as"
include "flash/filters/DisplacementMapFilterMode.as"
include "flash/filters/DropShadowFilter.as"
include "flash/filters/GlowFilter.as"
include "flash/filters/GradientGlowFilter.as"

include "flash/geom/ColorTransform.as"
include "flash/geom/Matrix.as"
include "flash/geom/Matrix3D.as"
include "flash/geom/Orientation3D.as"
include "flash/geom/Point.as"
include "flash/geom/Rectangle.as"
include "flash/geom/Transform.as"
include "flash/geom/Vector3D.as"
include "flash/globalization/CollatorMode.as"
include "flash/globalization/DateTimeNameContext.as"
include "flash/globalization/DateTimeNameStyle.as"
include "flash/globalization/DateTimeStyle.as"
include "flash/globalization/LastOperationStatus.as"
include "flash/globalization/NationalDigitsType.as"
include "flash/media/AudioDecoder.as"
include "flash/media/AudioOutputChangeReason.as"
include "flash/media/H264Level.as"
include "flash/media/H264Profile.as"
include "flash/media/MicrophoneEnhancedMode.as"
include "flash/media/SoundCodec.as"
include "flash/media/SoundLoaderContext.as"
include "flash/media/StageVideoAvailability.as"
include "flash/media/StageVideoAvailabilityReason.as"
include "flash/media/Video.as"
include "flash/media/VideoCodec.as"
include "flash/media/VideoStatus.as"

include "flash/external/ExternalInterface.as"

include "flash/net.as"
include "flash/net/FileFilter.as"
include "flash/net/FileReference.as"
include "flash/net/FileReferenceList.as"
include "flash/net/IDynamicPropertyOutput.as"
include "flash/net/IDynamicPropertyWriter.as"
include "flash/net/LocalConnection.as"
include "flash/net/NetGroupReceiveMode.as"
include "flash/net/NetGroupReplicationStrategy.as"
include "flash/net/NetGroupSendMode.as"
include "flash/net/NetGroupSendResult.as"
include "flash/net/ObjectEncoding.as"
include "flash/net/SharedObject.as"
include "flash/net/SharedObjectFlushStatus.as"
include "flash/net/URLLoader.as"
include "flash/net/URLLoaderDataFormat.as"
include "flash/net/URLRequest.as"
include "flash/net/URLRequestHeader.as"
include "flash/net/URLRequestMethod.as"
include "flash/net/URLVariables.as"

include "flash/printing/PrintJobOrientation.as"
include "flash/security/CertificateStatus.as"
include "flash/system/Capabilities.as"
include "flash/system/IMEConversionMode.as"
include "flash/system/LoaderContext.as"
include "flash/system/MessageChannelState.as"
include "flash/system/Security.as"
include "flash/system/SecurityDomain.as"
include "flash/system/SecurityPanel.as"
include "flash/system/System.as"
include "flash/system/SystemUpdaterType.as"
include "flash/system/TouchscreenType.as"
include "flash/system/WorkerState.as"
include "flash/text/AntiAliasType.as"
include "flash/text/FontStyle.as"
include "flash/text/FontType.as"
include "flash/text/GridFitType.as"
include "flash/text/StaticText.as"
include "flash/text/TextColorType.as"
include "flash/text/TextDisplayMode.as"
include "flash/text/TextExtent.as"
include "flash/text/TextFieldAutoSize.as"
include "flash/text/TextFieldType.as"
include "flash/text/TextFormatAlign.as"
include "flash/text/TextInteractionMode.as"
include "flash/text/TextLineMetrics.as"

include "flash/text/engine/BreakOpportunity.as"
include "flash/text/engine/CFFHinting.as"
include "flash/text/engine/DigitCase.as"
include "flash/text/engine/DigitWidth.as"
include "flash/text/engine/FontLookup.as"
include "flash/text/engine/FontPosture.as"
include "flash/text/engine/FontWeight.as"
include "flash/text/engine/JustificationStyle.as"
include "flash/text/engine/Kerning.as"
include "flash/text/engine/LigatureLevel.as"
include "flash/text/engine/LineJustification.as"
include "flash/text/engine/RenderingMode.as"
include "flash/text/engine/TabAlignment.as"
include "flash/text/engine/TextBaseline.as"
include "flash/text/engine/TextLineCreationResult.as"
include "flash/text/engine/TextLineValidity.as"
include "flash/text/engine/TextRotation.as"
include "flash/text/engine/TypographicCase.as"

include "flash/ui/ContextMenu.as"
include "flash/ui/ContextMenuBuiltInItems.as"
include "flash/ui/ContextMenuItem.as"
include "flash/ui/GameInput.as"
include "flash/ui/Keyboard.as"
include "flash/ui/KeyboardType.as"
include "flash/ui/KeyLocation.as"
include "flash/ui/Mouse.as"
include "flash/ui/MouseCursor.as"
// `MultitouchInputMode` needs to come before `Multitouch`, since `Multitouch` uses constants from
// `MultitouchInputMode`.
include "flash/ui/MultitouchInputMode.as"
include "flash/ui/Multitouch.as"

include "flash/utils.as"
include "flash/utils/Proxy.as"
include "flash/utils/CompressionAlgorithm.as"
include "flash/utils/Endian.as"
include "flash/utils/Timer.as"
include "XML.as"
include "XMLList.as"
