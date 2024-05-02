import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'tags2_model.dart';
export 'tags2_model.dart';

class Tags2Widget extends StatefulWidget {
  const Tags2Widget({super.key});

  @override
  State<Tags2Widget> createState() => _Tags2WidgetState();
}

class _Tags2WidgetState extends State<Tags2Widget> {
  late Tags2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Tags2Model());

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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              background: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('MyProfile');
                },
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
                        color: FlutterFlowTheme.of(context).primary,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('HomePage');
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 20.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'tr85w82d' /* Interests */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Yrsa',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 40.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
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
                          color: FlutterFlowTheme.of(context).primary,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            centerTitle: false,
            toolbarHeight: 0.0,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(50.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowCheckboxGroup(
                        options: [
                          FFLocalizations.of(context).getText(
                            'y3678khs' /* Travel */,
                          ),
                          FFLocalizations.of(context).getText(
                            'at42jhj0' /* Gaming */,
                          ),
                          FFLocalizations.of(context).getText(
                            'x0b5b6ps' /* Football */,
                          ),
                          FFLocalizations.of(context).getText(
                            '5hv6m1xn' /* Guitar */,
                          ),
                          FFLocalizations.of(context).getText(
                            '35bl5vro' /* Volunteer */,
                          ),
                          FFLocalizations.of(context).getText(
                            '5qon4lbo' /* Biking */,
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
                        itemPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                        checkboxBorderRadius: BorderRadius.circular(0.0),
                        initialized: _model.checkboxGroupValues1 != null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(35.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowCheckboxGroup(
                        options: [
                          FFLocalizations.of(context).getText(
                            '0qubbg28' /* Art */,
                          ),
                          FFLocalizations.of(context).getText(
                            'i4qagy0k' /* Music */,
                          ),
                          FFLocalizations.of(context).getText(
                            'qzdydtqq' /* Cooking */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ovvppur9' /* Chess */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ne3v1yoy' /* Reading */,
                          ),
                          FFLocalizations.of(context).getText(
                            'd3aye99j' /* Yoga */,
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
                        itemPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'e652p1co' /* Not seeing an interest? 
Add i... */
                          ,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Yrsa',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 30.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'fpq4ge8f' /*      Tag  */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondaryText,
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                            ),
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(90.0, 10.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.safePop();
                        },
                        text: FFLocalizations.of(context).getText(
                          'vv61isha' /* Back */,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Yrsa',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 10.0, 90.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Tags3');
                        },
                        text: FFLocalizations.of(context).getText(
                          'l4xsdrmx' /* Next */,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Yrsa',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
