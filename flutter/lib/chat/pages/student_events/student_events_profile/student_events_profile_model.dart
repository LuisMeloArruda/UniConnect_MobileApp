import '/flutter_flow/flutter_flow_util.dart';
import 'student_events_profile_widget.dart' show StudentEventsProfileWidget;
import 'package:flutter/material.dart';

class StudentEventsProfileModel
    extends FlutterFlowModel<StudentEventsProfileWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> pageUser = [];
  void addToPageUser(DocumentReference item) => pageUser.add(item);
  void removeFromPageUser(DocumentReference item) => pageUser.remove(item);
  void removeAtIndexFromPageUser(int index) => pageUser.removeAt(index);
  void insertAtIndexInPageUser(int index, DocumentReference item) =>
      pageUser.insert(index, item);
  void updatePageUserAtIndex(int index, Function(DocumentReference) updateFn) =>
      pageUser[index] = updateFn(pageUser[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
