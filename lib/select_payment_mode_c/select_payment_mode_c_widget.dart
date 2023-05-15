import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_payment_mode_c_model.dart';
export 'select_payment_mode_c_model.dart';

class SelectPaymentModeCWidget extends StatefulWidget {
  const SelectPaymentModeCWidget({Key? key}) : super(key: key);

  @override
  _SelectPaymentModeCWidgetState createState() =>
      _SelectPaymentModeCWidgetState();
}

class _SelectPaymentModeCWidgetState extends State<SelectPaymentModeCWidget> {
  late SelectPaymentModeCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectPaymentModeCModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '1fu5nt4u' /* Select Payment Mode */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowRadioButton(
                        options: [''].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButtonValueController1 ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: FlutterFlowTheme.of(context).primary,
                        inactiveRadioButtonColor: Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                      Container(
                        width: 280.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x15000000),
                              offset: Offset(2.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF707070),
                            width: 0.3,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.creditCard,
                              color: Colors.black,
                              size: 18.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 70.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '2670cuha' /* Debit Card */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFBEBEBE),
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowRadioButton(
                        options: [''].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButtonValueController2 ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: FlutterFlowTheme.of(context).primary,
                        inactiveRadioButtonColor: Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                      Container(
                        width: 280.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x15000000),
                              offset: Offset(2.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF707070),
                            width: 0.3,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.googlePay,
                              color: Colors.black,
                              size: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 70.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'df47o7at' /* Google Pay */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFBEBEBE),
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowRadioButton(
                        options: [''].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButtonValueController3 ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: FlutterFlowTheme.of(context).primary,
                        inactiveRadioButtonColor: Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                      Container(
                        width: 280.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x15000000),
                              offset: Offset(2.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF707070),
                            width: 0.3,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.applePay,
                              color: Colors.black,
                              size: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 70.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vbf5frg1' /* Apple Pay */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFBEBEBE),
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowRadioButton(
                        options: [''].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButtonValueController4 ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: FlutterFlowTheme.of(context).primary,
                        inactiveRadioButtonColor: Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                      Container(
                        width: 280.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x15000000),
                              offset: Offset(2.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF707070),
                            width: 0.3,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/Group_955.png',
                              width: 18.0,
                              height: 18.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 7.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ftqp4cyq' /* Cash on Delivery */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFBEBEBE),
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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
