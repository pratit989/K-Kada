import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_account_c_model.dart';
export 'my_account_c_model.dart';

class MyAccountCWidget extends StatefulWidget {
  const MyAccountCWidget({Key? key}) : super(key: key);

  @override
  _MyAccountCWidgetState createState() => _MyAccountCWidgetState();
}

class _MyAccountCWidgetState extends State<MyAccountCWidget> {
  late MyAccountCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAccountCModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Color(0xFF183C28),
                        size: 30.0,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'zfhk6gc4' /* My Account */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 20.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'dzrks6b4' /* FIRST NAME */,
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
                  child: TextFormField(
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
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 20.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'a27yu0ft' /* LAST NAME */,
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
                  child: TextFormField(
                    controller: _model.textController2,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController2',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
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
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 20.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'ft2gc6dj' /* MOBILE NUMBER */,
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
                    validator:
                        _model.textController3Validator.asValidator(context),
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
                          '0d04eulv' /* EMAIL ID   */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xDA000000),
                              fontWeight: FontWeight.w500,
                            ),
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
                  child: TextFormField(
                    controller: _model.textController4,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController4',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
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
                    validator:
                        _model.textController4Validator.asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'jabo45bg' /* Save Changes */,
                  ),
                  options: FFButtonOptions(
                    width: 160.0,
                    height: 37.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
    );
  }
}
