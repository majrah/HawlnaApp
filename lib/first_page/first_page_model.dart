import '/flutter_flow/flutter_flow_util.dart';
import 'first_page_widget.dart' show FirstPageWidget;
import 'package:flutter/material.dart';

class FirstPageModel extends FlutterFlowModel<FirstPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
