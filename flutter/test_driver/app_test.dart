import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/tap_button_n_times_step.dart';
import 'steps/tap_listview_item.dart';
import 'steps/logged_in.dart';
import 'package:uni/utils/globals.dart' as globals;

Future<void> main() {
  globals.isGherkin = true;
  final config = FlutterTestConfiguration()
    ..features = [Glob(r'test_driver/features/ViewCustomEmail.feature')]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      TapButtonNTimesStep(),
      TapListViewItemStep(),
      LoggedIn()
    ]
    ..customStepParameterDefinitions = []
    ..restartAppBetweenScenarios = true
    ..targetAppPath = 'test_driver/app.dart';
  return GherkinRunner().execute(config);
}
