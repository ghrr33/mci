import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'events_cerca_widget.dart' show EventsCercaWidget;
import 'package:flutter/material.dart';

class EventsCercaModel extends FlutterFlowModel<EventsCercaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cerca widget.
  final cercaKey = GlobalKey();
  FocusNode? cercaFocusNode;
  TextEditingController? cercaTextController;
  String? cercaSelectedOption;
  String? Function(BuildContext, String?)? cercaTextControllerValidator;
  List<EventiRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cercaFocusNode?.dispose();
  }
}
