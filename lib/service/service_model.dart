import '/flutter_flow/flutter_flow_util.dart';
import 'service_widget.dart' show ServiceWidget;
import 'package:flutter/material.dart';

class ServiceModel extends FlutterFlowModel<ServiceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
