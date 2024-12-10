import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'searchbottom_model.dart';
export 'searchbottom_model.dart';

class SearchbottomWidget extends StatefulWidget {
  const SearchbottomWidget({super.key});

  @override
  State<SearchbottomWidget> createState() => _SearchbottomWidgetState();
}

class _SearchbottomWidgetState extends State<SearchbottomWidget> {
  late SearchbottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchbottomModel());

    _model.textController ??= TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 286.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 200.0,
            child: Autocomplete<String>(
              initialValue: const TextEditingValue(),
              optionsBuilder: (textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return [
                  FFLocalizations.of(context).getText(
                    'onk224la' /* Option 1 */,
                  )
                ].where((option) {
                  final lowercaseOption = option.toLowerCase();
                  return lowercaseOption
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              optionsViewBuilder: (context, onSelected, options) {
                return AutocompleteOptionsList(
                  textFieldKey: _model.textFieldKey,
                  textController: _model.textController!,
                  options: options.toList(),
                  onSelected: onSelected,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  textHighlightStyle: const TextStyle(),
                  elevation: 4.0,
                  optionBackgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  optionHighlightColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  maxHeight: 200.0,
                );
              },
              onSelected: (String selection) {
                safeSetState(() => _model.textFieldSelectedOption = selection);
                FocusScope.of(context).unfocus();
              },
              fieldViewBuilder: (
                context,
                textEditingController,
                focusNode,
                onEditingComplete,
              ) {
                _model.textFieldFocusNode = focusNode;

                _model.textController = textEditingController;
                return TextFormField(
                  key: _model.textFieldKey,
                  controller: textEditingController,
                  focusNode: focusNode,
                  onEditingComplete: onEditingComplete,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    hintText: FFLocalizations.of(context).getText(
                      '5pkbj64i' /* Cerca.... */,
                    ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    contentPadding: const EdgeInsets.all(10.0),
                    suffixIcon: const Icon(
                      Icons.clear,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                );
              },
            ),
          ),
        ].addToStart(const SizedBox(height: 5.0)),
      ),
    );
  }
}
