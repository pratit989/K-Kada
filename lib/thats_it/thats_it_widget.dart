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
import 'thats_it_model.dart';
export 'thats_it_model.dart';

class ThatsItWidget extends StatefulWidget {
  const ThatsItWidget({Key? key}) : super(key: key);

  @override
  _ThatsItWidgetState createState() => _ThatsItWidgetState();
}

class _ThatsItWidgetState extends State<ThatsItWidget> {
  late ThatsItModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThatsItModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).secondary,
            size: 30.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '9mygflgo' /* Thats's it! */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'aymq4bc0' /* Provide your digital signature... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF949496),
                      fontSize: 14.0,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'syqbo4yy' /* SIGN IN THE BOX */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondary,
                  ),
                ),
                child: ClipRect(
                  child: Signature(
                    controller: _model.signatureController,
                    backgroundColor: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    final signatureImage =
                        await _model.signatureController.toPngBytes();
                    if (signatureImage == null) {
                      showUploadMessage(
                        context,
                        'Signature is empty.',
                      );
                      return;
                    }
                    showUploadMessage(
                      context,
                      'Uploading signature...',
                      showLoading: true,
                    );
                    final downloadUrl = (await uploadData(
                        getSignatureStoragePath(), signatureImage));

                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    if (downloadUrl != null) {
                      setState(() => _model.uploadedSignatureUrl = downloadUrl);
                      showUploadMessage(
                        context,
                        'Success!',
                      );
                    } else {
                      showUploadMessage(
                        context,
                        'Failed to upload signature.',
                      );
                      return;
                    }

                    final usersUpdateData = createUsersRecordData(
                      signature: _model.uploadedSignatureUrl,
                      vendorRegistered: true,
                      verificationRequested: true,
                    );
                    await currentUserReference!.update(usersUpdateData);
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThankYouWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF707070),
                        width: 0.3,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'r9qq4lu5' /* SAVE YOUR SIGNATURE */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
