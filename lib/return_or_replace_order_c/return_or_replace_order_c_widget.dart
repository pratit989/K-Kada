import '/components/check_list_order_details_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'return_or_replace_order_c_model.dart';
export 'return_or_replace_order_c_model.dart';

class ReturnOrReplaceOrderCWidget extends StatefulWidget {
  const ReturnOrReplaceOrderCWidget({Key? key}) : super(key: key);

  @override
  _ReturnOrReplaceOrderCWidgetState createState() =>
      _ReturnOrReplaceOrderCWidgetState();
}

class _ReturnOrReplaceOrderCWidgetState
    extends State<ReturnOrReplaceOrderCWidget> {
  late ReturnOrReplaceOrderCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReturnOrReplaceOrderCModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        '412t1hfo' /* Return/Replace Order */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.checkListOrderDetailsModel,
                    updateCallback: () => setState(() {}),
                    child: CheckListOrderDetailsWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'oipvc9y2' /* Reason for Return/Replace */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qoexd3yi' /* You can select one or more opt... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FlutterFlowRadioButton(
                    options: [
                      FFLocalizations.of(context).getText(
                        '4pal33zi' /* Bought by mistake */,
                      ),
                      FFLocalizations.of(context).getText(
                        'mhl7qgc8' /* Better price available */,
                      ),
                      FFLocalizations.of(context).getText(
                        'ridft83s' /* Incompatible or not useful */,
                      ),
                      FFLocalizations.of(context).getText(
                        'pdj81dzh' /* Performance or quality not ade... */,
                      ),
                      FFLocalizations.of(context).getText(
                        'inhknih3' /* Item arrived too late */,
                      ),
                      FFLocalizations.of(context).getText(
                        'y0g8jgpj' /* Missing parts or accessories */,
                      ),
                      FFLocalizations.of(context).getText(
                        'e88x78d6' /* Wrong item was sent */,
                      ),
                      FFLocalizations.of(context).getText(
                        'etstqa90' /* Received extra item I didn't b... */,
                      ),
                      FFLocalizations.of(context).getText(
                        'n14dumtz' /* Item Defective */,
                      )
                    ].toList(),
                    onChanged: (val) => setState(() {}),
                    controller: _model.radioButtonValueController ??=
                        FormFieldController<String>(null),
                    optionHeight: 35.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 10.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'rrg9cb47' /* Proceed */,
                    ),
                    options: FFButtonOptions(
                      width: 181.0,
                      height: 36.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '6dnqr1eh' /* Please make sure your order do... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(70.0, 5.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'e25qwx32' /* See Refund Terms & Policies */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 12.0,
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
