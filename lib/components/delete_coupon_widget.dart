import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteCouponWidget extends StatefulWidget {
  const DeleteCouponWidget({Key key}) : super(key: key);

  @override
  _DeleteCouponWidgetState createState() => _DeleteCouponWidgetState();
}

class _DeleteCouponWidgetState extends State<DeleteCouponWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xDE000000),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Container(
          width: 320,
          height: 158,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'vsddm2vn' /* Are You sure you want to delet... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '3039l9zy' /* Coupon will be deleted forever */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontSize: 12,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'lucj8wv9' /* NO */,
                          ),
                          options: FFButtonOptions(
                            width: 100,
                            height: 30,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 10,
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'ut1vz036' /* YES */,
                        ),
                        options: FFButtonOptions(
                          width: 100,
                          height: 30,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                  ),
                          borderSide: BorderSide(
                            color: Color(0xFF707070),
                            width: 1,
                          ),
                          borderRadius: 10,
                        ),
                      ),
                    ],
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
