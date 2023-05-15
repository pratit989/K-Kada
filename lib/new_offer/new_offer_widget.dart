import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_offer_model.dart';
export 'new_offer_model.dart';

class NewOfferWidget extends StatefulWidget {
  const NewOfferWidget({Key? key}) : super(key: key);

  @override
  _NewOfferWidgetState createState() => _NewOfferWidgetState();
}

class _NewOfferWidgetState extends State<NewOfferWidget> {
  late NewOfferModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewOfferModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 70.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Color(0xFF183C28),
                            size: 30.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 125.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '1awy6l2j' /* New Offer */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Icon(
                        Icons.delete,
                        color: Color(0xFF949496),
                        size: 35.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Container(
                    width: 320.0,
                    height: 73.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      'assets/images/Couponcode2.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Container(
                    width: 320.0,
                    height: 73.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      'assets/images/Discount.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 320.0,
                  height: 73.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'assets/images/Description.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: Container(
                    width: 160.0,
                    height: 37.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        'hbo168ib' /* Save */,
                      ),
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Lato',
                                  color: Colors.white,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
