import '/components/order_details_c1_widget.dart';
import '/components/order_details_c2_widget.dart';
import '/components/order_details_c3_widget.dart';
import '/components/order_detais_c4_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancellation_requested_model.dart';
export 'cancellation_requested_model.dart';

class CancellationRequestedWidget extends StatefulWidget {
  const CancellationRequestedWidget({Key? key}) : super(key: key);

  @override
  _CancellationRequestedWidgetState createState() =>
      _CancellationRequestedWidgetState();
}

class _CancellationRequestedWidgetState
    extends State<CancellationRequestedWidget> {
  late CancellationRequestedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancellationRequestedModel());
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
                        Text(
                          FFLocalizations.of(context).getText(
                            '1seymq8q' /* Cancellation Requested  */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320.0,
                    height: 71.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9E9E9),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            child: Icon(
                              Icons.error_outlined,
                              color: Colors.black,
                              size: 15.0,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '9gf56t3y' /* Your request for order cancell... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  color: Color(0xFF021308),
                                  fontSize: 12.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.orderDetailsC1Model,
                      updateCallback: () => setState(() {}),
                      child: OrderDetailsC1Widget(),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.orderDetailsC2Model,
                      updateCallback: () => setState(() {}),
                      child: OrderDetailsC2Widget(),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.orderDetailsC3Model,
                      updateCallback: () => setState(() {}),
                      child: OrderDetailsC3Widget(),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.orderDetaisC4Model,
                      updateCallback: () => setState(() {}),
                      child: OrderDetaisC4Widget(),
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
