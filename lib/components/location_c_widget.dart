import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'location_c_model.dart';
export 'location_c_model.dart';

class LocationCWidget extends StatefulWidget {
  const LocationCWidget({Key? key}) : super(key: key);

  @override
  _LocationCWidgetState createState() => _LocationCWidgetState();
}

class _LocationCWidgetState extends State<LocationCWidget> {
  late LocationCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationCModel());
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
      width: 412.0,
      height: 217.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'aabd8you' /* Samrat Ashok Nagar , xyz colon... */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    color: Color(0xFFB5B5B5),
                    fontSize: 12.0,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'dt0rgwvb' /* Confirm Location */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).primary,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
