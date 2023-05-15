import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_details_c1_model.dart';
export 'order_details_c1_model.dart';

class OrderDetailsC1Widget extends StatefulWidget {
  const OrderDetailsC1Widget({Key? key}) : super(key: key);

  @override
  _OrderDetailsC1WidgetState createState() => _OrderDetailsC1WidgetState();
}

class _OrderDetailsC1WidgetState extends State<OrderDetailsC1Widget> {
  late OrderDetailsC1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDetailsC1Model());
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
      height: 142.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
          width: 0.5,
        ),
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
                    '8op8vjnz' /* Order Id   : */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '5xm3ba1x' /* Ordered Date: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF949496),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '4schdtyi' /* Total Amount Paid: */,
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
                    'rdi86c3n' /* 0000000 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'zpn9b7lc' /* 02-11-2021 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'j10euad3' /* ₹127.00 */,
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
