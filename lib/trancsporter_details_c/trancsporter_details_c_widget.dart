import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrancsporterDetailsCWidget extends StatefulWidget {
  const TrancsporterDetailsCWidget({Key key}) : super(key: key);

  @override
  _TrancsporterDetailsCWidgetState createState() =>
      _TrancsporterDetailsCWidgetState();
}

class _TrancsporterDetailsCWidgetState
    extends State<TrancsporterDetailsCWidget> {
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
                          'dj7wb8n7' /* Transporter Details */,
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
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: Image.asset(
                        'assets/images/Rameshshetty.png',
                      ).image,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'okn26u0i' /* RAMESH SHETTY */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 10),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'sew0i552' /* TRANSPORTER'S UIN */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 320,
                  height: 41,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF949496),
                    ),
                  ),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yvc3qg1o' /* K54584H454 */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          lineHeight: 2.5,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 10),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'p2hejjgf' /* TRANSPORTER'S MOBILE NO */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 320,
                  height: 41,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF949496),
                    ),
                  ),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ujm6z79a' /* 9565487521 */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          lineHeight: 2.5,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
