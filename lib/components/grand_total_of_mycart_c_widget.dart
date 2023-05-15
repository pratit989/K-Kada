import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'grand_total_of_mycart_c_model.dart';
export 'grand_total_of_mycart_c_model.dart';

class GrandTotalOfMycartCWidget extends StatefulWidget {
  const GrandTotalOfMycartCWidget({Key? key}) : super(key: key);

  @override
  _GrandTotalOfMycartCWidgetState createState() =>
      _GrandTotalOfMycartCWidgetState();
}

class _GrandTotalOfMycartCWidgetState extends State<GrandTotalOfMycartCWidget> {
  late GrandTotalOfMycartCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GrandTotalOfMycartCModel());
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
      height: 191.0,
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
        border: Border.all(
          color: Color(0xFF707070),
          width: 0.1,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'pl29p18u' /* Sub Total */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFF183C28),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'zf1ypcct' /* Discount */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFF183C28),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'dx9n1gf6' /* Taxes */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFF183C28),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '7lmgdem7' /* Delivery Charges */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFF183C28),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '8dcrki5f' /* Grand Total */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFF183C28),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'pniaw591' /* : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '08xfvasc' /* : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'jt117qa6' /* : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'yqy6c5e6' /* : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '7m3w2s2i' /* : */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              fontSize: 1.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'wk6dmpca' /* : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fil75i6a' /* ₹ 76.50 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'pkd6o3zf' /* ₹ 0.00 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '10sm85tn' /* ₹ 10.50 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'tinc7ljx' /* ₹ 40.00 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'r9oc73y4' /* ₹127.00 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF183C28),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
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
