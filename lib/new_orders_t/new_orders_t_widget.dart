import '/components/order_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_orders_t_model.dart';
export 'new_orders_t_model.dart';

class NewOrdersTWidget extends StatefulWidget {
  const NewOrdersTWidget({Key? key}) : super(key: key);

  @override
  _NewOrdersTWidgetState createState() => _NewOrdersTWidgetState();
}

class _NewOrdersTWidgetState extends State<NewOrdersTWidget> {
  late NewOrdersTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewOrdersTModel());
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.arrow_back_ios_sharp,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 100.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'si0yr0z8' /* New Orders */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                    child: wrapWithModel(
                      model: _model.orderDetailsModel1,
                      updateCallback: () => setState(() {}),
                      child: OrderDetailsWidget(
                        orderId: '0000000',
                        deliverytType: 'Home Devlivery',
                        orderTotal: 127,
                        date: getCurrentTimestamp,
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.orderDetailsModel2,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsWidget(
                      orderId: '000000',
                      deliverytType: 'Home Delivery',
                      orderTotal: 127,
                      date: getCurrentTimestamp,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                    child: wrapWithModel(
                      model: _model.orderDetailsModel3,
                      updateCallback: () => setState(() {}),
                      child: OrderDetailsWidget(
                        orderId: '000000',
                        deliverytType: 'Home Delivery',
                        orderTotal: 127,
                        date: getCurrentTimestamp,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                    child: wrapWithModel(
                      model: _model.orderDetailsModel4,
                      updateCallback: () => setState(() {}),
                      child: OrderDetailsWidget(
                        orderId: '000000',
                        deliverytType: 'Home Delivery',
                        orderTotal: 127,
                        date: getCurrentTimestamp,
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'fv6a3xi4' /* Get your Current location */,
                    ),
                    icon: Icon(
                      Icons.my_location,
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      width: 225.0,
                      height: 36.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '08mk0u22' /* Only orders near your current ... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF949496),
                            fontSize: 12.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
