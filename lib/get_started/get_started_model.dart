import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/verification/verification_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GetStartedModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2sd8qpt8' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    if (!RegExp(
            '^(\\+\\d{1,2}\\s)?\\(?\\d{3}\\)?[\\s.-]?\\d{3}[\\s.-]?\\d{4}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Stores action output result for [Custom Action - phoneNumberFormatter] action in Button widget.
  String? formattedPhoneNumber;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  void dispose() {
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
