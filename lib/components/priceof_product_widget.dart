import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'priceof_product_model.dart';
export 'priceof_product_model.dart';

class PriceofProductWidget extends StatefulWidget {
  const PriceofProductWidget({Key? key}) : super(key: key);

  @override
  _PriceofProductWidgetState createState() => _PriceofProductWidgetState();
}

class _PriceofProductWidgetState extends State<PriceofProductWidget> {
  late PriceofProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PriceofProductModel());

    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
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
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'pyq6cr13' /* Enter Price for your Product */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xD9000000),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 100.0,
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final variants =
                              FFAppState().variantNames.map((e) => e).toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: variants.length,
                            itemBuilder: (context, variantsIndex) {
                              final variantsItem = variants[variantsIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 70.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        height: 28.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFF707070),
                                            width: 0.5,
                                          ),
                                        ),
                                        child: TextFormField(
                                          controller: _model.textController1 ??=
                                              TextEditingController(
                                            text: variantsItem,
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ao1kfh7n' /* Enter Variant Name */,
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFFBEBEBE),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          textAlign: TextAlign.center,
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.29,
                      height: 100.0,
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final variantPrices =
                              FFAppState().variantPrices.map((e) => e).toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: variantPrices.length,
                            itemBuilder: (context, variantPricesIndex) {
                              final variantPricesItem =
                                  variantPrices[variantPricesIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'acfhfhi5' /* ₹ */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: Color(0xFF707070),
                                              fontSize: 20.0,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 28.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Color(0xFF707070),
                                          width: 0.5,
                                        ),
                                      ),
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'tm0li3xe' /* Price */,
                                          ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color: Color(0xFFBEBEBE),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 70.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: 28.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Color(0xFF707070),
                              width: 0.5,
                            ),
                          ),
                          child: TextFormField(
                            controller: _model.textController3,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                'qc3m639b' /* Enter Variant Name */,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFFBEBEBE),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            textAlign: TextAlign.center,
                            validator: _model.textController3Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'zgvr0427' /* ₹ */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF707070),
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF707070),
                            width: 0.5,
                          ),
                        ),
                        child: TextFormField(
                          controller: _model.textController4,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'aojbkn1v' /* Price */,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFFBEBEBE),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          validator: _model.textController4Validator
                              .asValidator(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 40.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'kd8h9uuz' /* eg. 1 unit, 1kg, pack of 5, 20... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF949496),
                      fontSize: 8.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                FFAppState().update(() {
                  FFAppState().addToVariantNames(_model.textController3.text);
                  FFAppState().addToVariantPrices(
                      int.parse(_model.textController4.text));
                });
              },
              text: FFLocalizations.of(context).getText(
                'h1i883sk' /* Add Variant */,
              ),
              icon: Icon(
                Icons.add_circle_outline,
                color: FlutterFlowTheme.of(context).primary,
                size: 15.0,
              ),
              options: FFButtonOptions(
                width: 160.0,
                height: 37.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                color: FlutterFlowTheme.of(context).secondary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
