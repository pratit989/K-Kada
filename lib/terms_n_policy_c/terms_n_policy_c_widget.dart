import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsNPolicyCWidget extends StatefulWidget {
  const TermsNPolicyCWidget({Key key}) : super(key: key);

  @override
  _TermsNPolicyCWidgetState createState() => _TermsNPolicyCWidgetState();
}

class _TermsNPolicyCWidgetState extends State<TermsNPolicyCWidget> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '9ntrzjm4' /* Refund Terms & Policy */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '15tmkvyt' /* Products purchased can be retu... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF000702),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'gebv4tja' /* ●   The goods are in the origi... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF686868),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qt41b2f7' /* ●   The product has not been u... */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF686868),
                          fontSize: 12,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ji85kqt5' /* ●   The product is accompanied... */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF686868),
                          fontSize: 12,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'xihj0cq0' /* The following types ofproducts... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF000702),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '36rr26q8' /* ●   Refrigerated items */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF686868),
                          fontSize: 12,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yi8t0orp' /* ●   Seasonal and Festive items... */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF686868),
                          fontSize: 12,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'uqgxirfk' /* ●   Personal utility items suc... */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF686868),
                          fontSize: 12,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'd6jpr5eq' /* ●   Fresh food and non-food it... */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF686868),
                          fontSize: 12,
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
