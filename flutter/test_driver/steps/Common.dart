import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class CheckPage extends And1WithWorld<String, FlutterWorld> {
  
  @override
  Future<void> executeStep(String key) async {
    await Future.delayed(Duration(seconds: 3)); 
    final page = find.byValueKey(key);
    bool pageExists = await FlutterDriverUtils.isPresent(world.driver, page);
    expect(pageExists, true);
  }

  @override
  RegExp get pattern => RegExp(r"I am on the {string}");
}

