import '/components/check_list_order_details_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReturnOrReplaceOrderCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for CheckListOrderDetails component.
  late CheckListOrderDetailsModel checkListOrderDetailsModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    checkListOrderDetailsModel =
        createModel(context, () => CheckListOrderDetailsModel());
  }

  void dispose() {
    checkListOrderDetailsModel.dispose();
  }

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
