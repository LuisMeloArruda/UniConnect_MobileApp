import '/flutter_flow/flutter_flow_util.dart';
import 'student_events_edit_profille_widget.dart'
    show StudentEventsEditProfilleWidget;
import 'package:flutter/material.dart';

class StudentEventsEditProfilleModel
    extends FlutterFlowModel<StudentEventsEditProfilleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for event_name_edit widget.
  FocusNode? eventNameEditFocusNode;
  TextEditingController? eventNameEditTextController;
  String? Function(BuildContext, String?)? eventNameEditTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for event_room_edit widget.
  FocusNode? eventRoomEditFocusNode;
  TextEditingController? eventRoomEditTextController;
  String? Function(BuildContext, String?)? eventRoomEditTextControllerValidator;
  // State field(s) for event_description_des widget.
  FocusNode? eventDescriptionDesFocusNode;
  TextEditingController? eventDescriptionDesTextController;
  String? Function(BuildContext, String?)?
      eventDescriptionDesTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    eventNameEditFocusNode?.dispose();
    eventNameEditTextController?.dispose();

    eventRoomEditFocusNode?.dispose();
    eventRoomEditTextController?.dispose();

    eventDescriptionDesFocusNode?.dispose();
    eventDescriptionDesTextController?.dispose();
  }
}
