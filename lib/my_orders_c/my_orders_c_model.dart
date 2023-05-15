import '/components/order_details_c_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyOrdersCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for OrderDetailsC component.
  late OrderDetailsCModel orderDetailsCModel1;
  // Model for OrderDetailsC component.
  late OrderDetailsCModel orderDetailsCModel2;
  // Model for OrderDetailsC component.
  late OrderDetailsCModel orderDetailsCModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    orderDetailsCModel1 = createModel(context, () => OrderDetailsCModel());
    orderDetailsCModel2 = createModel(context, () => OrderDetailsCModel());
    orderDetailsCModel3 = createModel(context, () => OrderDetailsCModel());
  }

  void dispose() {
    orderDetailsCModel1.dispose();
    orderDetailsCModel2.dispose();
    orderDetailsCModel3.dispose();
  }

  /// Additional helper methods are added here.

}
