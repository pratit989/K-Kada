import '/components/order_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dispatch_requests1_model.dart';
export 'dispatch_requests1_model.dart';

class DispatchRequests1Widget extends StatefulWidget {
  const DispatchRequests1Widget({Key? key}) : super(key: key);

  @override
  _DispatchRequests1WidgetState createState() =>
      _DispatchRequests1WidgetState();
}

class _DispatchRequests1WidgetState extends State<DispatchRequests1Widget> {
  late DispatchRequests1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DispatchRequests1Model());
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
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Row(
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 100.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'jupf102k' /* Dispatch Requests */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                      child: wrapWithModel(
                        model: _model.orderDetailsModel1,
                        updateCallback: () => setState(() {}),
                        child: OrderDetailsWidget(
                          orderId: '0000000',
                          deliverytType: 'Home delivery',
                          orderTotal: 127,
                          date: getCurrentTimestamp,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.orderDetailsModel2,
                      updateCallback: () => setState(() {}),
                      child: OrderDetailsWidget(
                        orderId: '0000000',
                        deliverytType: 'Home delivery',
                        orderTotal: 127,
                        date: getCurrentTimestamp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
