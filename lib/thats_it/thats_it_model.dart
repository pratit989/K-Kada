import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/thank_you/thank_you_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class ThatsItModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Signature widget.
  late SignatureController signatureController;
  String uploadedSignatureUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signatureController = SignatureController(
      penStrokeWidth: 2.0,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
  }

  void dispose() {
    signatureController.dispose();
  }

  /// Additional helper methods are added here.

}
