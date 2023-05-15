import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_products_cart_c_model.dart';
export 'all_products_cart_c_model.dart';

class AllProductsCartCWidget extends StatefulWidget {
  const AllProductsCartCWidget({Key? key}) : super(key: key);

  @override
  _AllProductsCartCWidgetState createState() => _AllProductsCartCWidgetState();
}

class _AllProductsCartCWidgetState extends State<AllProductsCartCWidget> {
  late AllProductsCartCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllProductsCartCModel());
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
                width: 110.0,
                height: 110.0,
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
                  'assets/images/Stapler1.png',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 220.0,
              height: 200.0,
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
                        'pu2srkiw' /* Kangaroo HD-10D Stapler */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 12.0,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'w8jo5523' /* ₹76.50 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      width: 180.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50.0,
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
                                  3.0, 1.0, 1.0, 3.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'gyuuo25c' /* 1 U */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Container(
                              width: 89.0,
                              height: 22.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondary,
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                  color: Color(0xFF707070),
                                  width: 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 2.0, 0.0),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      size: 15.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 3.0, 1.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '5ku8pf9w' /* Add to cart */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
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
            ),
          ],
        ),
      ),
    );
  }
}
