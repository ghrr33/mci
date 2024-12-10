import '/flutter_flow/flutter_flow_util.dart';
import 'searchbottom_widget.dart' show SearchbottomWidget;
import 'package:flutter/material.dart';

class SearchbottomModel extends FlutterFlowModel<SearchbottomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
