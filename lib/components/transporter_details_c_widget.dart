import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transporter_details_c_model.dart';
export 'transporter_details_c_model.dart';

class TransporterDetailsCWidget extends StatefulWidget {
  const TransporterDetailsCWidget({Key? key}) : super(key: key);

  @override
  _TransporterDetailsCWidgetState createState() =>
      _TransporterDetailsCWidgetState();
}

class _TransporterDetailsCWidgetState extends State<TransporterDetailsCWidget> {
  late TransporterDetailsCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransporterDetailsCModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 421.0,
      height: 145.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Ramesh.png',
            width: 52.0,
            height: 52.0,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 50.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'c1x9uk7n' /* Ramesh Shetty */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).tertiary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'eu4363d3' /* K54584H454 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFA5A5A5),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'fmii1rv7' /* Transporter Details */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lato',
                  color: FlutterFlowTheme.of(context).primary,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
