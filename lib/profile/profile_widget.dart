import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget>
    with TickerProviderStateMixin {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    animationsMap.addAll({
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200.0,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 140.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/back_-_Kopie.PNG',
                        ).image,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isAdmin, false) ==
                            true)
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Administrator');
                                  },
                                  child: Icon(
                                    Icons.admin_panel_settings_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 35.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 16.0),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent2,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.network(
                                currentUserPhoto,
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
              child: AuthUserStreamWidget(
                builder: (context) => Text(
                  currentUserDisplayName,
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Sora',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 16.0),
              child: Text(
                currentUserEmail,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 0.0),
              child: Text(
                'Il tuo Account',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'editprofile',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.bottomToTop,
                      ),
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          1.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('editprofile');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Imposta Foto Profilo',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(0.9, 0.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        1.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.notifications_none,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Notification Settings',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.9, 0.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 0.0, 0.0),
              child: Text(
                'App Settings',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        1.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.help_outline_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Support',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.9, 0.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        1.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.privacy_tip_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Terms of Service',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.9, 0.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('Login_Signup', context.mounted);
                  },
                  text: 'Log Out',
                  options: FFButtonOptions(
                    width: 150.0,
                    height: 44.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(38.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['buttonOnPageLoadAnimation']!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
