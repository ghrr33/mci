import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cerca_widget.dart' show CercaWidget;
import 'package:flutter/material.dart';

class CercaModel extends FlutterFlowModel<CercaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for cerca widget.
  final cercaKey = GlobalKey();
  FocusNode? cercaFocusNode;
  TextEditingController? cercaTextController;
  String? cercaSelectedOption;
  String? Function(BuildContext, String?)? cercaTextControllerValidator;
  List<EventiRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cercaFocusNode?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
