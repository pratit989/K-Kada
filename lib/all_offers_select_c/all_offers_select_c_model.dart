import '/components/coupon_select_c_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllOffersSelectCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for CouponSelectC component.
  late CouponSelectCModel couponSelectCModel1;
  // Model for CouponSelectC component.
  late CouponSelectCModel couponSelectCModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    couponSelectCModel1 = createModel(context, () => CouponSelectCModel());
    couponSelectCModel2 = createModel(context, () => CouponSelectCModel());
  }

  void dispose() {
    couponSelectCModel1.dispose();
    couponSelectCModel2.dispose();
  }

  /// Additional helper methods are added here.

}
