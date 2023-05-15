import '/components/colors_available_c_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductSelectionDetailsCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for ColorsAvailableC component.
  late ColorsAvailableCModel colorsAvailableCModel;
  // State field(s) for CountController widget.
  int? countControllerValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    colorsAvailableCModel = createModel(context, () => ColorsAvailableCModel());
  }

  void dispose() {
    colorsAvailableCModel.dispose();
  }

  /// Additional helper methods are added here.

}
