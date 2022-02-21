import '../components/order_details_c1_widget.dart';
import '../components/order_details_c2_widget.dart';
import '../components/order_details_c3_widget.dart';
import '../components/order_detais_c4_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsCPageWidget extends StatefulWidget {
  const OrderDetailsCPageWidget({Key key}) : super(key: key);

  @override
  _OrderDetailsCPageWidgetState createState() =>
      _OrderDetailsCPageWidgetState();
}

class _OrderDetailsCPageWidgetState extends State<OrderDetailsCPageWidget> {
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
                          '5j5htbv2' /* Order Details */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: OrderDetailsC1Widget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: OrderDetailsC2Widget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: OrderDetailsC3Widget(),
                ),
                OrderDetaisC4Widget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
