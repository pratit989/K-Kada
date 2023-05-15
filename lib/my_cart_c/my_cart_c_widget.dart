import '/components/all_products_cart_c_widget.dart';
import '/components/grand_total_of_mycart_c_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_cart_c_model.dart';
export 'my_cart_c_model.dart';

class MyCartCWidget extends StatefulWidget {
  const MyCartCWidget({Key? key}) : super(key: key);

  @override
  _MyCartCWidgetState createState() => _MyCartCWidgetState();
}

class _MyCartCWidgetState extends State<MyCartCWidget> {
  late MyCartCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyCartCModel());
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
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'urbt2eem' /* My Cart */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.allProductsCartCModel,
                    updateCallback: () => setState(() {}),
                    child: AllProductsCartCWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 320.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8.0,
                          color: Color(0x14000000),
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          buttonSize: 30.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: FaIcon(
                            FontAwesomeIcons.percent,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 15.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 50.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'lo2396zq' /* Apply Coupon */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 60.0,
                          borderWidth: 0.5,
                          buttonSize: 30.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 15.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.grandTotalOfMycartCModel,
                    updateCallback: () => setState(() {}),
                    child: GrandTotalOfMycartCWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      '7fsfohco' /* PROCEED */,
                    ),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 320.0,
                      height: 36.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: Color(0xFFF1F1F1),
                                fontSize: 14.0,
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
        ),
      ),
    );
  }
}
