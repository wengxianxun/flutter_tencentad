import 'package:flutter_tencentad/flutter_tencentad.dart';
import 'package:flutter_tencentad/flutter_tencentad_method_channel.dart';
import 'package:flutter_tencentad/flutter_tencentad_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterTencentadPlatform
    with MockPlatformInterfaceMixin
    implements FlutterTencentadPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterTencentadPlatform initialPlatform =
      FlutterTencentadPlatform.instance;

  test('$MethodChannelFlutterTencentad is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterTencentad>());
  });

  test('getPlatformVersion', () async {
    FlutterTencentad flutterTencentadPlugin = FlutterTencentad();
    MockFlutterTencentadPlatform fakePlatform = MockFlutterTencentadPlatform();
    FlutterTencentadPlatform.instance = fakePlatform;

    // expect(await flutterTencentadPlugin.getPlatformVersion(), '42');
  });
}
