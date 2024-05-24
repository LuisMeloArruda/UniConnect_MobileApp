import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Center(
            child: Image.asset(
              'assets/images/UniConnect_transparent_small.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'Login': ParameterData.none(),
  'CreateAccount': ParameterData.none(),
  'Loading': ParameterData.none(),
  'Chat': (data) async => ParameterData(
        allParams: {
          'chatRef': await getDocumentParameter<ChatsRecord>(
              data, 'chatRef', ChatsRecord.fromSnapshot),
        },
      ),
  'ChatMain': ParameterData.none(),
  'FindStudents': (data) async => ParameterData(
        allParams: {
          'chatRef': await getDocumentParameter<ChatsRecord>(
              data, 'chatRef', ChatsRecord.fromSnapshot),
        },
      ),
  'image_Details': (data) async => ParameterData(
        allParams: {
          'chatMessage': await getDocumentParameter<ChatMessagesRecord>(
              data, 'chatMessage', ChatMessagesRecord.fromSnapshot),
        },
      ),
  'onboarding': ParameterData.none(),
  'template_only_not_to_use': ParameterData.none(),
  'EditProfile': ParameterData.none(),
  'MyProfile': ParameterData.none(),
  'AboutUs': ParameterData.none(),
  'RecoverPassword': ParameterData.none(),
  'MainTags': ParameterData.none(),
  'ChatPreview': (data) async => ParameterData(
        allParams: {
          'user': await getDocumentParameter<UsersRecord>(
              data, 'user', UsersRecord.fromSnapshot),
        },
      ),
  'StudentEventsCreateProfile': ParameterData.none(),
  'StudentOrganizationsCreateProfile': ParameterData.none(),
  'StudentEventsProfile': (data) async => ParameterData(
        allParams: {
          'events': getParameter<DocumentReference>(data, 'events'),
        },
      ),
  'StudentOrganizationsProfile': (data) async => ParameterData(
        allParams: {
          'organizations':
              getParameter<DocumentReference>(data, 'organizations'),
          'events': await getDocumentParameter<StudenteventsRecord>(
              data, 'events', StudenteventsRecord.fromSnapshot),
        },
      ),
  'StudentEventsMain': (data) async => ParameterData(
        allParams: {
          'chatRef': await getDocumentParameter<ChatsRecord>(
              data, 'chatRef', ChatsRecord.fromSnapshot),
          'events': await getDocumentParameter<StudenteventsRecord>(
              data, 'events', StudenteventsRecord.fromSnapshot),
        },
      ),
  'StudentOrganizationsMain': (data) async => ParameterData(
        allParams: {
          'chatRef': await getDocumentParameter<ChatsRecord>(
              data, 'chatRef', ChatsRecord.fromSnapshot),
          'events': await getDocumentParameter<StudenteventsRecord>(
              data, 'events', StudenteventsRecord.fromSnapshot),
          'organizations':
              await getDocumentParameter<StudentorganizationsRecord>(data,
                  'organizations', StudentorganizationsRecord.fromSnapshot),
        },
      ),
  'StudentEventsEditProfille': (data) async => ParameterData(
        allParams: {
          'stuEvent': getParameter<DocumentReference>(data, 'stuEvent'),
        },
      ),
  'StudentOrganizationsEditProfile': (data) async => ParameterData(
        allParams: {
          'stuOrg': getParameter<DocumentReference>(data, 'stuOrg'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
