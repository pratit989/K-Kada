import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/thats_it/thats_it_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BankAccountDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tcrqa2l4' /* Field is required */,
      );
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6vb0w4zy' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 17) {
      return 'Maximum 17 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't7vfsz6i' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 17) {
      return 'Maximum 17 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a4aq9hxr' /* Field is required */,
      );
    }

    if (val.length < 11) {
      return 'Requires at least 11 characters.';
    }
    if (val.length > 11) {
      return 'Maximum 11 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
  }

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
  }

  /// Additional helper methods are added here.

}
