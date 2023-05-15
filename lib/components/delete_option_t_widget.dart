import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_option_t_model.dart';
export 'delete_option_t_model.dart';

class DeleteOptionTWidget extends StatefulWidget {
  const DeleteOptionTWidget({Key? key}) : super(key: key);

  @override
  _DeleteOptionTWidgetState createState() => _DeleteOptionTWidgetState();
}

class _DeleteOptionTWidgetState extends State<DeleteOptionTWidget> {
  late DeleteOptionTModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteOptionTModel());
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
        color: Color(0xDE000000),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: 320.0,
          height: 157.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'y0hyx0ku' /* Are You sure you want to delet... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 20.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'pn39y877' /* Vehicle will be deleted foreve... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontSize: 12.0,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'g80fsmtb' /* NO */,
                          ),
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 30.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lato',
                                  color: Colors.white,
                                  fontSize: 9.0,
                                  fontWeight: FontWeight.bold,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'l6xbn5lk' /* YES */,
                        ),
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 30.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Color(0xFF707070),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
