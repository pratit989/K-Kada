import '../components/order_details_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DispatchRequestedTWidget extends StatefulWidget {
  const DispatchRequestedTWidget({Key key}) : super(key: key);

  @override
  _DispatchRequestedTWidgetState createState() =>
      _DispatchRequestedTWidgetState();
}

class _DispatchRequestedTWidgetState extends State<DispatchRequestedTWidget> {
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 100, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'f62u3kyb' /* Dispatch Requested */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lato',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  OrderDetailsWidget(
                    orderId: '000000',
                    deliverytType: 'Home Delivery',
                    orderTotal: 127,
                    date: getCurrentTimestamp,
                  ),
                  OrderDetailsWidget(
                    orderId: '000000',
                    deliverytType: 'Home Delivery',
                    orderTotal: 127,
                    date: getCurrentTimestamp,
                  ),
                  OrderDetailsWidget(
                    orderId: '000000',
                    deliverytType: 'Home Delivery',
                    orderTotal: 127,
                    date: getCurrentTimestamp,
                  ),
                  OrderDetailsWidget(
                    orderId: '000000',
                    deliverytType: 'Home Delivery',
                    orderTotal: 127,
                    date: getCurrentTimestamp,
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
