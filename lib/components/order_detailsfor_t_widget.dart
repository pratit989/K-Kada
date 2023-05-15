import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_detailsfor_t_model.dart';
export 'order_detailsfor_t_model.dart';

class OrderDetailsforTWidget extends StatefulWidget {
  const OrderDetailsforTWidget({Key? key}) : super(key: key);

  @override
  _OrderDetailsforTWidgetState createState() => _OrderDetailsforTWidgetState();
}

class _OrderDetailsforTWidgetState extends State<OrderDetailsforTWidget> {
  late OrderDetailsforTModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDetailsforTModel());
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
      height: 176.0,
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
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
                    '0sbd6pew' /* Order Id   : */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '0ic18t93' /* Ordered Date: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '918sfe74' /* Total Amount Paid: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'bq17wl18' /* Delivered to: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    'mxra3hi7' /* 0000000 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '5kxao8ee' /* 02-11-2021 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '94xzy7rz' /* ₹127.00 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'vq2doqw3' /* Sona lawns, xyz street,
xyz, K... */
                    ,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
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
