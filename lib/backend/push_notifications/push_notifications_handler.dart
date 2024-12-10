import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


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

    safeSetState(() => _loading = true);
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
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Center(
            child: Image.asset(
              'assets/images/Minimalist_Black_Church_Icon_on_White_Background_Icons-removebg-preview.png',
              width: 200.0,
              height: 200.0,
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
  'ProfileUser': ParameterData.none(),
  'ProfileUserEdit': ParameterData.none(),
  'Home': ParameterData.none(),
  'EventsCerca': ParameterData.none(),
  'SanteMesse': (data) async => ParameterData(
        allParams: {
          'receive': await getDocumentParameter<SantaMessaRecord>(
              data, 'receive', SantaMessaRecord.fromSnapshot),
        },
      ),
  'SuDiNoi': (data) async => ParameterData(
        allParams: {
          'testoisoff': getParameter<bool>(data, 'testoisoff'),
          'testoison': getParameter<bool>(data, 'testoison'),
        },
      ),
  'chat_2_Details': (data) async => ParameterData(
        allParams: {
          'chatRef': await getDocumentParameter<ChatsRecord>(
              data, 'chatRef', ChatsRecord.fromSnapshot),
        },
      ),
  'chat_2_main': ParameterData.none(),
  'chat_2_InviteUsers': (data) async => ParameterData(
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
  'auth_3_Create': ParameterData.none(),
  'auth_3_Login': ParameterData.none(),
  'auth_3_phone': ParameterData.none(),
  'auth_3_verifyPhone': (data) async => ParameterData(
        allParams: {
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
        },
      ),
  'auth_3_ForgotPassword': ParameterData.none(),
  'SanteMesseCerca': ParameterData.none(),
  'EventiHome': (data) async => ParameterData(
        allParams: {
          'refeventi': await getDocumentParameter<EventiRecord>(
              data, 'refeventi', EventiRecord.fromSnapshot),
        },
      ),
  'Gruppi': ParameterData.none(),
  'Appuntamenti': ParameterData.none(),
  'GruppoHome': (data) async => ParameterData(
        allParams: {
          'ref': await getDocumentParameter<GruppiMCIRecord>(
              data, 'ref', GruppiMCIRecord.fromSnapshot),
        },
      ),
  'donazioni': ParameterData.none(),
  'AggiungiPhoto': (data) async => ParameterData(
        allParams: {
          'refalbum': await getDocumentParameter<AlbumRecord>(
              data, 'refalbum', AlbumRecord.fromSnapshot),
        },
      ),
  'Galleria': ParameterData.none(),
  'ShowFoto': (data) async => ParameterData(
        allParams: {
          'ref': await getDocumentParameter<AlbumRecord>(
              data, 'ref', AlbumRecord.fromSnapshot),
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
