import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorsAvailableCWidget extends StatefulWidget {
  const ColorsAvailableCWidget({Key key}) : super(key: key);

  @override
  _ColorsAvailableCWidgetState createState() => _ColorsAvailableCWidgetState();
}

class _ColorsAvailableCWidgetState extends State<ColorsAvailableCWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 100,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                '0egtt5qf' /* Colors Available */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lato',
                    fontSize: 12,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.brightness_1,
                      color: Color(0xFF399FB3),
                      size: 30,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.brightness_1,
                      color: Color(0xFFC2BEB3),
                      size: 30,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.brightness_1,
                      color: Color(0xFFFF2A05),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
