import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourLocationCWidget extends StatefulWidget {
  const YourLocationCWidget({Key key}) : super(key: key);

  @override
  _YourLocationCWidgetState createState() => _YourLocationCWidgetState();
}

class _YourLocationCWidgetState extends State<YourLocationCWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 412,
      height: 217,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
            child: Text(
              FFLocalizations.of(context).getText(
                'scmz3hu2' /* Your Location */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lato',
                    color: Color(0xFFB5B5B5),
                    fontSize: 12,
                  ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '7l2w3ajm' /* Samrat Ashok Nagar , xyz colon... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      color: Color(0xFFF1F1F1),
                      fontSize: 12,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 40),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'p4zcwlzg' /* Change */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontSize: 16,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
            child: Text(
              FFLocalizations.of(context).getText(
                'funlh07m' /* Confirm Location */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).primaryColor,
                    fontSize: 16,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(120, 10, 0, 0),
            child: Text(
              FFLocalizations.of(context).getText(
                'gsvju2aw' /* Add Address for this location */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lato',
                    color: Color(0xFFBEBEBE),
                    fontSize: 14,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
