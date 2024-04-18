import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'my_profile_model.dart';
export 'my_profile_model.dart';

class MyProfileWidget extends StatefulWidget {
  const MyProfileWidget({super.key});

  @override
  State<MyProfileWidget> createState() => _MyProfileWidgetState();
}

class _MyProfileWidgetState extends State<MyProfileWidget> {
  late MyProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProfileModel());

    _model.myBioTextController ??= TextEditingController();
    _model.myBioFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: const Color(0x00FFFFFF),
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        fillColor: const Color(0x00FFFFFF),
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: const Color(0x00FFFFFF),
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          fillColor: const Color(0x00FFFFFF),
                          icon: FaIcon(
                            FontAwesomeIcons.pen,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(
                              'EditProfile',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 20),
                                ),
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SizedBox(
                              width: 140.0,
                              child: Stack(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
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
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  currentUserPhoto,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/uni-connect-4nugh7/assets/rpm3muv6rtc6/user_default.jpg',
                                                ),
                                                width: 200.0,
                                                height: 200.0,
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 16.0),
                  child: Container(
                    width: 1000.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD8D6D6),
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 20.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Text(
                          currentUserDisplayName,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 16.0),
                  child: Container(
                    width: 1000.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD8D6D6),
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 20.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Text(
                          valueOrDefault(currentUserDocument?.realName, ''),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 16.0),
                  child: Container(
                    width: 1000.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD8D6D6),
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 20.0),
                      child: Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Yrsa',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                      child: TextFormField(
                        controller: _model.myBioTextController,
                        focusNode: _model.myBioFocusNode,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'jiqt56hh' /* Tags */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 24.0, 0.0, 24.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.start,
                        maxLines: 5,
                        validator: _model.myBioTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.05),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(150.0, 30.0, 150.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.pushNamedAuth('Login', context.mounted);
                      },
                      text: FFLocalizations.of(context).getText(
                        '2rj2nage' /* Logout */,
                      ),
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).alternate,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Yrsa',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 2.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
