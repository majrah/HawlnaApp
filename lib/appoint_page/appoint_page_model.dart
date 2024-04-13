import '/flutter_flow/flutter_flow_util.dart';
import 'appoint_page_widget.dart' show AppointPageWidget;
import 'package:flutter/material.dart';

class AppointPageModel extends FlutterFlowModel<AppointPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
