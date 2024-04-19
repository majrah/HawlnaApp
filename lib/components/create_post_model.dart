import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_post_widget.dart' show CreatePostWidget;
import 'package:flutter/material.dart';

class CreatePostModel extends FlutterFlowModel<CreatePostWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for ChoiceCategory widget.
  FormFieldController<List<String>>? choiceCategoryValueController;
  String? get choiceCategoryValue =>
      choiceCategoryValueController?.value?.firstOrNull;
  set choiceCategoryValue(String? val) =>
      choiceCategoryValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceArea widget.
  FormFieldController<List<String>>? choiceAreaValueController;
  String? get choiceAreaValue => choiceAreaValueController?.value?.firstOrNull;
  set choiceAreaValue(String? val) =>
      choiceAreaValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
