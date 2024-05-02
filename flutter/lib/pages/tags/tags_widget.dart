import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'tags_model.dart';
export 'tags_model.dart';

class TagsWidget extends StatefulWidget {
  const TagsWidget({super.key});

  @override
  State<TagsWidget> createState() => _TagsWidgetState();
}

class _TagsWidgetState extends State<TagsWidget> {
  late TagsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagsModel());

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
                          '4b63h8pv' /* Course */,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              '8nlxg8ue' /* L.EIC */,
                            ),
                            FFLocalizations.of(context).getText(
                              '93sljrf1' /* L.EEC */,
                            ),
                            FFLocalizations.of(context).getText(
                              'y6vtnsmv' /* L.BIO */,
                            ),
                            FFLocalizations.of(context).getText(
                              'f2aj97xj' /* L.EMAT */,
                            ),
                            FFLocalizations.of(context).getText(
                              'cs9y5347' /* L.EMG */,
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            35.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              'kjb7mng7' /* L.EA */,
                            ),
                            FFLocalizations.of(context).getText(
                              'j5u1h6wg' /* L.EGI */,
                            ),
                            FFLocalizations.of(context).getText(
                              'mqec7j4e' /* L.EF */,
                            ),
                            FFLocalizations.of(context).getText(
                              'pb6hbke2' /* L.EM */,
                            ),
                            FFLocalizations.of(context).getText(
                              'lsz553oz' /* L.EQ */,
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
                          '46rmr33b' /* Not seeing your 
course? Add i... */
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
                            'gyce00gm' /*      Tag  */,
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
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Tags2');
                  },
                  text: FFLocalizations.of(context).getText(
                    'istysbmj' /* Next */,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).tertiary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
      ),
    );
  }
}
