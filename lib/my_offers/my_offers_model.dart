import '/components/add_new_product_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyOffersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AddNewProduct component.
  late AddNewProductModel addNewProductModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    addNewProductModel = createModel(context, () => AddNewProductModel());
  }

  void dispose() {
    addNewProductModel.dispose();
  }

  /// Additional helper methods are added here.

}
