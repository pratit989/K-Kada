import '../components/order_details_c1_widget.dart';
import '../components/order_details_c2_widget.dart';
import '../components/order_details_c3_widget.dart';
import '../components/order_detais_c4_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancellationRequestedWidget extends StatefulWidget {
  const CancellationRequestedWidget({Key key}) : super(key: key);

  @override
  _CancellationRequestedWidgetState createState() =>
      _CancellationRequestedWidgetState();
}

class _CancellationRequestedWidgetState
    extends State<CancellationRequestedWidget> {
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
            padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
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
                            '1seymq8q' /* Cancellation Requested  */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 71,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9E9E9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                            child: Icon(
                              Icons.error_outlined,
                              color: Colors.black,
                              size: 15,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '9gf56t3y' /* Your request for order cancell... */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: Color(0xFF021308),
                                      fontSize: 12,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: OrderDetailsC1Widget(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: OrderDetailsC2Widget(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: OrderDetailsC3Widget(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: OrderDetaisC4Widget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
