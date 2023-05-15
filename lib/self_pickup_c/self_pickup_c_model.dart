import '/components/anand_stationary_c_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelfPickupCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AnandStationaryC component.
  late AnandStationaryCModel anandStationaryCModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    anandStationaryCModel = createModel(context, () => AnandStationaryCModel());
  }

  void dispose() {
    anandStationaryCModel.dispose();
  }

  /// Additional helper methods are added here.

}
