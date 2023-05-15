import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shopd_location_c_model.dart';
export 'shopd_location_c_model.dart';

class ShopdLocationCWidget extends StatefulWidget {
  const ShopdLocationCWidget({Key? key}) : super(key: key);

  @override
  _ShopdLocationCWidgetState createState() => _ShopdLocationCWidgetState();
}

class _ShopdLocationCWidgetState extends State<ShopdLocationCWidget> {
  late ShopdLocationCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopdLocationCModel());
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
                    color: FlutterFlowTheme.of(context).tertiary,
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
                            '871pg1me' /* ANAND STATIONARY */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontSize: 16.0,
                              ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '8rfvibkb' /* Samrat Ashok Nagar , xyz colon... */,
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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 25.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'wq3fzewb' /* Enter Shop */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xD9FFFFFF),
                              fontSize: 10.0,
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
