import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountDetailsWidget extends StatefulWidget {
  const MyAccountDetailsWidget({Key key}) : super(key: key);

  @override
  _MyAccountDetailsWidgetState createState() => _MyAccountDetailsWidgetState();
}

class _MyAccountDetailsWidgetState extends State<MyAccountDetailsWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: currentUserDisplayName);
    textController2 = TextEditingController(text: currentPhoneNumber);
    textController3 = TextEditingController(text: currentUserEmail);
    textController4 = TextEditingController(
        text: dateTimeFormat('d/M/y', currentUserDocument?.dateOfBirth));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'va1pzkhg' /* My Account */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lato',
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
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
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 20),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ttrkdvob' /* DISPLAY NAME */,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: AuthUserStreamWidget(
                        child: TextFormField(
                          controller: textController1,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController1',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: textController1.text.isNotEmpty
                                ? InkWell(
                                    onTap: () => setState(
                                      () => textController1?.clear(),
                                    ),
                                    child: Icon(
                                      Icons.clear,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 22,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 20),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'w19ehvb1' /* MOBILE NUMBER */,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: AuthUserStreamWidget(
                        child: TextFormField(
                          controller: textController2,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController2',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: textController2.text.isNotEmpty
                                ? InkWell(
                                    onTap: () => setState(
                                      () => textController2?.clear(),
                                    ),
                                    child: Icon(
                                      Icons.clear,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 22,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
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
                            'x5gl27na' /* EMAIL ID   */,
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
                          'jo4jbunk' /* (optional) */,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: TextFormField(
                        controller: textController3,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController3',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: textController3.text.isNotEmpty
                              ? InkWell(
                                  onTap: () => setState(
                                    () => textController3?.clear(),
                                  ),
                                  child: Icon(
                                    Icons.clear,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 20),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'v2vr8m1x' /* DATE OF BIRTH */,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: AuthUserStreamWidget(
                        child: TextFormField(
                          controller: textController4,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController4',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: textController4.text.isNotEmpty
                                ? InkWell(
                                    onTap: () => setState(
                                      () => textController4?.clear(),
                                    ),
                                    child: Icon(
                                      Icons.clear,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 22,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final usersUpdateData = createUsersRecordData(
                        email: textController3.text,
                        displayName: textController1.text,
                      );
                      await currentUserReference.update(usersUpdateData);
                      Navigator.pop(context);
                    },
                    text: FFLocalizations.of(context).getText(
                      'k11vtyig' /* Save Changes */,
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
                      borderRadius: BorderRadius.circular(12),
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
