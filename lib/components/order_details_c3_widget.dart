import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsC3Widget extends StatefulWidget {
  const OrderDetailsC3Widget({Key key}) : super(key: key);

  @override
  _OrderDetailsC3WidgetState createState() => _OrderDetailsC3WidgetState();
}

class _OrderDetailsC3WidgetState extends State<OrderDetailsC3Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 118,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryColor,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'maadnszm' /* Shipping Address */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lato',
                    color: Color(0xFF949496),
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'qi8t0iqw' /* Flat no. 1710 , Manav Enclave,... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
