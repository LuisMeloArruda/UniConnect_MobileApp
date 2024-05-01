import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../steps/Common.dart';
import '../steps/WriteInInputField.dart';
import '../steps/TapText.dart';

Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = ['test_driver/features/EditProfile.feature']
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')]
    ..stepDefinitions = [
      WriteInInputField(),
      TapText(),
      CheckPage(),
    ]
    ..targetAppPath = "test_driver/app.dart"
    ..defaultTimeout = Duration(seconds: 30);

  GherkinRunner().execute(config);
}