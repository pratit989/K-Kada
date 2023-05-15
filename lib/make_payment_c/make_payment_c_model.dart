import '/components/grand_total_of_mycart_c_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MakePaymentCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for GrandTotalOfMycartC component.
  late GrandTotalOfMycartCModel grandTotalOfMycartCModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    grandTotalOfMycartCModel =
        createModel(context, () => GrandTotalOfMycartCModel());
  }

  void dispose() {
    grandTotalOfMycartCModel.dispose();
  }

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
