import '/components/order_details_c1_widget.dart';
import '/components/order_details_c2_widget.dart';
import '/components/order_details_c3_widget.dart';
import '/components/order_detais_c4_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CancellationRequestedModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for OrderDetailsC1 component.
  late OrderDetailsC1Model orderDetailsC1Model;
  // Model for OrderDetailsC2 component.
  late OrderDetailsC2Model orderDetailsC2Model;
  // Model for OrderDetailsC3 component.
  late OrderDetailsC3Model orderDetailsC3Model;
  // Model for OrderDetaisC4 component.
  late OrderDetaisC4Model orderDetaisC4Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    orderDetailsC1Model = createModel(context, () => OrderDetailsC1Model());
    orderDetailsC2Model = createModel(context, () => OrderDetailsC2Model());
    orderDetailsC3Model = createModel(context, () => OrderDetailsC3Model());
    orderDetaisC4Model = createModel(context, () => OrderDetaisC4Model());
  }

  void dispose() {
    orderDetailsC1Model.dispose();
    orderDetailsC2Model.dispose();
    orderDetailsC3Model.dispose();
    orderDetaisC4Model.dispose();
  }

  /// Additional helper methods are added here.

}
