import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReturnOrReplaceOrder2CWidget extends StatefulWidget {
  const ReturnOrReplaceOrder2CWidget({Key key}) : super(key: key);

  @override
  _ReturnOrReplaceOrder2CWidgetState createState() =>
      _ReturnOrReplaceOrder2CWidgetState();
}

class _ReturnOrReplaceOrder2CWidgetState
    extends State<ReturnOrReplaceOrder2CWidget> {
  String radioButtonValue1;
  TextEditingController textController;
  String radioButtonValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        size: 25,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'bzywo3gp' /* Return/Replace Order */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 5),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4xrmyziq' /* Add Details */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontSize: 16,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4r38ccfy' /* Details you think is important... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 348,
                  height: 85,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFBEBEBE),
                      width: 0.5,
                    ),
                  ),
                  child: TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 5),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yantsin6' /* Add Details */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontSize: 16,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '3lxo8c9i' /* Photos can help us to understa... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 135,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/Group_949.png',
                          width: 290,
                          height: 133,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(70, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'pdz35l5o' /* Slide to add multiple photos */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qhukq9ge' /* Select an option */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontSize: 16,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: FlutterFlowRadioButton(
                    options: [
                      FFLocalizations.of(context).getText(
                        '0dwmbp4f' /* Return */,
                      ),
                      FFLocalizations.of(context).getText(
                        'mhqevqgl' /* Replacement */,
                      )
                    ],
                    onChanged: (value) {
                      setState(() => radioButtonValue1 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                        ),
                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor: Color(0x8A000000),
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'npfpaign' /* Select an option and submit */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontSize: 16,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: FlutterFlowRadioButton(
                    options: [
                      FFLocalizations.of(context).getText(
                        '4u74tilo' /* Pickup */,
                      ),
                      FFLocalizations.of(context).getText(
                        '3h3fbusf' /* Self Return */,
                      )
                    ],
                    onChanged: (value) {
                      setState(() => radioButtonValue2 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                        ),
                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor: Color(0x8A000000),
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 30, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'aiicn3yr' /* Submit */,
                    ),
                    options: FFButtonOptions(
                      width: 181,
                      height: 37,
                      color: Color(0xFFBEBEBE),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
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
