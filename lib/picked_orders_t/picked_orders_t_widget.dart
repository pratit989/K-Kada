import '/components/order_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'picked_orders_t_model.dart';
export 'picked_orders_t_model.dart';

class PickedOrdersTWidget extends StatefulWidget {
  const PickedOrdersTWidget({Key? key}) : super(key: key);

  @override
  _PickedOrdersTWidgetState createState() => _PickedOrdersTWidgetState();
}

class _PickedOrdersTWidgetState extends State<PickedOrdersTWidget> {
  late PickedOrdersTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickedOrdersTModel());
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
                              'vetsb80w' /* Picked Orders */,
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
                  wrapWithModel(
                    model: _model.orderDetailsModel1,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsWidget(
                      orderId: '000000',
                      deliverytType: 'Home Delivery',
                      orderTotal: 127,
                      date: getCurrentTimestamp,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.orderDetailsModel2,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsWidget(
                      orderId: '0000000',
                      deliverytType: 'Home Delivery',
                      orderTotal: 127,
                      date: getCurrentTimestamp,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.orderDetailsModel3,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsWidget(
                      orderId: '000000',
                      deliverytType: 'Home Delivery',
                      orderTotal: 127,
                      date: getCurrentTimestamp,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.orderDetailsModel4,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsWidget(
                      orderId: '000000',
                      deliverytType: 'Home Delviery',
                      orderTotal: 127,
                      date: getCurrentTimestamp,
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
