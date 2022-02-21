import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetailsCWidget extends StatefulWidget {
  const CardDetailsCWidget({Key key}) : super(key: key);

  @override
  _CardDetailsCWidgetState createState() => _CardDetailsCWidgetState();
}

class _CardDetailsCWidgetState extends State<CardDetailsCWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 422,
      height: 417,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 5),
              child: Text(
                FFLocalizations.of(context).getText(
                  'oiipgquq' /* Card Number */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      color: Color(0xFFB5B5B5),
                    ),
              ),
            ),
            Container(
              width: 320,
              height: 41,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFFB1B1B1),
                  width: 0.5,
                ),
              ),
              child: TextFormField(
                controller: textController1,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 5),
              child: Text(
                FFLocalizations.of(context).getText(
                  '6h1qq45r' /* Name on Card */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      color: Color(0xFFB5B5B5),
                    ),
              ),
            ),
            Container(
              width: 320,
              height: 41,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFFB1B1B1),
                  width: 0.5,
                ),
              ),
              child: TextFormField(
                controller: textController2,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '5hr9no8i' /* Valid Thru (MM / YY) */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFFB5B5B5),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 10, 5),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '26vfe2o9' /* CVV */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFFB5B5B5),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Icon(
                      Icons.error_outlined,
                      color: Color(0xFF686868),
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Container(
                      width: 160,
                      height: 41,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFFB1B1B1),
                          width: 0.5,
                        ),
                      ),
                      child: TextFormField(
                        controller: textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 41,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFFB1B1B1),
                        width: 0.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: textController4,
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
