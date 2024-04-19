import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pop_up_appointment_model.dart';
export 'pop_up_appointment_model.dart';

class PopUpAppointmentWidget extends StatefulWidget {
  const PopUpAppointmentWidget({super.key});

  @override
  State<PopUpAppointmentWidget> createState() => _PopUpAppointmentWidgetState();
}

class _PopUpAppointmentWidgetState extends State<PopUpAppointmentWidget> {
  late PopUpAppointmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopUpAppointmentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.0,
      height: 146.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            Icons.check,
            color: Color(0xFF74E15A),
            size: 72.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
            child: Text(
              'Your Appointment schedule',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
