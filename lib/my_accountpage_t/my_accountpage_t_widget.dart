import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountpageTWidget extends StatefulWidget {
  const MyAccountpageTWidget({Key key}) : super(key: key);

  @override
  _MyAccountpageTWidgetState createState() => _MyAccountpageTWidgetState();
}

class _MyAccountpageTWidgetState extends State<MyAccountpageTWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xFF183C28),
                          size: 30,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'eomlq1qi' /* My Account */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 20),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '6lbefpgc' /* FIRST NAME */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (_) => EasyDebounce.debounce(
                        'textController1',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      controller: textController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: textController1.text.isNotEmpty
                            ? InkWell(
                                onTap: () => setState(
                                  () => textController1.clear(),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 20),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'hkgj4f1y' /* LAST NAME */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (_) => EasyDebounce.debounce(
                        'textController2',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      controller: textController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: textController2.text.isNotEmpty
                            ? InkWell(
                                onTap: () => setState(
                                  () => textController2.clear(),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 20),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0nyubt90' /* MOBILE NUMBER */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (_) => EasyDebounce.debounce(
                        'textController3',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      controller: textController3,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: textController3.text.isNotEmpty
                            ? InkWell(
                                onTap: () => setState(
                                  () => textController3.clear(),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'mppnshkk' /* EMAIL ID   */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xDA000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'd9804x08' /* (optional) */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFF696969),
                              fontSize: 10,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (_) => EasyDebounce.debounce(
                        'textController4',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      controller: textController4,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: textController4.text.isNotEmpty
                            ? InkWell(
                                onTap: () => setState(
                                  () => textController4.clear(),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 20),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0chhjgln' /* DATE OF BIRTH */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (_) => EasyDebounce.debounce(
                        'textController5',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      controller: textController5,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: textController5.text.isNotEmpty
                            ? InkWell(
                                onTap: () => setState(
                                  () => textController5.clear(),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'ls43n8yf' /* Save Changes */,
                    ),
                    options: FFButtonOptions(
                      width: 160,
                      height: 37,
                      color: Colors.black,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
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
