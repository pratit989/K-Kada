import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_details_c2_model.dart';
export 'order_details_c2_model.dart';

class OrderDetailsC2Widget extends StatefulWidget {
  const OrderDetailsC2Widget({Key? key}) : super(key: key);

  @override
  _OrderDetailsC2WidgetState createState() => _OrderDetailsC2WidgetState();
}

class _OrderDetailsC2WidgetState extends State<OrderDetailsC2Widget> {
  late OrderDetailsC2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDetailsC2Model());
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
      height: 154.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '905poyxi' /* Payment Details */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      color: Color(0xFF949496),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'mfb5p61v' /* Via Debit Card */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: FlutterFlowTheme.of(context).primary,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 5.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'j354rmhk' /* Billing Address */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    color: Color(0xFF949496),
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'lvwl1jnh' /* Flat no. 1710 , Manav Enclave,... */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
