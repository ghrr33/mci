import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'santo_del_giorno_model.dart';
export 'santo_del_giorno_model.dart';

class SantoDelGiornoWidget extends StatefulWidget {
  const SantoDelGiornoWidget({super.key});

  @override
  State<SantoDelGiornoWidget> createState() => _SantoDelGiornoWidgetState();
}

class _SantoDelGiornoWidgetState extends State<SantoDelGiornoWidget> {
  late SantoDelGiornoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SantoDelGiornoModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'u3f4upwk' /* Santo Del Giorno  */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Headland One',
                  color: FlutterFlowTheme.of(context).primaryText,
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
              FutureBuilder<ApiCallResponse>(
                future: SantoDelGiornoCall.call(),
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
                  final imageSantoDelGiornoResponse = snapshot.data!;

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      SantoDelGiornoCall.imageSantoDelGiorno(
                        imageSantoDelGiornoResponse.jsonBody,
                      )!
                          .where((e) => valueOrDefault<bool>(
                                SantoDelGiornoCall.imageSantoDelGiorno(
                                  imageSantoDelGiornoResponse.jsonBody,
                                )?.contains(
                                    SantoDelGiornoCall.imageSantoDelGiorno(
                                  imageSantoDelGiornoResponse.jsonBody,
                                )?.first),
                                true,
                              ))
                          .toList()
                          .first,
                      width: double.infinity,
                      height: 274.0,
                      fit: BoxFit.contain,
                    ),
                  );
                },
              ),
              FutureBuilder<ApiCallResponse>(
                future: SantoDelGiornoCall.call(),
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
                  final rowSantoDelGiornoResponse = snapshot.data!;

                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          valueOrDefault<String>(
                            SantoDelGiornoCall.descrizione(
                              rowSantoDelGiornoResponse.jsonBody,
                            )?.first,
                            'descrizione',
                          ).maybeHandleOverflow(
                            maxChars: 280,
                            replacement: '…',
                          ),
                          maxLines: 50,
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 11.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ].divide(const SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
