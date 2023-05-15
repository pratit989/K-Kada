import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_product/new_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dispatch_details_model.dart';
export 'dispatch_details_model.dart';

class DispatchDetailsWidget extends StatefulWidget {
  const DispatchDetailsWidget({Key? key}) : super(key: key);

  @override
  _DispatchDetailsWidgetState createState() => _DispatchDetailsWidgetState();
}

class _DispatchDetailsWidgetState extends State<DispatchDetailsWidget> {
  late DispatchDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DispatchDetailsModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 100.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'laqohh7b' /* Dispatch Details */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'dgdreh69' /* Order Id : */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'v6usbk9k' /* 0000000 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      width: 103.0,
                      height: 29.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x2A000000),
                            offset: Offset(0.0, 3.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Color(0xFF707070),
                          width: 0.5,
                        ),
                      ),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '8zbuynr7' /* Details */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 10.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'lptq6ad1' /* TRANSPORTER'S UIN */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xD9000000),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFF949496),
                    ),
                  ),
                  child: TextFormField(
                    controller: _model.textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 3.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '7xwt205e' /* Enter Transporter's Unique den... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 10.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'i8hnkoto' /* TRANSPORTER'S MOBILE NO */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xD9000000),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xFF949496),
                    ),
                  ),
                  child: TextFormField(
                    controller: _model.textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 3.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'fc7agqmd' /* Transporter will get an OTP on... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFFBEBEBE),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewProductWidget(),
                        ),
                      );
                    },
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
