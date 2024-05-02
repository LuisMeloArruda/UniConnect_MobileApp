import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tags_copy_widget.dart' show TagsCopyWidget;
import 'package:flutter/material.dart';

class TagsCopyModel extends FlutterFlowModel<TagsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for LanguagesCheckBoxes1 widget.
  List<String>? languagesCheckBoxes1Values1;
  FormFieldController<List<String>>? languagesCheckBoxes1ValueController1;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues1;
  FormFieldController<List<String>>? checkboxGroupValueController1;
  // State field(s) for LanguagesCheckBoxes1 widget.
  List<String>? languagesCheckBoxes1Values2;
  FormFieldController<List<String>>? languagesCheckBoxes1ValueController2;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues2;
  FormFieldController<List<String>>? checkboxGroupValueController2;
  // State field(s) for LanguagesCheckBoxes1 widget.
  List<String>? languagesCheckBoxes1Values3;
  FormFieldController<List<String>>? languagesCheckBoxes1ValueController3;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues3;
  FormFieldController<List<String>>? checkboxGroupValueController3;
  // State field(s) for LanguagesCheckBoxes1 widget.
  List<String>? languagesCheckBoxes1Values4;
  FormFieldController<List<String>>? languagesCheckBoxes1ValueController4;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues4;
  FormFieldController<List<String>>? checkboxGroupValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
