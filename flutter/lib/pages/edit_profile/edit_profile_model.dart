import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for username_edit widget.
  FocusNode? usernameEditFocusNode;
  TextEditingController? usernameEditTextController;
  String? Function(BuildContext, String?)? usernameEditTextControllerValidator;
  // State field(s) for RealName_edit widget.
  FocusNode? realNameEditFocusNode;
  TextEditingController? realNameEditTextController;
  String? Function(BuildContext, String?)? realNameEditTextControllerValidator;
  // State field(s) for email_edit widget.
  FocusNode? emailEditFocusNode;
  TextEditingController? emailEditTextController;
  String? Function(BuildContext, String?)? emailEditTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameEditFocusNode?.dispose();
    usernameEditTextController?.dispose();

    realNameEditFocusNode?.dispose();
    realNameEditTextController?.dispose();

    emailEditFocusNode?.dispose();
    emailEditTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
