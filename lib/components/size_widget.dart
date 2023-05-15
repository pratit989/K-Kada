import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'size_model.dart';
export 'size_model.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({Key? key}) : super(key: key);

  @override
  _SizeWidgetState createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  late SizeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SizeModel());
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
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'n38227ny' /* Sizes */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xD9000000),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Container(
              width: 320.0,
              height: 63.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiary,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 43.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFEEC643),
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 0.5,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    's1zvbskf' /* S */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 43.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFEEC643),
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 0.5,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'lpx2w953' /* M */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 43.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFEEC643),
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 0.5,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'lk6gdzif' /* L */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 43.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFEEC643),
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 0.5,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '3bu2f8me' /* XL */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 43.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFEEC643),
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 0.5,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'j3965pap' /* XXL */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
