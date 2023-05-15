import '/components/add_new_product_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_offers_model.dart';
export 'my_offers_model.dart';

class MyOffersWidget extends StatefulWidget {
  const MyOffersWidget({Key? key}) : super(key: key);

  @override
  _MyOffersWidgetState createState() => _MyOffersWidgetState();
}

class _MyOffersWidgetState extends State<MyOffersWidget> {
  late MyOffersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyOffersModel());
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
            'lprxh3gc' /* My Offer */,
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
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 30.0),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 20.0, 0.0),
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
                          'lfzej5b9' /* Search Product */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Color(0x14000000),
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'zwwjvta4' /* STAT40 */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 160.0,
                                        height: 37.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Lato',
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'yn7ic6dk' /* Get 40% Off */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ajvh7i5h' /* 40% Off upto Rs.100 on orders ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Color(0xFF949496),
                                      fontSize: 12.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 45.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 23.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8.0,
                          color: Color(0x14000000),
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'cirzigqk' /* BOOK20 */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 160.0,
                                          height: 37.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Lato',
                                                    color: Colors.white,
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'mbnyi5m0' /* Get 20% Off */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'r8w5pwan' /* 20% Off upto Rs. 200 on orders... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Color(0xFF949496),
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 45.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 23.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.addNewProductModel,
                  updateCallback: () => setState(() {}),
                  child: AddNewProductWidget(
                    text: 'Add New Offer',
                    height: 189,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
