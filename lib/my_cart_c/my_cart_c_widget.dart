import '../components/all_products_cart_c_widget.dart';
import '../components/grand_total_of_mycart_c_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartCWidget extends StatefulWidget {
  const MyCartCWidget({Key key}) : super(key: key);

  @override
  _MyCartCWidgetState createState() => _MyCartCWidgetState();
}

class _MyCartCWidgetState extends State<MyCartCWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        size: 30,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'urbt2eem' /* My Cart */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: AllProductsCartCWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 320,
                    height: 43,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color(0x14000000),
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          buttonSize: 30,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          icon: FaIcon(
                            FontAwesomeIcons.percent,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 15,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'lo2396zq' /* Apply Coupon */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lato',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 60,
                          borderWidth: 0.5,
                          buttonSize: 30,
                          fillColor: FlutterFlowTheme.of(context).primaryColor,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 15,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: GrandTotalOfMycartCWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      '7fsfohco' /* PROCEED */,
                    ),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 320,
                      height: 36,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lato',
                                color: Color(0xFFF1F1F1),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
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
