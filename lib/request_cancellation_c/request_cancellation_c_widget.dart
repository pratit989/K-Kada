import '../components/check_list_order_details_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestCancellationCWidget extends StatefulWidget {
  const RequestCancellationCWidget({Key key}) : super(key: key);

  @override
  _RequestCancellationCWidgetState createState() =>
      _RequestCancellationCWidgetState();
}

class _RequestCancellationCWidgetState
    extends State<RequestCancellationCWidget> {
  String dropDownValue;
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
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          size: 30,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'qj0gm7c7' /* Request Cancellation */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 30),
                        child: Icon(
                          Icons.error_outlined,
                          color: Color(0xFF686868),
                          size: 13,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'z0cj5u5q' /* Please refuse the order if the... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Color(0xFF949496),
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: CheckListOrderDetailsWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: FlutterFlowDropDown(
                    options: [
                      FFLocalizations.of(context).getText(
                        '5azp3qhh' /* Order created by mistake */,
                      ),
                      FFLocalizations.of(context).getText(
                        'il0abzd7' /* Order would not arrive on time */,
                      ),
                      FFLocalizations.of(context).getText(
                        'slirmos9' /* Shipping cost too high */,
                      ),
                      FFLocalizations.of(context).getText(
                        '6eun9ngw' /* Prices too high */,
                      ),
                      FFLocalizations.of(context).getText(
                        'jm3x6gvu' /* Need to change the shipping ad... */,
                      ),
                      FFLocalizations.of(context).getText(
                        'ybx99kd4' /* Need to change payment method */,
                      ),
                      FFLocalizations.of(context).getText(
                        '95mvfkvi' /* Other */,
                      )
                    ],
                    onChanged: (val) => setState(() => dropDownValue = val),
                    width: 320,
                    height: 47,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                          fontSize: 16,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'mht9mbst' /* Cancellation reason (optional) */,
                    ),
                    fillColor: Colors.white,
                    elevation: 2,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    borderRadius: 0,
                    margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                    hidesUnderline: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'wc5rak38' /* Request Cancellation */,
                    ),
                    options: FFButtonOptions(
                      width: 181,
                      height: 37,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
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
