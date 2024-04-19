import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'posts_page_widget.dart' show PostsPageWidget;
import 'package:flutter/material.dart';

class PostsPageModel extends FlutterFlowModel<PostsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
  }
}
