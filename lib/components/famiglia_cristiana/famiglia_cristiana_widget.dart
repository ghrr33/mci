import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'famiglia_cristiana_model.dart';
export 'famiglia_cristiana_model.dart';

class FamigliaCristianaWidget extends StatefulWidget {
  const FamigliaCristianaWidget({super.key});

  @override
  State<FamigliaCristianaWidget> createState() =>
      _FamigliaCristianaWidgetState();
}

class _FamigliaCristianaWidgetState extends State<FamigliaCristianaWidget> {
  late FamigliaCristianaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FamigliaCristianaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0x000D0D0D),
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FutureBuilder<ApiCallResponse>(
            future: FamigliaCristianaCall.call(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                );
              }
              final columnFamigliaCristianaResponse = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'qaj1siw1' /* News */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Headland One',
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      shadows: [
                        Shadow(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          offset: const Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      FamigliaCristianaCall.image(
                        columnFamigliaCristianaResponse.jsonBody,
                      )!
                          .first,
                      width: 200.0,
                      height: 299.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: FamigliaCristianaCall.call(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).secondaryText,
                                ),
                              ),
                            ),
                          );
                        }
                        final columnFamigliaCristianaResponse = snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  FamigliaCristianaCall.title(
                                    columnFamigliaCristianaResponse.jsonBody,
                                  )?.first,
                                  'title',
                                ).maybeHandleOverflow(
                                  maxChars: 300,
                                  replacement: '…',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              );
            },
          ),
        ),
      ),
    );
  }
}
