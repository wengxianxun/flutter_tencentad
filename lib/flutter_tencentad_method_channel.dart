import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_tencentad_platform_interface.dart';

/// An implementation of [FlutterTencentadPlatform] that uses method channels.
class MethodChannelFlutterTencentad extends FlutterTencentadPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_tencentad');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
