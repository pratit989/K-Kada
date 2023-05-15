import '/components/grand_total_of_mycart_c_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'make_payment_c_model.dart';
export 'make_payment_c_model.dart';

class MakePaymentCWidget extends StatefulWidget {
  const MakePaymentCWidget({Key? key}) : super(key: key);

  @override
  _MakePaymentCWidgetState createState() => _MakePaymentCWidgetState();
}

class _MakePaymentCWidgetState extends State<MakePaymentCWidget> {
  late MakePaymentCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MakePaymentCModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
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
                        'jeog8b6k' /* Make Payment */,
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
                        controller: _model.radioButtonValueController ??=
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
                                  'gxgz9cp7' /* Debit Card */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 40.0, 0.0),
                  child: wrapWithModel(
                    model: _model.grandTotalOfMycartCModel,
                    updateCallback: () => setState(() {}),
                    child: GrandTotalOfMycartCWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'yqudverm' /* Pay Now */,
                    ),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 320.0,
                      height: 47.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: Color(0xFFF1F1F1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
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
