import '/flutter_flow/flutter_flow_util.dart';
import 'main_tags_widget.dart' show MainTagsWidget;
import 'package:flutter/material.dart';

class MainTagsModel extends FlutterFlowModel<MainTagsWidget> {
  ///  Local state fields for this page.

  List<String> tags = [];
  void addToTags(String item) => tags.add(item);
  void removeFromTags(String item) => tags.remove(item);
  void removeAtIndexFromTags(int index) => tags.removeAt(index);
  void insertAtIndexInTags(int index, String item) => tags.insert(index, item);
  void updateTagsAtIndex(int index, Function(String) updateFn) =>
      tags[index] = updateFn(tags[index]);

  List<String> other = [];
  void addToOther(String item) => other.add(item);
  void removeFromOther(String item) => other.remove(item);
  void removeAtIndexFromOther(int index) => other.removeAt(index);
  void insertAtIndexInOther(int index, String item) =>
      other.insert(index, item);
  void updateOtherAtIndex(int index, Function(String) updateFn) =>
      other[index] = updateFn(other[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CourseTextField widget.
  final courseTextFieldKey = GlobalKey();
  FocusNode? courseTextFieldFocusNode;
  TextEditingController? courseTextFieldTextController;
  String? courseTextFieldSelectedOption;
  String? Function(BuildContext, String?)?
      courseTextFieldTextControllerValidator;
  // State field(s) for InterestsTextField widget.
  final interestsTextFieldKey = GlobalKey();
  FocusNode? interestsTextFieldFocusNode;
  TextEditingController? interestsTextFieldTextController;
  String? interestsTextFieldSelectedOption;
  String? Function(BuildContext, String?)?
      interestsTextFieldTextControllerValidator;
  // State field(s) for LanguageTextField widget.
  final languageTextFieldKey = GlobalKey();
  FocusNode? languageTextFieldFocusNode;
  TextEditingController? languageTextFieldTextController;
  String? languageTextFieldSelectedOption;
  String? Function(BuildContext, String?)?
      languageTextFieldTextControllerValidator;
  // State field(s) for YearTextField widget.
  final yearTextFieldKey = GlobalKey();
  FocusNode? yearTextFieldFocusNode;
  TextEditingController? yearTextFieldTextController;
  String? yearTextFieldSelectedOption;
  String? Function(BuildContext, String?)? yearTextFieldTextControllerValidator;
  // State field(s) for OthersTextField widget.
  final othersTextFieldKey = GlobalKey();
  FocusNode? othersTextFieldFocusNode;
  TextEditingController? othersTextFieldTextController;
  String? othersTextFieldSelectedOption;
  String? Function(BuildContext, String?)?
      othersTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    courseTextFieldFocusNode?.dispose();

    interestsTextFieldFocusNode?.dispose();

    languageTextFieldFocusNode?.dispose();

    yearTextFieldFocusNode?.dispose();

    othersTextFieldFocusNode?.dispose();
  }
}
