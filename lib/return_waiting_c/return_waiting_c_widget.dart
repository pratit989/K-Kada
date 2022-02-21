import '../components/loader_c_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReturnWaitingCWidget extends StatefulWidget {
  const ReturnWaitingCWidget({Key key}) : super(key: key);

  @override
  _ReturnWaitingCWidgetState createState() => _ReturnWaitingCWidgetState();
}

class _ReturnWaitingCWidgetState extends State<ReturnWaitingCWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(100, 180, 100, 0),
                    child: LoaderCWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                  child: Text(
                    'Your Return/Replace Request\n is waiting for Approval',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You can wait or ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF949496),
                            fontSize: 12,
                          ),
                    ),
                    Text(
                      'check the status ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontSize: 12,
                          ),
                    ),
                    Text(
                      'of your request',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF949496),
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Continue Shopping',
                    options: FFButtonOptions(
                      width: 181,
                      height: 36,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 200),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Cancel Return',
                    options: FFButtonOptions(
                      width: 181,
                      height: 36,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                      borderSide: BorderSide(
                        color: Color(0xFF707070),
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
