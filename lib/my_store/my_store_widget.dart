import '/components/account_switcher_widget.dart';
import '/components/my_account_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/my_offers/my_offers_widget.dart';
import '/my_products/my_products_widget.dart';
import '/order_types/order_types_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_store_model.dart';
export 'my_store_model.dart';

class MyStoreWidget extends StatefulWidget {
  const MyStoreWidget({Key? key}) : super(key: key);

  @override
  _MyStoreWidgetState createState() => _MyStoreWidgetState();
}

class _MyStoreWidgetState extends State<MyStoreWidget> {
  late MyStoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyStoreModel());
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          barrierColor: Color(0x00000000),
                          context: context,
                          builder: (bottomSheetContext) {
                            return Padding(
                              padding:
                                  MediaQuery.of(bottomSheetContext).viewInsets,
                              child: AccountSwitcherWidget(),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: Icon(
                              Icons.account_circle,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 2.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'x5k0grl6' /* Vendor */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF183C28),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Color(0xDF000000),
                          barrierColor: Color(0x00000000),
                          context: context,
                          builder: (bottomSheetContext) {
                            return Padding(
                              padding:
                                  MediaQuery.of(bottomSheetContext).viewInsets,
                              child: MyAccountWidget(),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      child: Icon(
                        Icons.menu_sharp,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 35.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'o68tiyhb' /* MY STORE */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF183C28),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyProductsWidget(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Group_955.png',
                    width: MediaQuery.of(context).size.width * 0.65,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyOffersWidget(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Group_956.png',
                    width: MediaQuery.of(context).size.width * 0.65,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Color(0x29000000),
                      offset: Offset(0.0, 2.0),
                      spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderTypesWidget(),
                      ),
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'gawo7j1i' /* See Orders */,
                  ),
                  icon: Icon(
                    Icons.assignment_turned_in,
                    color: Color(0xDA000000),
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).tertiary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xD9183C28),
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
    );
  }
}
