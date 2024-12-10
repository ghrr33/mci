import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'show_foto_model.dart';
export 'show_foto_model.dart';

class ShowFotoWidget extends StatefulWidget {
  const ShowFotoWidget({
    super.key,
    required this.ref,
  });

  final AlbumRecord? ref;

  @override
  State<ShowFotoWidget> createState() => _ShowFotoWidgetState();
}

class _ShowFotoWidgetState extends State<ShowFotoWidget> {
  late ShowFotoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowFotoModel());

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
        appBar: responsiveVisibility(
          context: context,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
                title: Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'sbi0sglb' /* Foto */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Headland One',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 30.0,
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
                ),
                actions: const [],
                centerTitle: false,
                elevation: 2.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 653.0,
                    height: 691.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    child: StreamBuilder<List<FotoRecord>>(
                      stream: queryFotoRecord(
                        queryBuilder: (fotoRecord) => fotoRecord.where(
                          'album',
                          isEqualTo: widget.ref?.reference,
                        ),
                      ),
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
                        List<FotoRecord> listViewFotoRecordList =
                            snapshot.data!;

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewFotoRecordList.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewFotoRecord =
                                listViewFotoRecordList[listViewIndex];
                            return Builder(
                              builder: (context) {
                                final image = listViewFotoRecord.image.toList();

                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children:
                                      List.generate(image.length, (imageIndex) {
                                    final imageItem = image[imageIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.network(
                                                imageItem,
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: imageItem,
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: imageItem,
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          child: Image.network(
                                            imageItem,
                                            width: 339.0,
                                            height: 375.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                          .divide(const SizedBox(height: 10.0))
                                          .addToStart(const SizedBox(height: 10.0)),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
