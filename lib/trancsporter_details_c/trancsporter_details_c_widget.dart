import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trancsporter_details_c_model.dart';
export 'trancsporter_details_c_model.dart';

class TrancsporterDetailsCWidget extends StatefulWidget {
  const TrancsporterDetailsCWidget({Key? key}) : super(key: key);

  @override
  _TrancsporterDetailsCWidgetState createState() =>
      _TrancsporterDetailsCWidgetState();
}

class _TrancsporterDetailsCWidgetState
    extends State<TrancsporterDetailsCWidget> {
  late TrancsporterDetailsCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrancsporterDetailsCModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 30.0,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'dj7wb8n7' /* Transporter Details */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'okn26u0i' /* RAMESH SHETTY */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 10.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'sew0i552' /* TRANSPORTER'S UIN */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFF949496),
                    ),
                  ),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yvc3qg1o' /* K54584H454 */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          lineHeight: 2.5,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 10.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'p2hejjgf' /* TRANSPORTER'S MOBILE NO */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFF949496),
                    ),
                  ),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ujm6z79a' /* 9565487521 */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
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
