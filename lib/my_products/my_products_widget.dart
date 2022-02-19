import '../components/add_new_product_widget.dart';
import '../components/products_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../select_category/select_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProductsWidget extends StatefulWidget {
  const MyProductsWidget({Key key}) : super(key: key);

  @override
  _MyProductsWidgetState createState() => _MyProductsWidgetState();
}

class _MyProductsWidgetState extends State<MyProductsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Stack(
        alignment: AlignmentDirectional(0, 1),
        children: [
          Align(
            alignment: AlignmentDirectional(4.24, -32.03),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_sharp,
                              color: Color(0xFF183C28),
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'zp104smn' /* My Products */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Color(0x19000000),
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 20, 0),
                            child: Icon(
                              Icons.search,
                              color: Color(0xFF9F9F9F),
                              size: 24,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'wod930mb' /* Search Product */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF9F9F9F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        ProductsWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectCategoryWidget(),
                ),
              );
            },
            child: AddNewProductWidget(
              text: 'Add New Product',
              height: 135,
            ),
          ),
        ],
      ),
    );
  }
}
