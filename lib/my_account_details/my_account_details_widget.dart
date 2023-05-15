import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_account_details_model.dart';
export 'my_account_details_model.dart';

class MyAccountDetailsWidget extends StatefulWidget {
  const MyAccountDetailsWidget({Key? key}) : super(key: key);

  @override
  _MyAccountDetailsWidgetState createState() => _MyAccountDetailsWidgetState();
}

class _MyAccountDetailsWidgetState extends State<MyAccountDetailsWidget> {
  late MyAccountDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAccountDetailsModel());

    _model.textController1 ??=
        TextEditingController(text: currentUserDisplayName);
    _model.textController2 ??= TextEditingController(text: currentPhoneNumber);
    _model.textController3 ??= TextEditingController(text: currentUserEmail);
    _model.textController4 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController4?.text = dateTimeFormat(
            'd/M/y',
            currentUserDocument!.dateOfBirth,
            locale: FFLocalizations.of(context).languageCode,
          );
        }));
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: FlutterFlowTheme.of(context).secondary,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'va1pzkhg' /* My Account */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lato',
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ttrkdvob' /* DISPLAY NAME */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => TextFormField(
                          controller: _model.textController1,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController1',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: _model.textController1!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textController1?.clear();
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 22.0,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'w19ehvb1' /* MOBILE NUMBER */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => TextFormField(
                          controller: _model.textController2,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController2',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: _model.textController2!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textController2?.clear();
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 22.0,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          validator: _model.textController2Validator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'x5gl27na' /* EMAIL ID   */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFF696969),
                              fontSize: 10.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController3,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController3',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          suffixIcon: _model.textController3!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.textController3?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'v2vr8m1x' /* DATE OF BIRTH */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF949496),
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => TextFormField(
                          controller: _model.textController4,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController4',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: _model.textController4!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textController4?.clear();
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 22.0,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          validator: _model.textController4Validator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final usersUpdateData = createUsersRecordData(
                        email: _model.textController3.text,
                        displayName: _model.textController1.text,
                      );
                      await currentUserReference!.update(usersUpdateData);
                      Navigator.pop(context);
                    },
                    text: FFLocalizations.of(context).getText(
                      'k11vtyig' /* Save Changes */,
                    ),
                    options: FFButtonOptions(
                      width: 160.0,
                      height: 37.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.black,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
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
