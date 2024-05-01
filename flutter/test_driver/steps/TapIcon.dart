import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric TapIcon() {
  return when<String, FlutterWorld>(
    'I tap the {string}',
    (key, count, context) async {
      final locator = find.byValuekey(key);
      await FlutterDriverUtils.tap(context.world.driver, locator);
    },
  );
}