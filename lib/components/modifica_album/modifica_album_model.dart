import '/flutter_flow/flutter_flow_util.dart';
import 'modifica_album_widget.dart' show ModificaAlbumWidget;
import 'package:flutter/material.dart';

class ModificaAlbumModel extends FlutterFlowModel<ModificaAlbumWidget> {
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
  // State field(s) for Descrizione widget.
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

    descrizioneFocusNode?.dispose();
    descrizioneTextController?.dispose();
  }
}
