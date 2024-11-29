import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'sante_messe_model.dart';
export 'sante_messe_model.dart';

class SanteMesseWidget extends StatefulWidget {
  const SanteMesseWidget({super.key});

  @override
  State<SanteMesseWidget> createState() => _SanteMesseWidgetState();
}

class _SanteMesseWidgetState extends State<SanteMesseWidget>
    with TickerProviderStateMixin {
  late SanteMesseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SanteMesseModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.5, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Sante_Messe.png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0x33090F13),
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ).animateOnPageLoad(
                        animationsMap['iconButtonOnPageLoadAnimation']!),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 100.0, 0.0),
                        child: Text(
                          'Sante Messe',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Sora',
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 26.0,
                                letterSpacing: 0.0,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 420.0,
                decoration: const BoxDecoration(
                  color: Color(0x000F1316),
                ),
                child: StreamBuilder<List<SantaMessaRecord>>(
                  stream: querySantaMessaRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<SantaMessaRecord> listViewSantaMessaRecordList =
                        snapshot.data!;

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listViewSantaMessaRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewSantaMessaRecord =
                            listViewSantaMessaRecordList[listViewIndex];
                        return Opacity(
                          opacity: 0.9,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Container(
                              width: 270.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: const Color(0x7F0F1316),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Opacity(
                                      opacity: 0.6,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            6.0, 6.0, 6.0, 6.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            listViewSantaMessaRecord.photo,
                                            width: double.infinity,
                                            height: 270.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      listViewSantaMessaRecord.chiesa,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      listViewSantaMessaRecord.luogo,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      dateTimeFormat("d/M h:mm a",
                                          listViewSantaMessaRecord.startTime!),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      listViewSantaMessaRecord.shortDescription,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
