import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'products_model.dart';
export 'products_model.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  late ProductsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsModel());
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
      height: 134.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Rectangle_245.png',
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x28000000),
                      offset: Offset(0.0, 3.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  'assets/images/Stapler3.png',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              height: 120.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'mfb5dov9' /* Kangaroo HD-10D Stapler */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 12.0,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'auw54eby' /* ₹76.50 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'jy02xija' /* Stock Availability - */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  fontSize: 10.0,
                                ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.07,
                            height: MediaQuery.of(context).size.height * 0.02,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Color(0xFF707070),
                                width: 0.1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  3.0, 1.0, 3.0, 1.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ch6v9fiv' /* 98 Pcs */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
