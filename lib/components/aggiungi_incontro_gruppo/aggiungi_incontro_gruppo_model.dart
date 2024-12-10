import '/flutter_flow/flutter_flow_util.dart';
import 'aggiungi_incontro_gruppo_widget.dart' show AggiungiIncontroGruppoWidget;
import 'package:flutter/material.dart';

class AggiungiIncontroGruppoModel
    extends FlutterFlowModel<AggiungiIncontroGruppoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for dataOra widget.
  FocusNode? dataOraFocusNode;
  TextEditingController? dataOraTextController;
  String? Function(BuildContext, String?)? dataOraTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Luogo widget.
  FocusNode? luogoFocusNode;
  TextEditingController? luogoTextController;
  String? Function(BuildContext, String?)? luogoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dataOraFocusNode?.dispose();
    dataOraTextController?.dispose();

    luogoFocusNode?.dispose();
    luogoTextController?.dispose();
  }
}
