import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/tax_details/tax_details_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'seller_information_model.dart';
export 'seller_information_model.dart';

class SellerInformationWidget extends StatefulWidget {
  const SellerInformationWidget({Key? key}) : super(key: key);

  @override
  _SellerInformationWidgetState createState() =>
      _SellerInformationWidgetState();
}

class _SellerInformationWidgetState extends State<SellerInformationWidget> {
  late SellerInformationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SellerInformationModel());

    _model.textController ??= TextEditingController();
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
          onPressed: () async {
            Navigator.pop(context);
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '9hum03jg' /* Seller Information */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '15b5vpay' /* We just need to know, your sho... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'g8ie3whp' /* *UPLOAD PHOTO OF YOUR SHIOP */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  InkWell(
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
                          FFAppState().uploadedShopPhoto = true;
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
                                setState(() => FFAppState().uploadedShopPhoto =
                                    !FFAppState().uploadedShopPhoto);
                              },
                              value: FFAppState().uploadedShopPhoto,
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
                            Text(
                              FFLocalizations.of(context).getText(
                                '46u8dcuq' /* Proceed to camera */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'xffblyl4' /* LOGO ( optonal ) */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  InkWell(
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
                          FFAppState().uploadedShopLogo = true;
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
                                setState(() => FFAppState().uploadedShopLogo =
                                    !FFAppState().uploadedShopLogo);
                              },
                              value: FFAppState().uploadedShopLogo,
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
                                  'avnp7jj5' /* Proceed to camera */,
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '56whc172' /* *SHOP TYPE */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        FFLocalizations.of(context).getText(
                          'm5y1r9oi' /* Electronics */,
                        ),
                        FFLocalizations.of(context).getText(
                          'qa3n0fif' /* Clothing and Accessories */,
                        ),
                        FFLocalizations.of(context).getText(
                          '56ujfdm6' /* Health and Beauty */,
                        ),
                        FFLocalizations.of(context).getText(
                          'bso4hjag' /* Groceries */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ubi6l16u' /* Fruits and Vegetables */,
                        ),
                        FFLocalizations.of(context).getText(
                          '0bxal6ia' /* Books */,
                        ),
                        FFLocalizations.of(context).getText(
                          'z9xwmynd' /* Home and Kitchen */,
                        ),
                        FFLocalizations.of(context).getText(
                          't46jkw9f' /* Sports and Outdoors */,
                        ),
                        FFLocalizations.of(context).getText(
                          'hnazhwur' /* Handicrafts */,
                        ),
                        FFLocalizations.of(context).getText(
                          'gfhyp6kv' /* Dairy and Beverages */,
                        ),
                        FFLocalizations.of(context).getText(
                          'khs4pbqg' /* Packed Food */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ert9e8c3' /* Baby and Kids */,
                        ),
                        FFLocalizations.of(context).getText(
                          '136idrg1' /* Footwear */,
                        ),
                        FFLocalizations.of(context).getText(
                          'bburc6v4' /* Stationary */,
                        )
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: MediaQuery.of(context).size.width * 1.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Lato',
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 15.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).tertiary,
                      elevation: 0.0,
                      borderColor: Color(0x00B6AF9A),
                      borderWidth: 0.0,
                      borderRadius: 10.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                      isSearchable: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'lb63m5sw' /* *SHOP NAME ( as per your GST C... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  TextFormField(
                    controller: _model.textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF183C28),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
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
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        if (_model.uploadedFileUrl1 == null ||
                            _model.uploadedFileUrl1.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Upload a valid photo of your shop',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor: Color(0x00000000),
                            ),
                          );
                          return;
                        }
                        if (_model.dropDownValue == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select  a valid shop type',
                                style: TextStyle(),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor: Color(0x00000000),
                            ),
                          );
                          return;
                        }

                        final vendorsCreateData = createVendorsRecordData(
                          userRef: currentUserReference,
                          registrationCompleted: false,
                        );
                        var vendorsRecordReference =
                            VendorsRecord.collection.doc();
                        await vendorsRecordReference.set(vendorsCreateData);
                        _model.newVendorRef = VendorsRecord.getDocumentFromData(
                            vendorsCreateData, vendorsRecordReference);

                        final usersUpdateData = createUsersRecordData(
                          vendorRef: _model.newVendorRef!.reference,
                        );
                        await currentUserReference!.update(usersUpdateData);

                        final shopsCreateData = createShopsRecordData(
                          vendorRef: _model.newVendorRef!.reference,
                          userRef: currentUserReference,
                          shopPhoto: _model.uploadedFileUrl1,
                          shopLogo: _model.uploadedFileUrl2,
                          shopName: _model.textController.text,
                          shopCategory: _model.dropDownValue,
                        );
                        var shopsRecordReference = ShopsRecord.collection.doc();
                        await shopsRecordReference.set(shopsCreateData);
                        _model.newShopRef = ShopsRecord.getDocumentFromData(
                            shopsCreateData, shopsRecordReference);

                        final vendorsUpdateData = createVendorsRecordData(
                          shopRef: _model.newShopRef!.reference,
                        );
                        await currentUserDocument!.vendorRef!
                            .update(vendorsUpdateData);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaxDetailsWidget(),
                          ),
                        );

                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
