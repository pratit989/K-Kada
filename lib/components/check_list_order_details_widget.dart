import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckListOrderDetailsWidget extends StatefulWidget {
  const CheckListOrderDetailsWidget({Key key}) : super(key: key);

  @override
  _CheckListOrderDetailsWidgetState createState() =>
      _CheckListOrderDetailsWidgetState();
}

class _CheckListOrderDetailsWidgetState
    extends State<CheckListOrderDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 176,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Color(0x15000000),
            offset: Offset(2, 2),
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'jbucwc2n' /* Order Id   : */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'zuusbs9a' /* Ordered Date: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '5mljw5l1' /* Total Amount Paid: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '6a1o7bm2' /* Payment Mode: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'nfjstxkj' /* 0000000 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'iswr9yg5' /* 02-11-2021 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '5q4z9noa' /* ₹127.00 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    's8os82i7' /* Via Debit Card */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
