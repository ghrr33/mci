import '/flutter_flow/flutter_flow_util.dart';
import 'sante_messe_crea_bottom_widget.dart' show SanteMesseCreaBottomWidget;
import 'package:flutter/material.dart';

class SanteMesseCreaBottomModel
    extends FlutterFlowModel<SanteMesseCreaBottomWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for descrizione widget.
  FocusNode? descrizioneFocusNode;
  TextEditingController? descrizioneTextController;
  String? Function(BuildContext, String?)? descrizioneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    descrizioneFocusNode?.dispose();
    descrizioneTextController?.dispose();
  }
}
