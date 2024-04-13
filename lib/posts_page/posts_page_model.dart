import '/flutter_flow/flutter_flow_util.dart';
import 'posts_page_widget.dart' show PostsPageWidget;
import 'package:flutter/material.dart';

class PostsPageModel extends FlutterFlowModel<PostsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
