import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tags_widget.dart' show TagsWidget;
import 'package:flutter/material.dart';

class TagsModel extends FlutterFlowModel<TagsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues1;
  FormFieldController<List<String>>? checkboxGroupValueController1;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues2;
  FormFieldController<List<String>>? checkboxGroupValueController2;
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
