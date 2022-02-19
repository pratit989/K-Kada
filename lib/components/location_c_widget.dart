import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationCWidget extends StatefulWidget {
  const LocationCWidget({Key key}) : super(key: key);

  @override
  _LocationCWidgetState createState() => _LocationCWidgetState();
}

class _LocationCWidgetState extends State<LocationCWidget> {
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
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              FFLocalizations.of(context).getText(
                'aabd8you' /* Samrat Ashok Nagar , xyz colon... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lato',
                    color: Color(0xFFB5B5B5),
                    fontSize: 12,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Text(
              FFLocalizations.of(context).getText(
                'dt0rgwvb' /* Confirm Location */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
