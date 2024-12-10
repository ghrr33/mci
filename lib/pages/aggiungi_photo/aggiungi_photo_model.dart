import '/flutter_flow/flutter_flow_util.dart';
import 'aggiungi_photo_widget.dart' show AggiungiPhotoWidget;
import 'package:flutter/material.dart';

class AggiungiPhotoModel extends FlutterFlowModel<AggiungiPhotoWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
