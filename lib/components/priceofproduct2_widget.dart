import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'priceofproduct2_model.dart';
export 'priceofproduct2_model.dart';

class Priceofproduct2Widget extends StatefulWidget {
  const Priceofproduct2Widget({Key? key}) : super(key: key);

  @override
  _Priceofproduct2WidgetState createState() => _Priceofproduct2WidgetState();
}

class _Priceofproduct2WidgetState extends State<Priceofproduct2Widget> {
  late Priceofproduct2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Priceofproduct2Model());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 40.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '1d3ion7w' /* Enter Price for your Product */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xD9000000),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 70.0, 0.0),
                    child: Container(
                      width: 123.0,
                      height: 28.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Color(0xFF707070),
                          width: 0.5,
                        ),
                      ),
                      child: TextFormField(
                        controller: _model.textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            '1stl1qu2' /* Enter Variant */,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFFBEBEBE),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                        textAlign: TextAlign.center,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'nyc51eqa' /* ₹ */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF707070),
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                  Container(
                    width: 92.0,
                    height: 28.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF707070),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: _model.textController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            color: Color(0xFFBEBEBE),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 25.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'z8ap2h12' /* eg. 1 unit, 1kg, pack of 5, 20... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF949496),
                        fontSize: 8.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 70.0, 0.0),
                    child: Container(
                      width: 123.0,
                      height: 28.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Color(0xFF707070),
                          width: 0.5,
                        ),
                      ),
                      child: TextFormField(
                        controller: _model.textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'ieuy35bg' /* Enter Variant */,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFFBEBEBE),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                        textAlign: TextAlign.center,
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'zh4mg991' /* ₹ */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF707070),
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                  Container(
                    width: 92.0,
                    height: 28.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF707070),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: _model.textController4,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            color: Color(0xFFBEBEBE),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController4Validator.asValidator(context),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 30.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '6cnanj5b' /* eg. 1 unit, 1kg, pack of 5, 20... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF949496),
                        fontSize: 8.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  'rx8wwz54' /* Add Variant */,
                ),
                icon: Icon(
                  Icons.add_circle_outline,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: 160.0,
                  height: 37.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lato',
                        color: Colors.white,
                        fontSize: 12.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
