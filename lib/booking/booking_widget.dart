import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'booking_model.dart';
export 'booking_model.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({
    super.key,
    required this.server,
    required this.providerRef,
  });

  final String? server;
  final String? providerRef;

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  late BookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Appointments',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.server,
                    'Service',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25.0,
                      ),
                ),
              ),
              Container(
                width: 373.0,
                height: 338.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primary,
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  weekFormat: false,
                  weekStartsMonday: true,
                  rowHeight: 40.0,
                  onChange: (DateTimeRange? newSelectedDate) {
                    setState(
                        () => _model.calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: FlutterFlowTheme.of(context).headlineSmall,
                  dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge,
                  dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                  selectedDateStyle: FlutterFlowTheme.of(context).titleSmall,
                  inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 0.0, 10.0),
                  child: Text(
                    'choose the time:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(null),
                  options: const [
                    '9:00 - 10:00 AM',
                    '10:00 - 11:00AM',
                    '11:00 - 12:00 PM',
                    '12:00 - 1:00 PM',
                    '2:00 - 3:00 PM',
                    '3:00 - 4:00 PM',
                    '4:00 - 5:00 PM',
                    '5:00 - 6:00 PM',
                    '6:00 - 7:00 PM'
                  ],
                  onChanged: (val) =>
                      setState(() => _model.dropDownValue = val),
                  width: 160.0,
                  height: 41.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium,
                  hintText: 'Please select...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Any Notes?',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Container(
                width: 318.0,
                height: 59.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Notes...',
                    labelStyle: FlutterFlowTheme.of(context).labelMedium,
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(90.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await BookServiceRecord.collection
                              .doc()
                              .set(createBookServiceRecordData(
                                bookDate: _model.calendarSelectedDay?.start,
                                bookTime: _model.dropDownValue,
                                notes: _model.textController.text,
                                userName: currentUserDisplayName,
                                providerName: widget.providerRef,
                                uid: currentUserUid,
                              ));

                          context.pushNamed('AppointPage');
                        },
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          decoration: const BoxDecoration(
                            color: Color(0xCC3B6B9A),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Book!',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
