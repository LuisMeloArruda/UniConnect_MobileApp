import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'tags_copy_model.dart';
export 'tags_copy_model.dart';

class TagsCopyWidget extends StatefulWidget {
  const TagsCopyWidget({super.key});

  @override
  State<TagsCopyWidget> createState() => _TagsCopyWidgetState();
}

class _TagsCopyWidgetState extends State<TagsCopyWidget> {
  late TagsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagsCopyModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: const Color(0x00FFFFFF),
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).alternate,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('HomePage');
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
                        decoration: const BoxDecoration(
                          color: Color(0x00FDA387),
                        ),
                        child: Icon(
                          Icons.more_vert,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
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
                                  color: FlutterFlowTheme.of(context).primary,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 30.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FlutterFlowCheckboxGroup(
                            options: [
                              FFLocalizations.of(context).getText(
                                'jn2vp6ip' /* L.EIC */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uaed8my2' /* L.EEC */,
                              ),
                              FFLocalizations.of(context).getText(
                                '593z4gb2' /* L.BIO */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ouooicu6' /* L.EMAT */,
                              ),
                              FFLocalizations.of(context).getText(
                                'dowkjqdq' /* L.EMG */,
                              )
                            ],
                            onChanged: (val) => setState(
                                () => _model.languagesCheckBoxes1Values1 = val),
                            controller:
                                _model.languagesCheckBoxes1ValueController1 ??=
                                    FormFieldController<List<String>>(
                              (currentUserDocument?.tags.toList() ?? []),
                            ),
                            activeColor: FlutterFlowTheme.of(context).secondary,
                            checkColor: FlutterFlowTheme.of(context).primary,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Yrsa',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                            unselectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Yrsa',
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            checkboxBorderRadius: BorderRadius.circular(0.0),
                            initialized:
                                _model.languagesCheckBoxes1Values1 != null,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            35.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              '7ir376r7' /* L.EA */,
                            ),
                            FFLocalizations.of(context).getText(
                              'bevwh3pt' /* L.EGI */,
                            ),
                            FFLocalizations.of(context).getText(
                              'wekiawtt' /* L.EF */,
                            ),
                            FFLocalizations.of(context).getText(
                              'xlukygqi' /* L.EM */,
                            ),
                            FFLocalizations.of(context).getText(
                              'q0wvgiqe' /* L.EQ */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues1 = val),
                          controller: _model.checkboxGroupValueController1 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: FlutterFlowTheme.of(context).secondary,
                          checkColor: FlutterFlowTheme.of(context).primary,
                          checkboxBorderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          itemPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 25.0),
                          checkboxBorderRadius: BorderRadius.circular(0.0),
                          initialized: _model.checkboxGroupValues1 != null,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
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
                                  color: FlutterFlowTheme.of(context).primary,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 30.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FlutterFlowCheckboxGroup(
                            options: [
                              FFLocalizations.of(context).getText(
                                't0i0worb' /* Travel */,
                              ),
                              FFLocalizations.of(context).getText(
                                'v03050k2' /* Gaming */,
                              ),
                              FFLocalizations.of(context).getText(
                                'i7ngqmg2' /* Football */,
                              ),
                              FFLocalizations.of(context).getText(
                                'fn90pwjg' /* Guitar */,
                              ),
                              FFLocalizations.of(context).getText(
                                'sj31bkrr' /* Volunteer */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jnhjy3h3' /* Biking */,
                              )
                            ],
                            onChanged: (val) => setState(
                                () => _model.languagesCheckBoxes1Values2 = val),
                            controller:
                                _model.languagesCheckBoxes1ValueController2 ??=
                                    FormFieldController<List<String>>(
                              (currentUserDocument?.tags.toList() ?? []),
                            ),
                            activeColor: FlutterFlowTheme.of(context).secondary,
                            checkColor: FlutterFlowTheme.of(context).primary,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Yrsa',
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            checkboxBorderRadius: BorderRadius.circular(0.0),
                            initialized:
                                _model.languagesCheckBoxes1Values2 != null,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            35.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              '5wjqdsxd' /* Art */,
                            ),
                            FFLocalizations.of(context).getText(
                              '1vps3jwd' /* Music */,
                            ),
                            FFLocalizations.of(context).getText(
                              'xc9akn3w' /* Cooking */,
                            ),
                            FFLocalizations.of(context).getText(
                              'd7cr9jtb' /* Chess */,
                            ),
                            FFLocalizations.of(context).getText(
                              'g793roi8' /* Reading */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ehfjazlh' /* Yoga */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues2 = val),
                          controller: _model.checkboxGroupValueController2 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: FlutterFlowTheme.of(context).secondary,
                          checkColor: FlutterFlowTheme.of(context).primary,
                          checkboxBorderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          itemPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 25.0),
                          checkboxBorderRadius: BorderRadius.circular(0.0),
                          initialized: _model.checkboxGroupValues2 != null,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
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
                                  color: FlutterFlowTheme.of(context).primary,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 30.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FlutterFlowCheckboxGroup(
                            options: [
                              FFLocalizations.of(context).getText(
                                'nua3ch67' /* Portuguese */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xwtb5vyb' /* Spanish */,
                              ),
                              FFLocalizations.of(context).getText(
                                'hxjwjptz' /* Arabic */,
                              ),
                              FFLocalizations.of(context).getText(
                                '898uhml8' /* German */,
                              ),
                              FFLocalizations.of(context).getText(
                                '43mc7nh8' /* Chinese */,
                              ),
                              FFLocalizations.of(context).getText(
                                'kzsuxh1s' /* Japanese */,
                              )
                            ],
                            onChanged: (val) => setState(
                                () => _model.languagesCheckBoxes1Values3 = val),
                            controller:
                                _model.languagesCheckBoxes1ValueController3 ??=
                                    FormFieldController<List<String>>(
                              (currentUserDocument?.tags.toList() ?? []),
                            ),
                            activeColor: FlutterFlowTheme.of(context).secondary,
                            checkColor: FlutterFlowTheme.of(context).primary,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Yrsa',
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            checkboxBorderRadius: BorderRadius.circular(0.0),
                            initialized:
                                _model.languagesCheckBoxes1Values3 != null,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            35.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              '2xyii29j' /* English */,
                            ),
                            FFLocalizations.of(context).getText(
                              'grf1kgcs' /* French */,
                            ),
                            FFLocalizations.of(context).getText(
                              'b5hl7sdw' /* Russian */,
                            ),
                            FFLocalizations.of(context).getText(
                              'lrv2ds9i' /* Italian */,
                            ),
                            FFLocalizations.of(context).getText(
                              '92g47tv7' /* Turkish */,
                            ),
                            FFLocalizations.of(context).getText(
                              'j51b5tei' /* Korean */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues3 = val),
                          controller: _model.checkboxGroupValueController3 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: FlutterFlowTheme.of(context).secondary,
                          checkColor: FlutterFlowTheme.of(context).primary,
                          checkboxBorderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          itemPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 25.0),
                          checkboxBorderRadius: BorderRadius.circular(0.0),
                          initialized: _model.checkboxGroupValues3 != null,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
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
                                  color: FlutterFlowTheme.of(context).primary,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 30.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FlutterFlowCheckboxGroup(
                            options: [
                              FFLocalizations.of(context).getText(
                                'xm99yew5' /* 1st year */,
                              ),
                              FFLocalizations.of(context).getText(
                                '6jt11thp' /* 3rd year */,
                              ),
                              FFLocalizations.of(context).getText(
                                '39fztfcp' /* 5th year */,
                              )
                            ],
                            onChanged: (val) => setState(
                                () => _model.languagesCheckBoxes1Values4 = val),
                            controller:
                                _model.languagesCheckBoxes1ValueController4 ??=
                                    FormFieldController<List<String>>(
                              (currentUserDocument?.tags.toList() ?? []),
                            ),
                            activeColor: FlutterFlowTheme.of(context).secondary,
                            checkColor: FlutterFlowTheme.of(context).primary,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Yrsa',
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            checkboxBorderRadius: BorderRadius.circular(0.0),
                            initialized:
                                _model.languagesCheckBoxes1Values4 != null,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            35.0, 30.0, 0.0, 55.0),
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              'ya206dtc' /* 2nd year */,
                            ),
                            FFLocalizations.of(context).getText(
                              '1lgk8ce2' /* 4rd year */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues4 = val),
                          controller: _model.checkboxGroupValueController4 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: FlutterFlowTheme.of(context).secondary,
                          checkColor: FlutterFlowTheme.of(context).primary,
                          checkboxBorderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Yrsa',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          itemPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 25.0),
                          checkboxBorderRadius: BorderRadius.circular(0.0),
                          initialized: _model.checkboxGroupValues4 != null,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
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
                                  color: FlutterFlowTheme.of(context).primary,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            40.0, 20.0, 0.0, 0.0),
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 20.0, 30.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'fpq4ge8f' /*      Tag  */,
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 0.0,
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                              ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.05),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'tags': _model.languagesCheckBoxes1Values1,
                            },
                          ),
                        });
                      },
                      text: FFLocalizations.of(context).getText(
                        'qkkpctoq' /* Save Changes */,
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
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
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
