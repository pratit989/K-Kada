import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delivery_type_c_model.dart';
export 'delivery_type_c_model.dart';

class DeliveryTypeCWidget extends StatefulWidget {
  const DeliveryTypeCWidget({Key? key}) : super(key: key);

  @override
  _DeliveryTypeCWidgetState createState() => _DeliveryTypeCWidgetState();
}

class _DeliveryTypeCWidgetState extends State<DeliveryTypeCWidget> {
  late DeliveryTypeCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryTypeCModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        'iul5kvqf' /* Select Delivery Type */,
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
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'xspz1ytk' /* Select one of the delivery mod... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF696969),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 139.0,
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
                              20.0, 0.0, 15.0, 0.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'vkvbnqz0' /* SELF PICKUP */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 20.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'vqbhihex' /* You can collect your order
fro... */
                                      ,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0xFF949496),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'azzilg3t' /* No delivery charges */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Icon(
                                Icons.store_sharp,
                                color: Color(0xFF9E9E9E),
                                size: 70.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '37529r07' /* SELECT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 139.0,
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
                              20.0, 0.0, 15.0, 0.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'jiqs6pz6' /* HOME DELIVERY */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 15.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'gtkccbgh' /* You can also get your order
de... */
                                      ,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0xFF949496),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '811amupg' /* Delivery charges applied */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Icon(
                                Icons.house,
                                color: Color(0xFF9E9E9E),
                                size: 70.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 18.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '9xjkcmlv' /* SELECT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
