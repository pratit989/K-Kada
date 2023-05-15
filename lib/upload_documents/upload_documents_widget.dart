import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/bank_account_details/bank_account_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upload_documents_model.dart';
export 'upload_documents_model.dart';

class UploadDocumentsWidget extends StatefulWidget {
  const UploadDocumentsWidget({Key? key}) : super(key: key);

  @override
  _UploadDocumentsWidgetState createState() => _UploadDocumentsWidgetState();
}

class _UploadDocumentsWidgetState extends State<UploadDocumentsWidget> {
  late UploadDocumentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadDocumentsModel());
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
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'ojo7o7j6' /* Upload Documents */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '7hg1mr93' /* We need to check that you are ... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                        ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '6lgx161q' /* *ADHAAR CARD */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xD8000000),
                        fontWeight: FontWeight.w500,
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
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        imageQuality: 40,
                        allowPhoto: true,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading1 = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];
                        var downloadUrls = <String>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading1 = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedMedia.length &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile1 =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl1 = downloadUrls.first;
                          });
                          showUploadMessage(context, 'Success!');
                        } else {
                          setState(() {});
                          showUploadMessage(context, 'Failed to upload data');
                          return;
                        }
                      }

                      if (_model.uploadedFileUrl1 != null &&
                          _model.uploadedFileUrl1 != '') {
                        FFAppState().update(() {
                          FFAppState().aadharUpload = true;
                        });
                      }
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
                          children: [
                            ToggleIcon(
                              onPressed: () async {
                                setState(() => FFAppState().aadharUpload =
                                    !FFAppState().aadharUpload);
                              },
                              value: FFAppState().aadharUpload,
                              onIcon: Icon(
                                Icons.check_box,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 25.0,
                              ),
                              offIcon: Icon(
                                Icons.photo_camera_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 25.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'a6a62cek' /* Proceed to camera */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'vah8wibs' /* *PAN CARD */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xD8000000),
                          fontWeight: FontWeight.w500,
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
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        imageQuality: 40,
                        allowPhoto: true,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading2 = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];
                        var downloadUrls = <String>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading2 = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedMedia.length &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile2 =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl2 = downloadUrls.first;
                          });
                          showUploadMessage(context, 'Success!');
                        } else {
                          setState(() {});
                          showUploadMessage(context, 'Failed to upload data');
                          return;
                        }
                      }

                      if (_model.uploadedFileUrl2 != null &&
                          _model.uploadedFileUrl2 != '') {
                        FFAppState().update(() {
                          FFAppState().panCardUpload = true;
                        });
                      }
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
                          children: [
                            ToggleIcon(
                              onPressed: () async {
                                setState(() => FFAppState().panCardUpload =
                                    !FFAppState().panCardUpload);
                              },
                              value: FFAppState().panCardUpload,
                              onIcon: Icon(
                                Icons.check_box,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 25.0,
                              ),
                              offIcon: Icon(
                                Icons.photo_camera_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 25.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'sxounyyn' /* Proceed to camera */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'aj060qzq' /* *FSSAI CERTIFICATE */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xD8000000),
                          fontWeight: FontWeight.w500,
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
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        imageQuality: 40,
                        allowPhoto: true,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading3 = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];
                        var downloadUrls = <String>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading3 = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedMedia.length &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile3 =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl3 = downloadUrls.first;
                          });
                          showUploadMessage(context, 'Success!');
                        } else {
                          setState(() {});
                          showUploadMessage(context, 'Failed to upload data');
                          return;
                        }
                      }

                      if (_model.uploadedFileUrl3 != null &&
                          _model.uploadedFileUrl3 != '') {
                        FFAppState().update(() {
                          FFAppState().fssaiCertificateUpload = true;
                        });
                      }
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
                          children: [
                            ToggleIcon(
                              onPressed: () async {
                                setState(() =>
                                    FFAppState().fssaiCertificateUpload =
                                        !FFAppState().fssaiCertificateUpload);
                              },
                              value: FFAppState().fssaiCertificateUpload,
                              onIcon: Icon(
                                Icons.check_box,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 25.0,
                              ),
                              offIcon: Icon(
                                Icons.photo_camera_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 25.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'fv6w8ld6' /* Proceed to camera */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 25.0,
                    ),
                    onPressed: () async {
                      final vendorsUpdateData = createVendorsRecordData(
                        aadharImg: _model.uploadedFileUrl1,
                        panImg: _model.uploadedFileUrl2,
                        fssaiImg: _model.uploadedFileUrl3,
                      );
                      await currentUserDocument!.vendorRef!
                          .update(vendorsUpdateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BankAccountDetailsWidget(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
