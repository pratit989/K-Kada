import '/components/add_new_product_widget.dart';
import '/components/products_widget.dart';
import '/edit_product_details/edit_product_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/select_category/select_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_products_model.dart';
export 'my_products_model.dart';

class MyProductsWidget extends StatefulWidget {
  const MyProductsWidget({Key? key}) : super(key: key);

  @override
  _MyProductsWidgetState createState() => _MyProductsWidgetState();
}

class _MyProductsWidgetState extends State<MyProductsWidget> {
  late MyProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProductsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).secondary,
            size: 30.0,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'l56cfk4k' /* My Product */,
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Lato',
                color: FlutterFlowTheme.of(context).secondary,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Stack(
        alignment: AlignmentDirectional(0.0, 1.0),
        children: [
          Align(
            alignment: AlignmentDirectional(4.24, -32.03),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color(0x19000000),
                            offset: Offset(0.0, 2.0),
                            spreadRadius: 0.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 20.0, 0.0),
                            child: Icon(
                              Icons.search,
                              color: Color(0xFF9F9F9F),
                              size: 24.0,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'wod930mb' /* Search Product */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF9F9F9F),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditProductDetailsWidget(),
                              ),
                            );
                          },
                          child: wrapWithModel(
                            model: _model.productsModel,
                            updateCallback: () => setState(() {}),
                            child: ProductsWidget(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectCategoryWidget(),
                ),
              );
            },
            child: wrapWithModel(
              model: _model.addNewProductModel,
              updateCallback: () => setState(() {}),
              child: AddNewProductWidget(
                text: 'Add New Product',
                height: 135,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
