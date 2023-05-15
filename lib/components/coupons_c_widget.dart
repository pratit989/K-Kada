import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'coupons_c_model.dart';
export 'coupons_c_model.dart';

class CouponsCWidget extends StatefulWidget {
  const CouponsCWidget({
    Key? key,
    this.selectionVisibility,
  }) : super(key: key);

  final bool? selectionVisibility;

  @override
  _CouponsCWidgetState createState() => _CouponsCWidgetState();
}

class _CouponsCWidgetState extends State<CouponsCWidget> {
  late CouponsCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CouponsCModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 134.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
          boxShadow: [
            BoxShadow(
              blurRadius: 8.0,
              color: Color(0x15000000),
              offset: Offset(2.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            '9rg5qhg6' /* STAT40 */,
                          ),
                          options: FFButtonOptions(
                            width: 160.0,
                            height: 37.0,
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
                                  fontSize: 12.0,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'awur2kap' /* 40% Off upto Rs.100 on orders ... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                          fontSize: 12.0,
                        ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'syexe8jt' /* Get 40% Off */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (widget.selectionVisibility ?? true)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '2o6wen9c' /* SELECT */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
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
