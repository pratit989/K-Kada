import '/components/order_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeDeliveryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for OrderDetails component.
  late OrderDetailsModel orderDetailsModel1;
  // Model for OrderDetails component.
  late OrderDetailsModel orderDetailsModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    orderDetailsModel1 = createModel(context, () => OrderDetailsModel());
    orderDetailsModel2 = createModel(context, () => OrderDetailsModel());
  }

  void dispose() {
    orderDetailsModel1.dispose();
    orderDetailsModel2.dispose();
  }

  /// Additional helper methods are added here.

}
