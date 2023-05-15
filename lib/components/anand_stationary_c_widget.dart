import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'anand_stationary_c_model.dart';
export 'anand_stationary_c_model.dart';

class AnandStationaryCWidget extends StatefulWidget {
  const AnandStationaryCWidget({Key? key}) : super(key: key);

  @override
  _AnandStationaryCWidgetState createState() => _AnandStationaryCWidgetState();
}

class _AnandStationaryCWidgetState extends State<AnandStationaryCWidget> {
  late AnandStationaryCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnandStationaryCModel());
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
      width: 320.0,
      height: 105.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color(0xFF707070),
          width: 0.3,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 30.0, 40.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 30.0),
                  child: Icon(
                    Icons.store_sharp,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 25.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'x6x4b37x' /* ANAND STATIONARY */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 16.0,
                              ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'jf7vgqqw' /* Samrat Ashok Nagar , xyz colon... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xFFB5B5B5),
                              fontSize: 12.0,
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
