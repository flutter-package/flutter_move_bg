import Flutter
import UIKit

public class SwiftMoveBgPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "chavesgu/move_bg", binaryMessenger: registrar.messenger())
    let instance = SwiftMoveBgPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method=="moveTaskToBack" {
      let app:UIApplication = UIApplication.shared;
      app.perform(#selector(NSXPCConnection.suspend));
    } else {
      result(FlutterMethodNotImplemented);
    }
  }
}
