import '/components/add_new_product_widget.dart';
import '/components/products_widget.dart';
import '/edit_product_details/edit_product_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/select_category/select_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyProductsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Products component.
  late ProductsModel productsModel;
  // Model for AddNewProduct component.
  late AddNewProductModel addNewProductModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    productsModel = createModel(context, () => ProductsModel());
    addNewProductModel = createModel(context, () => AddNewProductModel());
  }

  void dispose() {
    productsModel.dispose();
    addNewProductModel.dispose();
  }

  /// Additional helper methods are added here.

}
