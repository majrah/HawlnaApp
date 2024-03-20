import '/components/replay_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'communitychat_widget.dart' show CommunitychatWidget;
import 'package:flutter/material.dart';

class CommunitychatModel extends FlutterFlowModel<CommunitychatWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for replay component.
  late ReplayModel replayModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    replayModel = createModel(context, () => ReplayModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    replayModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
