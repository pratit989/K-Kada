import '/components/all_products_cart_c_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_products_c_model.dart';
export 'all_products_c_model.dart';

class AllProductsCWidget extends StatefulWidget {
  const AllProductsCWidget({Key? key}) : super(key: key);

  @override
  _AllProductsCWidgetState createState() => _AllProductsCWidgetState();
}

class _AllProductsCWidgetState extends State<AllProductsCWidget> {
  late AllProductsCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllProductsCModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'iuud1jcq' /* All Products */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
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
                            size: 20.0,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'b9me3nj4' /* Search product code */,
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
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: wrapWithModel(
                          model: _model.allProductsCartCModel1,
                          updateCallback: () => setState(() {}),
                          child: AllProductsCartCWidget(),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: wrapWithModel(
                          model: _model.allProductsCartCModel2,
                          updateCallback: () => setState(() {}),
                          child: AllProductsCartCWidget(),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.allProductsCartCModel3,
                        updateCallback: () => setState(() {}),
                        child: AllProductsCartCWidget(),
                      ),
                      wrapWithModel(
                        model: _model.allProductsCartCModel4,
                        updateCallback: () => setState(() {}),
                        child: AllProductsCartCWidget(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
