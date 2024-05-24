import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'find_students_widget.dart' show FindStudentsWidget;
import 'package:flutter/material.dart';

class FindStudentsModel extends FlutterFlowModel<FindStudentsWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> friendsList = [];
  void addToFriendsList(DocumentReference item) => friendsList.add(item);
  void removeFromFriendsList(DocumentReference item) =>
      friendsList.remove(item);
  void removeAtIndexFromFriendsList(int index) => friendsList.removeAt(index);
  void insertAtIndexInFriendsList(int index, DocumentReference item) =>
      friendsList.insert(index, item);
  void updateFriendsListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      friendsList[index] = updateFn(friendsList[index]);

  bool isShowFullList = true;

  List<String> filterTags = [];
  void addToFilterTags(String item) => filterTags.add(item);
  void removeFromFilterTags(String item) => filterTags.remove(item);
  void removeAtIndexFromFilterTags(int index) => filterTags.removeAt(index);
  void insertAtIndexInFilterTags(int index, String item) =>
      filterTags.insert(index, item);
  void updateFilterTagsAtIndex(int index, Function(String) updateFn) =>
      filterTags[index] = updateFn(filterTags[index]);

  int? filterNumber = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for tagsField widget.
  final tagsFieldKey = GlobalKey();
  FocusNode? tagsFieldFocusNode;
  TextEditingController? tagsFieldTextController;
  String? tagsFieldSelectedOption;
  String? Function(BuildContext, String?)? tagsFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();

    tagsFieldFocusNode?.dispose();
  }
}
