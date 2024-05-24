import '/flutter_flow/flutter_flow_util.dart';
import 'student_organizations_edit_profile_widget.dart'
    show StudentOrganizationsEditProfileWidget;
import 'package:flutter/material.dart';

class StudentOrganizationsEditProfileModel
    extends FlutterFlowModel<StudentOrganizationsEditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for organization_name_edit widget.
  FocusNode? organizationNameEditFocusNode;
  TextEditingController? organizationNameEditTextController;
  String? Function(BuildContext, String?)?
      organizationNameEditTextControllerValidator;
  // State field(s) for organization_email_edit widget.
  FocusNode? organizationEmailEditFocusNode;
  TextEditingController? organizationEmailEditTextController;
  String? Function(BuildContext, String?)?
      organizationEmailEditTextControllerValidator;
  // State field(s) for organization_room_edit widget.
  FocusNode? organizationRoomEditFocusNode;
  TextEditingController? organizationRoomEditTextController;
  String? Function(BuildContext, String?)?
      organizationRoomEditTextControllerValidator;
  // State field(s) for organization_description_edit widget.
  FocusNode? organizationDescriptionEditFocusNode;
  TextEditingController? organizationDescriptionEditTextController;
  String? Function(BuildContext, String?)?
      organizationDescriptionEditTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    organizationNameEditFocusNode?.dispose();
    organizationNameEditTextController?.dispose();

    organizationEmailEditFocusNode?.dispose();
    organizationEmailEditTextController?.dispose();

    organizationRoomEditFocusNode?.dispose();
    organizationRoomEditTextController?.dispose();

    organizationDescriptionEditFocusNode?.dispose();
    organizationDescriptionEditTextController?.dispose();
  }
}
