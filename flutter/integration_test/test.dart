import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:uni_connect/flutter_flow/flutter_flow_icon_button.dart';
import 'package:uni_connect/flutter_flow/flutter_flow_widgets.dart';
import 'package:uni_connect/flutter_flow/flutter_flow_theme.dart';
import 'package:uni_connect/index.dart';
import 'package:uni_connect/main.dart';
import 'package:uni_connect/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:uni_connect/backend/firebase/firebase_config.dart';
import 'package:uni_connect/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    _overrideOnError();
    await initFirebase();

    await FlutterFlowTheme.initialize();

    await FFLocalizations.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  group('HomePage', () {
    setUp(() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'cr7@gmail.com', password: 'ronaldo');
    });

    testWidgets('Go to EditProfile', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Column_bq4m')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_ja9j')), findsOneWidget);
    });

    testWidgets('Go to settings', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Icon_36np')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('test1')), findsOneWidget);
    });

    testWidgets('Go to direct messages', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Row_1cc0')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Row_siso')), findsOneWidget);
    });

    testWidgets('Go to FindStudents', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Column_ex3c')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Text_filn')), findsOneWidget);
    });
  });

  group('Register', () {
    testWidgets('Already have an account', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: CreateAccountWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Container_8x6a')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_mvn9')), findsOneWidget);
    });

    testWidgets('Register', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: CreateAccountWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ValueKey('username_2n5r')), 'messi07');
      await tester.enterText(
          find.byKey(ValueKey('email_8w4m')), 'messi@gmail.com');
      await tester.enterText(find.byKey(ValueKey('password_9w0v')), 'ronaldo');
      await tester.enterText(
          find.byKey(ValueKey('confirmpassword_zmks')), 'ronaldo');
      await tester.tap(find.byKey(ValueKey('Button_suj5')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_mvn9')), findsOneWidget);
    });
  });

  group('Login', () {
    testWidgets('Sign up', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: LoginWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Container_h8gg')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('CreateAccount_ep3q')), findsOneWidget);
    });

    testWidgets('Forgot password', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: LoginWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Text_l0pj')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button-Login_4799')), findsOneWidget);
    });

    testWidgets('Insert email and password', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: LoginWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('email_j98b')), 'cr7@gmail.com');
      await tester.enterText(find.byKey(ValueKey('password_9czr')), 'ronaldo');
      await tester.tap(find.byKey(ValueKey('Button_mvn9')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Row_1cc0')), findsOneWidget);
    });
  });

  group('EditProfile', () {
    setUp(() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'cr7@gmail.com', password: 'ronaldo');
    });

    testWidgets('Edit profile name real name email',
        (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: EditProfileWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('username_edit_psht')), 'messi07');
      await tester.enterText(
          find.byKey(ValueKey('RealName_edit_x3pz')), 'Messi Ronaldo');
      await tester.enterText(
          find.byKey(ValueKey('email_edit_0thr')), 'messi07@gmail.com');
      await tester.tap(find.byKey(ValueKey('Button_ja9j')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_dvzm')), findsOneWidget);
    });

    testWidgets('Edit profile image', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: EditProfileWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_lk1x')));
      await tester.pumpAndSettle();
      expect(find.text('Gallery'), findsWidgets);
    });

    testWidgets('Edit Profile tags', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: EditProfileWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_ogs4')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_zfsc')), findsOneWidget);
    });

    testWidgets('Go to HomePage', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: EditProfileWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_w2f6')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Row_1cc0')), findsOneWidget);
    });
  });

  group('MyProfile', () {
    setUp(() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'cr7@gmail.com', password: 'ronaldo');
    });

    testWidgets('Go to edit profile', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: MyProfileWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_720s')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_ja9j')), findsOneWidget);
    });

    testWidgets('Logout from profile', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: MyProfileWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Button_dvzm')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_mvn9')), findsOneWidget);
    });

    testWidgets('Go to homepage', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: MyProfileWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_d0t5')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Row_1cc0')), findsOneWidget);
    });
  });

  group('Tags', () {
    setUp(() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'cr7@gmail.com', password: 'ronaldo');
    });

    testWidgets('Go to previous page', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: MainTagsWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_pe0z')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_ja9j')), findsOneWidget);
    });

    testWidgets('Add own tag and save changes', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: MainTagsWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('Other_tag_Add_j0xw')), 'fa do ronaldo');
      await tester.tap(find.byKey(ValueKey('IconButton_epsl')));
      await tester.tap(find.byKey(ValueKey('Button_zfsc')));
      await tester.pumpAndSettle();
      expect(find.text('fa do ronaldo'), findsWidgets);
    });

    testWidgets('Go to settings', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: MainTagsWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Icon_nn7u')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('test1')), findsOneWidget);
    });
  });

  group('AboutUs', () {
    setUp(() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'cr7@gmail.com', password: 'ronaldo');
    });

    testWidgets('Go back to HomePage', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: AboutUsWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_fpmx')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Row_1cc0')), findsOneWidget);
    });
  });

  group('FindStudents', () {
    setUp(() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'cr7@gmail.com', password: 'ronaldo');
    });

    testWidgets('Go to Settings', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: InviteUsersWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Icon_gb5y')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('test1')), findsOneWidget);
    });

    testWidgets('Go to ChatPreview', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: InviteUsersWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('IconButton_zrus')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Button_cwod')), findsOneWidget);
    });
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
