import '/components/all_products_cart_c_widget.dart';
import '/components/grand_total_of_mycart_c_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCartCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AllProductsCartC component.
  late AllProductsCartCModel allProductsCartCModel;
  // Model for GrandTotalOfMycartC component.
  late GrandTotalOfMycartCModel grandTotalOfMycartCModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    allProductsCartCModel = createModel(context, () => AllProductsCartCModel());
    grandTotalOfMycartCModel =
        createModel(context, () => GrandTotalOfMycartCModel());
  }

  void dispose() {
    allProductsCartCModel.dispose();
    grandTotalOfMycartCModel.dispose();
  }

  /// Additional helper methods are added here.

}
