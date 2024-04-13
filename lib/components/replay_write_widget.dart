import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'replay_write_model.dart';
export 'replay_write_model.dart';

class ReplayWriteWidget extends StatefulWidget {
  const ReplayWriteWidget({
    super.key,
    required this.postID,
  });

  final int? postID;

  @override
  State<ReplayWriteWidget> createState() => _ReplayWriteWidgetState();
}

class _ReplayWriteWidgetState extends State<ReplayWriteWidget> {
  late ReplayWriteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReplayWriteModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: const Color(0xFFF1F4F8),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: const Color(0xFFE5E7EB),
          ),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Stack(
          alignment: const AlignmentDirectional(1.0, 1.0),
          children: [
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Leave reply here...',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        color: const Color(0xFF606A85),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                  alignLabelWithHint: true,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        color: const Color(0xFF606A85),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 32.0, 16.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Figtree',
                      color: const Color(0xFF15161E),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                maxLines: 8,
                minLines: 4,
                cursorColor: const Color(0xFF6F61EF),
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await PostReplayRecord.collection
                        .doc()
                        .set(createPostReplayRecordData(
                          uid: currentUserUid,
                          userName: currentUserDisplayName,
                          replayText: _model.textController.text,
                          replayTme: getCurrentTimestamp,
                          postID: widget.postID,
                          photoUrl: currentUserPhoto,
                        ));
                    Navigator.pop(context);
                  },
                  text: 'Send',
                  options: FFButtonOptions(
                    height: 36.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF6F61EF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Figtree',
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
