import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'main_tags_model.dart';
export 'main_tags_model.dart';

class MainTagsWidget extends StatefulWidget {
  const MainTagsWidget({super.key});

  @override
  State<MainTagsWidget> createState() => _MainTagsWidgetState();
}

class _MainTagsWidgetState extends State<MainTagsWidget> {
  late MainTagsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainTagsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.tags =
            (currentUserDocument?.tags.toList() ?? []).toList().cast<String>();
      });
    });

    _model.otherTagAddTextController ??= TextEditingController();
    _model.otherTagAddFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<OtherTagsRecord>>(
      stream: queryOtherTagsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<OtherTagsRecord> mainTagsOtherTagsRecordList = snapshot.data!;
        final mainTagsOtherTagsRecord = mainTagsOtherTagsRecordList.isNotEmpty
            ? mainTagsOtherTagsRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              body: SafeArea(
                top: true,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
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
                                context.pushNamed('EditProfile');
                              },
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                scaffoldKey.currentState!.openEndDrawer();
                              },
                              child: Container(
                                width: 31.0,
                                height: 52.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'dlckeh8b' /* Course */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Yrsa',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue1 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'L.EIC')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue1 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('L.EIC');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'L.EIC');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'mkqjaboz' /* L.EIC */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue2 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'L.EEC')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue2 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('L.EEC');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'L.EEC');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8kwfnydq' /* L.EEC */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue3 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'L.BIO')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue3 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('L.BIO');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'L.BIO');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7msodpm4' /* L.BIO */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue4 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'L.EMAT')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue4 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('L.EMAT');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'L.EMAT');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q241az2u' /* L.EMAT */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue5 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'L.EMG')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue5 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('L.EMG');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'L.EMG');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'p7r0zpvb' /* L.EMG */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue6 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'L.EA')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue6 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('L.EA');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags('L.EA');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ogdmchrm' /* L.EA */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue7 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'L.EGI')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue7 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('L.EGI');
                                                });
                                              } else {
                                                setState(() {
                                                  _model
                                                      .removeFromTags('L.EGI');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4vs1134x' /* L.EGI */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue8 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'L.EF')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue8 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('L.EF');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags('L.EF');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ty43lccw' /* L.EF */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue9 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'L.EM')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue9 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('L.EM');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags('L.EM');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'v9glf909' /* L.EM */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue10 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'L.EQ')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue10 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('L.EQ');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags('L.EQ');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1ayg8dmj' /* L.EQ */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
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
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'biwthh45' /* Interests */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Yrsa',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue11 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Travel')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue11 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('Travel');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Travel');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'z5b8aefy' /* Travel */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue12 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Gaming')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue12 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('Gaming');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Gaming');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '378j7hzv' /* Gaming */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue13 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Football')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue13 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model
                                                        .addToTags('Football');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Football');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '1qhvl6ju' /* Football */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue14 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Guitar')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue14 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('Guitar');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Guitar');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3fiftnp9' /* Guitar */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue15 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Volunteer')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue15 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model
                                                        .addToTags('Volunteer');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Volunteer');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'j2s0aivp' /* Volunteer */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue16 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Biking')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue16 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('Biking');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Biking');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'd6rypwoq' /* Biking */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue17 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'Art')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue17 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Art');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags('Art');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'x5mwcmpc' /* Art */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue18 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'Music')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue18 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Music');
                                                });
                                              } else {
                                                setState(() {
                                                  _model
                                                      .removeFromTags('Music');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ik09bai6' /* Music */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue19 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'Cooking')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue19 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Cooking');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      'Cooking');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'chp4rlpl' /* Cooking */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue20 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'Chess')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue20 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Chess');
                                                });
                                              } else {
                                                setState(() {
                                                  _model
                                                      .removeFromTags('Chess');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2yza8xdr' /* Chess */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue21 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'Reading')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue21 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Reading');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      'Reading');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hoiy28tm' /* Reading */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue22 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where(
                                                            (e) => e == 'Yoga')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue22 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Yoga');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags('Yoga');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ktdcnyim' /* Yoga */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
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
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'wma9vqyi' /* Languages */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Yrsa',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue23 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Portuguese')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue23 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags(
                                                        'Portuguese');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Portuguese');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'gv5pvpp0' /* Portuguese */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue24 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Spanish')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue24 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('Spanish');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Spanish');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rga0k5l0' /* Spanish */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue25 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Arabic')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue25 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('Arabic');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Arabic');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '76w5ubtp' /* Arabic */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue26 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'German')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue26 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('German');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'German');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '54339483' /* German */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue27 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Chinese')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue27 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model.addToTags('Chinese');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Chinese');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ixd0iqoe' /* Chinese */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue28 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == 'Japanese')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue28 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model
                                                        .addToTags('Japanese');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        'Japanese');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'eog1nc2j' /* Japanese */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue29 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'English')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue29 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('English');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      'English');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'cvtpr1nz' /* English */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue30 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'French')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue30 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('French');
                                                });
                                              } else {
                                                setState(() {
                                                  _model
                                                      .removeFromTags('French');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8m4euah2' /* French */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue31 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'Russian')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue31 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Russian');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      'Russian');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'c8hotz5x' /* Russian */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue32 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'Italian')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue32 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Italian');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      'Italian');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dg7kdadz' /* Italian */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue33 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'Turkish')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue33 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Turkish');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      'Turkish');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'v24bcu5a' /* Turkish */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue34 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == 'Korean')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue34 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('Korean');
                                                });
                                              } else {
                                                setState(() {
                                                  _model
                                                      .removeFromTags('Korean');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5cc1ubeb' /* Korean */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
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
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'cie6h7qf' /* Year */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Yrsa',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue35 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == '1st year')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue35 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model
                                                        .addToTags('1st year');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        '1st year');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8isxvw2n' /* 1st year */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue36 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == '2nd year')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue36 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model
                                                        .addToTags('2nd year');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        '2nd year');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'tz88pzdr' /* 2nd year */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        decoration: const BoxDecoration(),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Theme(
                                            data: ThemeData(
                                              checkboxTheme: const CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: CheckboxListTile(
                                              value: _model
                                                      .checkboxListTileValue37 ??=
                                                  ((currentUserDocument?.tags
                                                                  .toList() ??
                                                              [])
                                                          .where((e) =>
                                                              e == '3rd year')
                                                          .toList()
                                                          .isNotEmpty) ==
                                                      true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .checkboxListTileValue37 =
                                                    newValue!);
                                                if (newValue!) {
                                                  setState(() {
                                                    _model
                                                        .addToTags('3rd year');
                                                  });
                                                } else {
                                                  setState(() {
                                                    _model.removeFromTags(
                                                        '3rd year');
                                                  });
                                                }
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7pb7nv9a' /* 3rd year */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Yrsa',
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue38 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == '4th year')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue38 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('4th year');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      '4th year');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'pyt7zvhh' /* 4th year */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value: _model
                                                    .checkboxListTileValue39 ??=
                                                ((currentUserDocument?.tags
                                                                .toList() ??
                                                            [])
                                                        .where((e) =>
                                                            e == '5th year')
                                                        .toList()
                                                        .isNotEmpty) ==
                                                    true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValue39 =
                                                  newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model.addToTags('5th year');
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      '5th year');
                                                });
                                              }
                                            },
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'np96wgkh' /* 5th year */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
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
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '7ohcc65r' /* Others */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Yrsa',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Container(
                          height: 300.0,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                50.0, 20.0, 50.0, 30.0),
                            child: Builder(
                              builder: (context) {
                                final otherTag =
                                    mainTagsOtherTagsRecord?.other.toList() ??
                                        [];
                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: otherTag.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 5.0),
                                  itemBuilder: (context, otherTagIndex) {
                                    final otherTagItem =
                                        otherTag[otherTagIndex];
                                    return Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      decoration: const BoxDecoration(),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Theme(
                                          data: ThemeData(
                                            checkboxTheme: const CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value:
                                                _model.checkboxListTileValueMap40[
                                                        otherTagItem] ??=
                                                    ((currentUserDocument
                                                                    ?.tags
                                                                    .toList() ??
                                                                [])
                                                            .where((e) =>
                                                                e ==
                                                                otherTagItem)
                                                            .toList()
                                                            .isNotEmpty) ==
                                                        true,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                      .checkboxListTileValueMap40[
                                                  otherTagItem] = newValue!);
                                              if (newValue!) {
                                                setState(() {
                                                  _model
                                                      .addToTags(otherTagItem);
                                                });
                                              } else {
                                                setState(() {
                                                  _model.removeFromTags(
                                                      otherTagItem);
                                                });
                                              }
                                            },
                                            title: Text(
                                              otherTagItem,
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Yrsa',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 0.0, 20.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '5tiph66w' /* Add your own 
tag here! */
                                ,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Yrsa',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 20.0),
                            child: SizedBox(
                              width: 180.0,
                              child: TextFormField(
                                controller: _model.otherTagAddTextController,
                                focusNode: _model.otherTagAddFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'q5wcgrpd' /* Tag */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        fontSize: 15.0,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
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
                                  fillColor: const Color(0x9EEBEBEB),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .otherTagAddTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: Icon(
                                Icons.add,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                await mainTagsOtherTagsRecord!.reference
                                    .update({
                                  ...mapToFirestore(
                                    {
                                      'other': FieldValue.arrayUnion([
                                        _model.otherTagAddTextController.text
                                      ]),
                                    },
                                  ),
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'tags': _model.tags,
                                },
                              ),
                            });

                            context.pushNamed('MyProfile');
                          },
                          text: FFLocalizations.of(context).getText(
                            '87pfz8j5' /* Save Changes */,
                          ),
                          options: FFButtonOptions(
                            width: 270.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).primary,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
