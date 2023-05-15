import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'return_or_replace_order2_c_model.dart';
export 'return_or_replace_order2_c_model.dart';

class ReturnOrReplaceOrder2CWidget extends StatefulWidget {
  const ReturnOrReplaceOrder2CWidget({Key? key}) : super(key: key);

  @override
  _ReturnOrReplaceOrder2CWidgetState createState() =>
      _ReturnOrReplaceOrder2CWidgetState();
}

class _ReturnOrReplaceOrder2CWidgetState
    extends State<ReturnOrReplaceOrder2CWidget> {
  late ReturnOrReplaceOrder2CModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReturnOrReplaceOrder2CModel());

    _model.textController ??= TextEditingController();
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
                        'bzywo3gp' /* Return/Replace Order */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4xrmyziq' /* Add Details */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4r38ccfy' /* Details you think is important... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 348.0,
                  height: 85.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFFBEBEBE),
                      width: 0.5,
                    ),
                  ),
                  child: TextFormField(
                    controller: _model.textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yantsin6' /* Add Details */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '3lxo8c9i' /* Photos can help us to understa... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 135.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/addphoto.png',
                          width: 290.0,
                          height: 133.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(70.0, 5.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'pdz35l5o' /* Slide to add multiple photos */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qhukq9ge' /* Select an option */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: FlutterFlowRadioButton(
                    options: [
                      FFLocalizations.of(context).getText(
                        '0dwmbp4f' /* Return */,
                      ),
                      FFLocalizations.of(context).getText(
                        'mhqevqgl' /* Replacement */,
                      )
                    ].toList(),
                    onChanged: (val) => setState(() {}),
                    controller: _model.radioButtonValueController1 ??=
                        FormFieldController<String>(null),
                    optionHeight: 25.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                        ),
                    textPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primary,
                    inactiveRadioButtonColor: Color(0x8A000000),
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'npfpaign' /* Select an option and submit */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: FlutterFlowRadioButton(
                    options: [
                      FFLocalizations.of(context).getText(
                        '4u74tilo' /* Pickup */,
                      ),
                      FFLocalizations.of(context).getText(
                        '3h3fbusf' /* Self Return */,
                      )
                    ].toList(),
                    onChanged: (val) => setState(() {}),
                    controller: _model.radioButtonValueController2 ??=
                        FormFieldController<String>(null),
                    optionHeight: 25.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                        ),
                    textPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primary,
                    inactiveRadioButtonColor: Color(0x8A000000),
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 30.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'aiicn3yr' /* Submit */,
                    ),
                    options: FFButtonOptions(
                      width: 181.0,
                      height: 37.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFBEBEBE),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
