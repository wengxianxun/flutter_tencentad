import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_tencentad_method_channel.dart';

abstract class FlutterTencentadPlatform extends PlatformInterface {
  /// Constructs a FlutterTencentadPlatform.
  FlutterTencentadPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterTencentadPlatform _instance = MethodChannelFlutterTencentad();

  /// The default instance of [FlutterTencentadPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterTencentad].
  static FlutterTencentadPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterTencentadPlatform] when
  /// they register themselves.
  static set instance(FlutterTencentadPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
