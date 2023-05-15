import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_details_c_model.dart';
export 'order_details_c_model.dart';

class OrderDetailsCWidget extends StatefulWidget {
  const OrderDetailsCWidget({
    Key? key,
    this.orderId,
    this.deliverytType,
    this.orderTotal,
    this.date,
  }) : super(key: key);

  final String? orderId;
  final String? deliverytType;
  final int? orderTotal;
  final DateTime? date;

  @override
  _OrderDetailsCWidgetState createState() => _OrderDetailsCWidgetState();
}

class _OrderDetailsCWidgetState extends State<OrderDetailsCWidget> {
  late OrderDetailsCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDetailsCModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 320.0,
      height: 255.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: Color(0x15000000),
            offset: Offset(2.0, 2.0),
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'z3rqqahn' /* Order Id : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xDA000000),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 30.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            '#${valueOrDefault<String>(
                              widget.orderId,
                              '000000',
                            )}',
                            '#000000',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xD8000000),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            dateTimeFormat(
                              'd/M/y',
                              widget.date,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            '21-11-2021',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '1pwgz4v5' /* Delivery Type     : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF949496),
                                  ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.deliverytType,
                          'Home Delivery',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xD8000000),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '53gb0ek0' /* Order Total          : */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF949496),
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            formatNumber(
                              widget.orderTotal,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.automatic,
                              currency: '₹',
                            ),
                            '₹127.00',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xD8000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'v00tl3hn' /* Via Debit card */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xFF949496),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.3,
            color: Color(0xFFBEBEBE),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '041d4l22' /* Track Order */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF696969),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 18.0,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.3,
            color: Color(0xFFBEBEBE),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '4g09pqfq' /* Cancel Order */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF696969),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 18.0,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.3,
            color: Color(0xFFBEBEBE),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '9u0w80sc' /* View Order Details */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF696969),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 18.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
