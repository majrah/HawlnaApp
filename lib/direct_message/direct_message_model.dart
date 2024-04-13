import '/flutter_flow/flutter_flow_util.dart';
import 'direct_message_widget.dart' show DirectMessageWidget;
import 'package:flutter/material.dart';

class DirectMessageModel extends FlutterFlowModel<DirectMessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
