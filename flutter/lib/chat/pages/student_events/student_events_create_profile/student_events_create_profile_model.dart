import '/flutter_flow/flutter_flow_util.dart';
import 'student_events_create_profile_widget.dart'
    show StudentEventsCreateProfileWidget;
import 'package:flutter/material.dart';

class StudentEventsCreateProfileModel
    extends FlutterFlowModel<StudentEventsCreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for event_name widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for event_room widget.
  FocusNode? eventRoomFocusNode;
  TextEditingController? eventRoomTextController;
  String? Function(BuildContext, String?)? eventRoomTextControllerValidator;
  // State field(s) for event_description widget.
  FocusNode? eventDescriptionFocusNode;
  TextEditingController? eventDescriptionTextController;
  String? Function(BuildContext, String?)?
      eventDescriptionTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    eventRoomFocusNode?.dispose();
    eventRoomTextController?.dispose();

    eventDescriptionFocusNode?.dispose();
    eventDescriptionTextController?.dispose();
  }
}
