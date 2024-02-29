import Flutter
 
public class VoskFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    setenv("LIBVOSK_PATH", Bundle.main.privateFrameworksPath! + "/libvosk.framework/libvosk", 0);
    vosk_set_log_level(0)
    let channel = FlutterMethodChannel(name: "vosk_flutter", binaryMessenger: registrar.messenger())
    let instance = VoskFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
}