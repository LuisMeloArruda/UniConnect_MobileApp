import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for RealName widget.
  FocusNode? realNameFocusNode;
  TextEditingController? realNameTextController;
  String? Function(BuildContext, String?)? realNameTextControllerValidator;
  String? _realNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r9jai2ki' /* Field is required */,
      );
    }

    return null;
  }

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    realNameTextControllerValidator = _realNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    realNameFocusNode?.dispose();
    realNameTextController?.dispose();
  }
}
