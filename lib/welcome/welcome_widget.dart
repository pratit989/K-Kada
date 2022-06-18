import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../get_started/get_started_widget.dart';
import '../welcome_c/welcome_c_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/Mask_Group_10.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
              child: Text(
                FFLocalizations.of(context).getText(
                  '07hl3mlx' /* Continue as? */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => FFAppState().userType = 'Vendor');
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
                  width: 240,
                  height: 43,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).secondaryColor,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => FFAppState().userType = 'Transporter');
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
                  width: 240,
                  height: 43,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).secondaryColor,
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
            FFButtonWidget(
              onPressed: () async {
                setState(() => FFAppState().userType = 'Customer');
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
                width: 240,
                height: 43,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lato',
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 20),
              child: Text(
                FFLocalizations.of(context).getText(
                  'k57zvsn4' /* Select a Language */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      fontSize: 18,
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
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).secondaryColor,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
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
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).secondaryColor,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
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
