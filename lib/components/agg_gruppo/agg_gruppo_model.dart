import '/flutter_flow/flutter_flow_util.dart';
import 'agg_gruppo_widget.dart' show AggGruppoWidget;
import 'package:flutter/material.dart';

class AggGruppoModel extends FlutterFlowModel<AggGruppoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for GroupName widget.
  FocusNode? groupNameFocusNode;
  TextEditingController? groupNameTextController;
  String? Function(BuildContext, String?)? groupNameTextControllerValidator;
  // State field(s) for LeNostreAttivita widget.
  FocusNode? leNostreAttivitaFocusNode;
  TextEditingController? leNostreAttivitaTextController;
  String? Function(BuildContext, String?)?
      leNostreAttivitaTextControllerValidator;
  // State field(s) for ChiSiamo widget.
  FocusNode? chiSiamoFocusNode;
  TextEditingController? chiSiamoTextController;
  String? Function(BuildContext, String?)? chiSiamoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    groupNameFocusNode?.dispose();
    groupNameTextController?.dispose();

    leNostreAttivitaFocusNode?.dispose();
    leNostreAttivitaTextController?.dispose();

    chiSiamoFocusNode?.dispose();
    chiSiamoTextController?.dispose();
  }
}
