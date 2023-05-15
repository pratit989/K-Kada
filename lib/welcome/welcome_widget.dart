import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/get_started/get_started_widget.dart';
import '/welcome_c/welcome_c_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcome_model.dart';
export 'welcome_model.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  late WelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/Mask_Group_10.png',
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '07hl3mlx' /* Continue as? */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: FFButtonWidget(
                onPressed: () async {
                  FFAppState().update(() {
                    FFAppState().userType = 'Vendor';
                  });
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GetStartedWidget(),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'vj3x08oo' /* Vendor */,
                ),
                options: FFButtonOptions(
                  width: 240.0,
                  height: 43.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).secondary,
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: FFButtonWidget(
                onPressed: () async {
                  FFAppState().update(() {
                    FFAppState().userType = 'Transporter';
                  });
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GetStartedWidget(),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'vofml9x7' /* Transporter */,
                ),
                options: FFButtonOptions(
                  width: 240.0,
                  height: 43.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).secondary,
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
            FFButtonWidget(
              onPressed: () async {
                FFAppState().update(() {
                  FFAppState().userType = 'Customer';
                });
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeCWidget(),
                  ),
                );
              },
              text: FFLocalizations.of(context).getText(
                'tqtcz0jg' /* Customer */,
              ),
              options: FFButtonOptions(
                width: 240.0,
                height: 43.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Lato',
                      color: FlutterFlowTheme.of(context).secondary,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 20.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'k57zvsn4' /* Select a Language */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    setAppLanguage(context, 'en');
                  },
                  text: FFLocalizations.of(context).getText(
                    'gof8z9f4' /* English */,
                  ),
                  options: FFButtonOptions(
                    width: 130.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    setAppLanguage(context, 'ml');
                  },
                  text: FFLocalizations.of(context).getText(
                    'xofartp2' /* Malyalam */,
                  ),
                  options: FFButtonOptions(
                    width: 130.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).secondary,
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
          ],
        ),
      ),
    );
  }
}
