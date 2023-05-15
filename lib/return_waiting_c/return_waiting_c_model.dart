import '/components/loader_c_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReturnWaitingCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for LoaderC component.
  late LoaderCModel loaderCModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loaderCModel = createModel(context, () => LoaderCModel());
  }

  void dispose() {
    loaderCModel.dispose();
  }

  /// Additional helper methods are added here.

}
