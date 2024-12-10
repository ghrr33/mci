import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gruppi_widget.dart' show GruppiWidget;
import 'package:flutter/material.dart';

class GruppiModel extends FlutterFlowModel<GruppiWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<GruppiMCIRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}