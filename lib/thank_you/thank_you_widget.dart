import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile_status/profile_status_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'thank_you_model.dart';
export 'thank_you_model.dart';

class ThankYouWidget extends StatefulWidget {
  const ThankYouWidget({Key? key}) : super(key: key);

  @override
  _ThankYouWidgetState createState() => _ThankYouWidgetState();
}

class _ThankYouWidgetState extends State<ThankYouWidget> {
  late ThankYouModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThankYouModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      't2g0clqr' /* Thank you! */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_rhchxpix.json',
                width: 150.0,
                height: 130.0,
                fit: BoxFit.contain,
                frameRate: FrameRate(20.0),
                repeat: false,
                animate: true,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'k849y994' /* Verification Pending */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'lymkql9f' /* You will be contacted by the a... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF949496),
                        fontSize: 14.0,
                      ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileStatusWidget(),
                      ),
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'qy7szyy9' /* Track Status */,
                  ),
                  options: FFButtonOptions(
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF183C28),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
