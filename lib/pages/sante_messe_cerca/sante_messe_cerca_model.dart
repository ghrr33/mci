import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sante_messe_cerca_widget.dart' show SanteMesseCercaWidget;
import 'package:flutter/material.dart';

class SanteMesseCercaModel extends FlutterFlowModel<SanteMesseCercaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<SantaMessaRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
