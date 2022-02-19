import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductAddedSuccessfullyWidget extends StatefulWidget {
  const ProductAddedSuccessfullyWidget({Key key}) : super(key: key);

  @override
  _ProductAddedSuccessfullyWidgetState createState() =>
      _ProductAddedSuccessfullyWidgetState();
}

class _ProductAddedSuccessfullyWidgetState
    extends State<ProductAddedSuccessfullyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xDF000000),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Container(
          width: 320,
          height: 158,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
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
                      'pq149owo' /* Product Added Successfully! */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'zndmkip9' /* You can edit product details a... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontSize: 12,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 40,
                      fillColor: FlutterFlowTheme.of(context).primaryColor,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 20,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
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
