import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlmostDoneTWidget extends StatefulWidget {
  const AlmostDoneTWidget({Key key}) : super(key: key);

  @override
  _AlmostDoneTWidgetState createState() => _AlmostDoneTWidgetState();
}

class _AlmostDoneTWidgetState extends State<AlmostDoneTWidget> {
  String dropDownValue1;
  TextEditingController textController1;
  String dropDownValue2;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xFF183C28),
                          size: 30,
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
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'i02q2imr' /* What's your shop address? */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                        ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'eqtrmww1' /* *ADDRESS */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xD9000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                  child: TextFormField(
                    controller: textController1,
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
                          color: Color(0xFF183C28),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0d7hg1t3' /* ( Enter the same address as sh... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                          fontSize: 10,
                        ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'zwp5oy19' /* *CITY */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xDA000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: FlutterFlowDropDown(
                    options: [].toList(),
                    onChanged: (val) => setState(() => dropDownValue1 = val),
                    width: MediaQuery.of(context).size.width,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 15,
                    ),
                    fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                    elevation: 0,
                    borderColor: Color(0x00B6AF9A),
                    borderWidth: 0,
                    borderRadius: 10,
                    margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '0jx0t3i9' /* *STATE */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xDA000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: FlutterFlowDropDown(
                    options: [].toList(),
                    onChanged: (val) => setState(() => dropDownValue2 = val),
                    width: MediaQuery.of(context).size.width,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 15,
                    ),
                    fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                    elevation: 0,
                    borderColor: Color(0x00B6AF9A),
                    borderWidth: 0,
                    borderRadius: 10,
                    margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'jg2reci7' /* *PIN CODE */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xDA000000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                TextFormField(
                  controller: textController2,
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
                        color: Color(0xFF183C28),
                        width: 0.3,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 50,
                    fillColor: FlutterFlowTheme.of(context).primaryColor,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      size: 25,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
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
