import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_my_store_model.dart';
export 'about_my_store_model.dart';

class AboutMyStoreWidget extends StatefulWidget {
  const AboutMyStoreWidget({Key? key}) : super(key: key);

  @override
  _AboutMyStoreWidgetState createState() => _AboutMyStoreWidgetState();
}

class _AboutMyStoreWidgetState extends State<AboutMyStoreWidget> {
  late AboutMyStoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutMyStoreModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Color(0xFF183C28),
                            size: 30.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 100.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '3hd18o4j' /* About My Store */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 187.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x2A000000),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'assets/images/ShopPhoto.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 50.0, 0.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'yl1t6rgj' /* STORE NAME */,
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 73.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController1,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textController1',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: FFLocalizations.of(context).getText(
                          '2txzlwfw' /* Enter Store Name */,
                        ),
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFF949496),
                                  fontSize: 16.0,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF183C28),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Color(0x00FFFFFF),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
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
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.start,
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 50.0, 0.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'f33llvhz' /* ABOUT STORE */,
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 73.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController2,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textController2',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: FFLocalizations.of(context).getText(
                          '5qdsr4k7' /* Short Description about sharp */,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF183C28),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Color(0x00FFFFFF),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
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
                            fontFamily: 'Open Sans',
                            color: Color(0xFF949496),
                            fontSize: 16.0,
                          ),
                      textAlign: TextAlign.start,
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      '1htpgkzy' /* Save */,
                    ),
                    options: FFButtonOptions(
                      width: 160.0,
                      height: 37.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
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
