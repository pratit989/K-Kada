import '/components/order_details_c1_widget.dart';
import '/components/order_details_c2_widget.dart';
import '/components/order_details_c3_widget.dart';
import '/components/order_detais_c4_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_details_c_page_model.dart';
export 'order_details_c_page_model.dart';

class OrderDetailsCPageWidget extends StatefulWidget {
  const OrderDetailsCPageWidget({Key? key}) : super(key: key);

  @override
  _OrderDetailsCPageWidgetState createState() =>
      _OrderDetailsCPageWidgetState();
}

class _OrderDetailsCPageWidgetState extends State<OrderDetailsCPageWidget> {
  late OrderDetailsCPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDetailsCPageModel());
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
                      Text(
                        FFLocalizations.of(context).getText(
                          '5j5htbv2' /* Order Details */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: wrapWithModel(
                    model: _model.orderDetailsC1Model,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsC1Widget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: wrapWithModel(
                    model: _model.orderDetailsC2Model,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsC2Widget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: wrapWithModel(
                    model: _model.orderDetailsC3Model,
                    updateCallback: () => setState(() {}),
                    child: OrderDetailsC3Widget(),
                  ),
                ),
                wrapWithModel(
                  model: _model.orderDetaisC4Model,
                  updateCallback: () => setState(() {}),
                  child: OrderDetaisC4Widget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
