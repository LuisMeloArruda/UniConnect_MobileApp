import '/flutter_flow/flutter_flow_util.dart';
import 'student_organizations_create_profile_widget.dart'
    show StudentOrganizationsCreateProfileWidget;
import 'package:flutter/material.dart';

class StudentOrganizationsCreateProfileModel
    extends FlutterFlowModel<StudentOrganizationsCreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for organization_name widget.
  FocusNode? organizationNameFocusNode;
  TextEditingController? organizationNameTextController;
  String? Function(BuildContext, String?)?
      organizationNameTextControllerValidator;
  // State field(s) for organization_email widget.
  FocusNode? organizationEmailFocusNode;
  TextEditingController? organizationEmailTextController;
  String? Function(BuildContext, String?)?
      organizationEmailTextControllerValidator;
  // State field(s) for organization_room widget.
  FocusNode? organizationRoomFocusNode;
  TextEditingController? organizationRoomTextController;
  String? Function(BuildContext, String?)?
      organizationRoomTextControllerValidator;
  // State field(s) for organization_description widget.
  FocusNode? organizationDescriptionFocusNode;
  TextEditingController? organizationDescriptionTextController;
  String? Function(BuildContext, String?)?
      organizationDescriptionTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    organizationNameFocusNode?.dispose();
    organizationNameTextController?.dispose();

    organizationEmailFocusNode?.dispose();
    organizationEmailTextController?.dispose();

    organizationRoomFocusNode?.dispose();
    organizationRoomTextController?.dispose();

    organizationDescriptionFocusNode?.dispose();
    organizationDescriptionTextController?.dispose();
  }
}
