import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferSelectedCWidget extends StatefulWidget {
  const OfferSelectedCWidget({Key key}) : super(key: key);

  @override
  _OfferSelectedCWidgetState createState() => _OfferSelectedCWidgetState();
}

class _OfferSelectedCWidgetState extends State<OfferSelectedCWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xDD000000),
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
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'orewc8nw' /* Offer Selected */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '7o4u7yxw' /* Add items to your cart and pro... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF696969),
                                    fontSize: 12,
                                  ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 50,
                        fillColor: FlutterFlowTheme.of(context).primaryColor,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 25,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
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
