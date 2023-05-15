import '/components/coupon_select_c_widget.dart';
import '/components/products_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CutomerCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for CouponSelectC component.
  late CouponSelectCModel couponSelectCModel1;
  // Model for CouponSelectC component.
  late CouponSelectCModel couponSelectCModel2;
  // Model for Products component.
  late ProductsModel productsModel1;
  // Model for Products component.
  late ProductsModel productsModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    couponSelectCModel1 = createModel(context, () => CouponSelectCModel());
    couponSelectCModel2 = createModel(context, () => CouponSelectCModel());
    productsModel1 = createModel(context, () => ProductsModel());
    productsModel2 = createModel(context, () => ProductsModel());
  }

  void dispose() {
    couponSelectCModel1.dispose();
    couponSelectCModel2.dispose();
    productsModel1.dispose();
    productsModel2.dispose();
  }

  /// Additional helper methods are added here.

}
