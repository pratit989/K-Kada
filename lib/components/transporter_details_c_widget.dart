import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransporterDetailsCWidget extends StatefulWidget {
  const TransporterDetailsCWidget({Key key}) : super(key: key);

  @override
  _TransporterDetailsCWidgetState createState() =>
      _TransporterDetailsCWidgetState();
}

class _TransporterDetailsCWidgetState extends State<TransporterDetailsCWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 421,
      height: 145,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Ramesh.png',
            width: 52,
            height: 52,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 50, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'c1x9uk7n' /* Ramesh Shetty */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'eu4363d3' /* K54584H454 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFA5A5A5),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'fmii1rv7' /* Transporter Details */,
            ),
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Lato',
                  color: FlutterFlowTheme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
