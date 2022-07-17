import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/upload_media.dart';
import '../thank_you/thank_you_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

class ThatsItWidget extends StatefulWidget {
  const ThatsItWidget({Key key}) : super(key: key);

  @override
  _ThatsItWidgetState createState() => _ThatsItWidgetState();
}

class _ThatsItWidgetState extends State<ThatsItWidget> {
  String uploadedSignatureUrl = '';
  SignatureController signatureController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    signatureController = SignatureController(
      penStrokeWidth: 2,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '9mygflgo' /* Thats's it! */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'aymq4bc0' /* Provide your digital signature... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF949496),
                      fontSize: 14,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'syqbo4yy' /* SIGN IN THE BOX */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
                ),
                child: ClipRect(
                  child: Signature(
                    controller: signatureController,
                    backgroundColor: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: InkWell(
                  onTap: () async {
                    final signatureImage =
                        await signatureController.toPngBytes();

                    if (signatureImage == null) {
                      return;
                    }

                    showUploadMessage(
                      context,
                      'Uploading signature...',
                      showLoading: true,
                    );
                    final downloadUrl = (await uploadData(
                        signatureStoragePath(currentUserUid), signatureImage));

                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    if (downloadUrl != null) {
                      setState(() => uploadedSignatureUrl = downloadUrl);
                      showUploadMessage(
                        context,
                        'Success!',
                      );
                    } else {
                      showUploadMessage(
                        context,
                        'Failed to upload signature',
                      );
                      return;
                    }

                    final usersUpdateData = createUsersRecordData(
                      signature: uploadedSignatureUrl,
                      vendorRegistered: true,
                      verificationRequested: true,
                    );
                    await currentUserReference.update(usersUpdateData);
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
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF707070),
                        width: 0.3,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'r9qq4lu5' /* SAVE YOUR SIGNATURE */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16,
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
