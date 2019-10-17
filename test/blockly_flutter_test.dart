import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:blockly_flutter/blockly_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('blockly_flutter');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await BlocklyFlutter.platformVersion, '42');
  });
}
