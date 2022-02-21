import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProductsCartCWidget extends StatefulWidget {
  const AllProductsCartCWidget({Key key}) : super(key: key);

  @override
  _AllProductsCartCWidgetState createState() => _AllProductsCartCWidgetState();
}

class _AllProductsCartCWidgetState extends State<AllProductsCartCWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 134,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
              child: Container(
                width: 110,
                height: 110,
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
                      blurRadius: 4,
                      color: Color(0x28000000),
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/Rectangle_245.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 220,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'pu2srkiw' /* Kangaroo HD-10D Stapler */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            fontSize: 12,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'w8jo5523' /* ₹76.50 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xFF707070),
                                width: 0.1,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(3, 1, 1, 3),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'gyuuo25c' /* 1 U */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              width: 89,
                              height: 22,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                borderRadius: BorderRadius.circular(5),
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
                                        10, 0, 2, 0),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      size: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 1, 3, 1),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '5ku8pf9w' /* Add to cart */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            fontSize: 10,
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
