import '/components/order_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_delivery_model.dart';
export 'home_delivery_model.dart';

class HomeDeliveryWidget extends StatefulWidget {
  const HomeDeliveryWidget({Key? key}) : super(key: key);

  @override
  _HomeDeliveryWidgetState createState() => _HomeDeliveryWidgetState();
}

class _HomeDeliveryWidgetState extends State<HomeDeliveryWidget> {
  late HomeDeliveryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeDeliveryModel());
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
                          'o4wjm261' /* Home Delivery */,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x19000000),
                        offset: Offset(0.0, 2.0),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 20.0, 0.0),
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
                            '2bit5nqz' /* Search Order ID */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 34.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'neexzle1' /* New orders */,
                          ),
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lato',
                                  color: Colors.white,
                                  fontSize: 14.0,
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'ajwm8s12' /* Packed */,
                          ),
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lato',
                                  color: Color(0xD9000000),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Color(0xFF707070),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'axrmyxuo' /* Dispatched */,
                          ),
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lato',
                                  color: Color(0xD9000000),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Color(0xFF707070),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'sngxiojc' /* Delivered */,
                        ),
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xD9000000),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Color(0xFF707070),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 30.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'lho3zzzr' /* Dispatch Requests */,
                  ),
                  options: FFButtonOptions(
                    width: 146.0,
                    height: 34.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: Colors.white,
                          fontSize: 14.0,
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
