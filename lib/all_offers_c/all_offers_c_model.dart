import '/components/coupons_c_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllOffersCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for CouponsC component.
  late CouponsCModel couponsCModel1;
  // Model for CouponsC component.
  late CouponsCModel couponsCModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    couponsCModel1 = createModel(context, () => CouponsCModel());
    couponsCModel2 = createModel(context, () => CouponsCModel());
  }

  void dispose() {
    couponsCModel1.dispose();
    couponsCModel2.dispose();
  }

  /// Additional helper methods are added here.

}
