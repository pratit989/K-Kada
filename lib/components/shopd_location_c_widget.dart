import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopdLocationCWidget extends StatefulWidget {
  const ShopdLocationCWidget({Key key}) : super(key: key);

  @override
  _ShopdLocationCWidgetState createState() => _ShopdLocationCWidgetState();
}

class _ShopdLocationCWidgetState extends State<ShopdLocationCWidget> {
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
                    color: FlutterFlowTheme.of(context).tertiaryColor,
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
                            '871pg1me' /* ANAND STATIONARY */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 16,
                              ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '8rfvibkb' /* Samrat Ashok Nagar , xyz colon... */,
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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 50,
                      fillColor: FlutterFlowTheme.of(context).primaryColor,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        size: 25,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'wq3fzewb' /* Enter Shop */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Color(0xD9FFFFFF),
                              fontSize: 10,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
