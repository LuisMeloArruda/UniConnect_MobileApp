import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../steps/Common.dart';
import '../steps/TapText.dart';
import '../steps/TapIcon.dart';

Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = ['test_driver/features/AddTags.feature']
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')]
    ..stepDefinitions = [
      TapIcon(),
      TapText(),
      CheckPage(),
    ]
    ..targetAppPath = "test_driver/app.dart"
    ..defaultTimeout = Duration(seconds: 30);

  GherkinRunner().execute(config);
}