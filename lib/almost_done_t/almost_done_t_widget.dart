import '/add_vehicle_t/add_vehicle_t_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'almost_done_t_model.dart';
export 'almost_done_t_model.dart';

class AlmostDoneTWidget extends StatefulWidget {
  const AlmostDoneTWidget({Key? key}) : super(key: key);

  @override
  _AlmostDoneTWidgetState createState() => _AlmostDoneTWidgetState();
}

class _AlmostDoneTWidgetState extends State<AlmostDoneTWidget> {
  late AlmostDoneTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlmostDoneTModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xFF183C28),
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'jbrx6lqr' /* Almost done, */,
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'i02q2imr' /* What's your shop address? */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                        ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'eqtrmww1' /* *ADDRESS */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xD9000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                  child: TextFormField(
                    controller: _model.textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF183C28),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0d7hg1t3' /* ( Enter the same address as sh... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                          fontSize: 10.0,
                        ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'zwp5oy19' /* *CITY */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xDA000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController1 ??=
                        FormFieldController<String>(null),
                    options: <String>[],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue1 = val),
                    width: MediaQuery.of(context).size.width * 1.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 15.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).tertiary,
                    elevation: 0.0,
                    borderColor: Color(0x00B6AF9A),
                    borderWidth: 0.0,
                    borderRadius: 10.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    isSearchable: false,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '0jx0t3i9' /* *STATE */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xDA000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController2 ??=
                        FormFieldController<String>(null),
                    options: <String>[],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue2 = val),
                    width: MediaQuery.of(context).size.width * 1.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 15.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).tertiary,
                    elevation: 0.0,
                    borderColor: Color(0x00B6AF9A),
                    borderWidth: 0.0,
                    borderRadius: 10.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    isSearchable: false,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'jg2reci7' /* *PIN CODE */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xDA000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                TextFormField(
                  controller: _model.textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF183C28),
                        width: 0.3,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.3,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.3,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.3,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                  validator:
                      _model.textController2Validator.asValidator(context),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 25.0,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddVehicleTWidget(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
