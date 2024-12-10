import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/crea_evento/crea_evento_widget.dart';
import '/components/sante_messe_crea_bottom/sante_messe_crea_bottom_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<EventiRecord>>(
      stream: queryEventiRecord(
        queryBuilder: (eventiRecord) => eventiRecord.orderBy('Evento'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
              ),
            ),
          );
        }
        List<EventiRecord> homeEventiRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 405.0,
                        height: 417.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              Theme.of(context).brightness == Brightness.dark
                                  ? 'assets/images/Canton_St_Gallen_with_gradient.jpg'
                                  : 'assets/images/homepage.jpg',
                            ).image,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Opacity(
                                          opacity: 0.5,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'p76dr9qf' /* Missione Cattolica Italiana */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Headland One',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.5,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'giqmffoc' /* San Gallo - Rorschach */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Headland One',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 300.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'ProfileUserEdit');
                                                },
                                                child: Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    currentUserPhoto,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 15.0)),
                                        ),
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(width: 50.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: const Color(0xFF29313B),
                                      borderRadius: 16.0,
                                      borderWidth: 5.0,
                                      buttonSize: 80.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: const Icon(
                                        Icons.church_rounded,
                                        color: Color(0xFF3D73A6),
                                        size: 50.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('SanteMesseCerca');
                                      },
                                    ),
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'on958n33' /* St.Messe */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Headland One',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        FlutterFlowTheme.of(context).alternate
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: const Color(0xFF29313B),
                                      borderRadius: 16.0,
                                      borderWidth: 5.0,
                                      buttonSize: 80.0,
                                      fillColor: const Color(0x2F2F2F2F),
                                      icon: const Icon(
                                        Icons.event_note,
                                        color: Color(0xFF3D73A6),
                                        size: 50.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('EventsCerca');
                                      },
                                    ),
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'h2wejhl8' /* Eventi */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Headland One',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        FlutterFlowTheme.of(context).alternate
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: const Color(0xFF29313B),
                                      borderRadius: 16.0,
                                      borderWidth: 5.0,
                                      buttonSize: 80.0,
                                      fillColor: const Color(0x2F2F2F2F),
                                      icon: const Icon(
                                        Icons.groups,
                                        color: Color(0xFF3D73A6),
                                        size: 50.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Gruppi');
                                      },
                                    ),
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'tm3y8x8n' /* Gruppi */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Headland One',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        FlutterFlowTheme.of(context).alternate
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: const Color(0xFF29313B),
                                      borderRadius: 16.0,
                                      borderWidth: 5.0,
                                      buttonSize: 80.0,
                                      fillColor: const Color(0x2F2F2F2F),
                                      icon: const Icon(
                                        Icons.date_range_rounded,
                                        color: Color(0xFF3D73A6),
                                        size: 50.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Appuntamenti');
                                      },
                                    ),
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'xluzu6yo' /* Appunt. */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Headland One',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        FlutterFlowTheme.of(context).alternate
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: const Color(0xFF29313B),
                                      borderRadius: 16.0,
                                      borderWidth: 5.0,
                                      buttonSize: 80.0,
                                      fillColor: const Color(0x2F2F2F2F),
                                      icon: const Icon(
                                        Icons.clean_hands_sharp,
                                        color: Color(0xFF3D73A6),
                                        size: 50.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('donazioni');
                                      },
                                    ),
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'tx97uqhn' /* Donazione */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Headland One',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        FlutterFlowTheme.of(context).alternate
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: const Color(0xFF29313B),
                                      borderRadius: 16.0,
                                      borderWidth: 5.0,
                                      buttonSize: 80.0,
                                      fillColor: const Color(0x2F2F2F2F),
                                      icon: const Icon(
                                        Icons.photo_camera,
                                        color: Color(0xFF3D73A6),
                                        size: 50.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Galleria');
                                      },
                                    ),
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'ro6vv2w4' /* Photo */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Headland One',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        FlutterFlowTheme.of(context).alternate
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: const Color(0xFF29313B),
                                      borderRadius: 16.0,
                                      borderWidth: 5.0,
                                      buttonSize: 80.0,
                                      fillColor: const Color(0x2F2F2F2F),
                                      icon: const FaIcon(
                                        FontAwesomeIcons.cross,
                                        color: Color(0xFF3D73A6),
                                        size: 50.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          'SuDiNoi',
                                          queryParameters: {
                                            'testoisoff': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                            'testoison': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'chdh6i46' /* Su di Noi */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Headland One',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        FlutterFlowTheme.of(context).alternate
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                              ].divide(const SizedBox(width: 12.0)),
                            ),
                          ),
                        ],
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: StyledDivider(
                          height: 20.0,
                          thickness: 5.0,
                          color: FlutterFlowTheme.of(context).tertiary,
                          lineStyle: DividerLineStyle.dashdotted,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '0qhq6tq9' /* Eventi */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Headland One',
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      shadows: [
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: const Offset(2.0, 2.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (valueOrDefault<bool>(
                                    currentUserDocument?.isAdmin, false) ==
                                true)
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: const Color(0x801A1A1A),
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: const SizedBox(
                                                  height: 550.0,
                                                  child: CreaEventoWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Icon(
                                        Icons.add_circle_outline,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ].addToStart(const SizedBox(width: 8.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: StreamBuilder<List<EventiRecord>>(
                          stream: queryEventiRecord(
                            queryBuilder: (eventiRecord) => eventiRecord
                                .orderBy('dataOra', descending: true),
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<EventiRecord> rowEventiRecordList =
                                snapshot.data!;

                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    rowEventiRecordList.length, (rowIndex) {
                                  final rowEventiRecord =
                                      rowEventiRecordList[rowIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'EventiHome',
                                        queryParameters: {
                                          'refeventi': serializeParam(
                                            rowEventiRecord,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'refeventi': rowEventiRecord,
                                        },
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        rowEventiRecord.image,
                                        width: 140.0,
                                        height: 180.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }).divide(const SizedBox(width: 8.0)),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Container(
                      width: double.infinity,
                      height: 57.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'pf5i9k7q' /*  S.Messe */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Headland One',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                shadows: [
                                  Shadow(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    offset: const Offset(2.0, 2.0),
                                    blurRadius: 2.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          if (valueOrDefault<bool>(
                                  currentUserDocument?.isAdmin, false) ==
                              true)
                            AuthUserStreamWidget(
                              builder: (context) => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: const Color(0x801A1A1A),
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () =>
                                            FocusScope.of(context).unfocus(),
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: const SizedBox(
                                            height: 550.0,
                                            child: SanteMesseCreaBottomWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                        ].divide(const SizedBox(width: 20.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: StreamBuilder<List<SantaMessaRecord>>(
                      stream: querySantaMessaRecord(
                        queryBuilder: (santaMessaRecord) => santaMessaRecord
                            .orderBy('startTime', descending: true),
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
                        List<SantaMessaRecord> rowSantaMessaRecordList =
                            snapshot.data!;

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                rowSantaMessaRecordList.length, (rowIndex) {
                              final rowSantaMessaRecord =
                                  rowSantaMessaRecordList[rowIndex];
                              return StreamBuilder<List<SantaMessaRecord>>(
                                stream: querySantaMessaRecord(
                                  queryBuilder: (santaMessaRecord) =>
                                      santaMessaRecord.orderBy('chiesa',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<SantaMessaRecord>
                                      imageSantaMessaRecordList =
                                      snapshot.data!;

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'SanteMesse',
                                        queryParameters: {
                                          'receive': serializeParam(
                                            rowSantaMessaRecord,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'receive': rowSantaMessaRecord,
                                        },
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        rowSantaMessaRecord.image,
                                        width: 140.0,
                                        height: 180.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).divide(const SizedBox(width: 8.0)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
