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
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue4;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue5;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue6;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue7;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue8;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue9;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue10;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue11;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue12;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue13;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue14;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue15;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue16;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue17;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue18;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue19;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue20;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue21;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue22;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue23;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue24;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue25;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue26;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue27;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue28;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue29;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue30;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue31;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue32;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue33;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue34;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue35;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue36;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue37;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue38;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue39;
  // State field(s) for CheckboxListTile widget.

  Map<String, bool> checkboxListTileValueMap40 = {};
  List<String> get checkboxListTileCheckedItems40 =>
      checkboxListTileValueMap40.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Other_tag_Add widget.
  FocusNode? otherTagAddFocusNode;
  TextEditingController? otherTagAddTextController;
  String? Function(BuildContext, String?)? otherTagAddTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    otherTagAddFocusNode?.dispose();
    otherTagAddTextController?.dispose();
  }
}
