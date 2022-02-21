import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnandStationaryCWidget extends StatefulWidget {
  const AnandStationaryCWidget({Key key}) : super(key: key);

  @override
  _AnandStationaryCWidgetState createState() => _AnandStationaryCWidgetState();
}

class _AnandStationaryCWidgetState extends State<AnandStationaryCWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 105,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF707070),
          width: 0.3,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40, 30, 40, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 30),
                  child: Icon(
                    Icons.store_sharp,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'x6x4b37x' /* ANAND STATIONARY */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                fontSize: 16,
                              ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'jf7vgqqw' /* Samrat Ashok Nagar , xyz colon... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Color(0xFFB5B5B5),
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
