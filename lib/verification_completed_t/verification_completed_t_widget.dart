import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verification_completed_t_model.dart';
export 'verification_completed_t_model.dart';

class VerificationCompletedTWidget extends StatefulWidget {
  const VerificationCompletedTWidget({Key? key}) : super(key: key);

  @override
  _VerificationCompletedTWidgetState createState() =>
      _VerificationCompletedTWidgetState();
}

class _VerificationCompletedTWidgetState
    extends State<VerificationCompletedTWidget> {
  late VerificationCompletedTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificationCompletedTModel());
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
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: Icon(
                    Icons.check_circle_sharp,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 100.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'g9c8116l' /* Verification
Completed! */
                      ,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xDA000000),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 25.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
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
