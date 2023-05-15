import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'colors_available_c_model.dart';
export 'colors_available_c_model.dart';

class ColorsAvailableCWidget extends StatefulWidget {
  const ColorsAvailableCWidget({Key? key}) : super(key: key);

  @override
  _ColorsAvailableCWidgetState createState() => _ColorsAvailableCWidgetState();
}

class _ColorsAvailableCWidgetState extends State<ColorsAvailableCWidget> {
  late ColorsAvailableCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorsAvailableCModel());
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
      width: 120.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                '0egtt5qf' /* Colors Available */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.brightness_1,
                      color: Color(0xFF399FB3),
                      size: 30.0,
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.brightness_1,
                      color: Color(0xFFC2BEB3),
                      size: 30.0,
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.brightness_1,
                      color: Color(0xFFFF2A05),
                      size: 30.0,
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
