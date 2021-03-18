import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:move_bg/move_bg.dart';

void main() {
  const MethodChannel channel = MethodChannel('move_bg');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MoveBg.platformVersion, '42');
  });
}
