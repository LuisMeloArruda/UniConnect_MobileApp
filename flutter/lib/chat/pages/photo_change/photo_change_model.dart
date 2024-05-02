import '/flutter_flow/flutter_flow_util.dart';
import 'photo_change_widget.dart' show PhotoChangeWidget;
import 'package:flutter/material.dart';

class PhotoChangeModel extends FlutterFlowModel<PhotoChangeWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
