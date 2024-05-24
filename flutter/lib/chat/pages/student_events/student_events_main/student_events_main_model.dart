import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_events_main_widget.dart' show StudentEventsMainWidget;
import 'package:flutter/material.dart';

class StudentEventsMainModel extends FlutterFlowModel<StudentEventsMainWidget> {
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

  bool isSearching = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SearchEvents widget.
  FocusNode? searchEventsFocusNode;
  TextEditingController? searchEventsTextController;
  String? Function(BuildContext, String?)? searchEventsTextControllerValidator;
  List<StudenteventsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchEventsFocusNode?.dispose();
    searchEventsTextController?.dispose();
  }
}
