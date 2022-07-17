import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/upload_media.dart';
import '../tax_details/tax_details_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerInformationWidget extends StatefulWidget {
  const SellerInformationWidget({Key key}) : super(key: key);

  @override
  _SellerInformationWidgetState createState() =>
      _SellerInformationWidgetState();
}

class _SellerInformationWidgetState extends State<SellerInformationWidget> {
  ShopsRecord newShopRef;
  VendorsRecord newVendorRef;
  String uploadedFileUrl1 = '';
  String uploadedFileUrl2 = '';
  String dropDownValue;
  TextEditingController textController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
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
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '9hum03jg' /* Seller Information */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '15b5vpay' /* We just need to know, your sho... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'g8ie3whp' /* *UPLOAD PHOTO OF YOUR SHIOP */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  InkWell(
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
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
                        final downloadUrls = (await Future.wait(
                                selectedMedia.map((m) async =>
                                    await uploadData(m.storagePath, m.bytes))))
                            .where((u) => u != null)
                            .toList();
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        if (downloadUrls != null &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() => uploadedFileUrl1 = downloadUrls.first);
                          showUploadMessage(
                            context,
                            'Success!',
                          );
                        } else {
                          showUploadMessage(
                            context,
                            'Failed to upload media',
                          );
                          return;
                        }
                      }

                      if ((uploadedFileUrl1 != null &&
                          uploadedFileUrl1 != '')) {
                        setState(() => FFAppState().uploadedShopPhoto = true);
                      }
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
                          children: [
                            ToggleIcon(
                              onPressed: () async {
                                setState(() => FFAppState().uploadedShopPhoto =
                                    !FFAppState().uploadedShopPhoto);
                              },
                              value: FFAppState().uploadedShopPhoto,
                              onIcon: Icon(
                                Icons.check_box,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 25,
                              ),
                              offIcon: Icon(
                                Icons.photo_camera_outlined,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 25,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '46u8dcuq' /* Proceed to camera */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'xffblyl4' /* LOGO ( optonal ) */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  InkWell(
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
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
                        final downloadUrls = (await Future.wait(
                                selectedMedia.map((m) async =>
                                    await uploadData(m.storagePath, m.bytes))))
                            .where((u) => u != null)
                            .toList();
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        if (downloadUrls != null &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() => uploadedFileUrl2 = downloadUrls.first);
                          showUploadMessage(
                            context,
                            'Success!',
                          );
                        } else {
                          showUploadMessage(
                            context,
                            'Failed to upload media',
                          );
                          return;
                        }
                      }

                      if ((uploadedFileUrl2 != null &&
                          uploadedFileUrl2 != '')) {
                        setState(() => FFAppState().uploadedShopLogo = true);
                      }
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
                          children: [
                            ToggleIcon(
                              onPressed: () async {
                                setState(() => FFAppState().uploadedShopLogo =
                                    !FFAppState().uploadedShopLogo);
                              },
                              value: FFAppState().uploadedShopLogo,
                              onIcon: Icon(
                                Icons.check_box,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 25,
                              ),
                              offIcon: Icon(
                                Icons.photo_camera_outlined,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 25,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'avnp7jj5' /* Proceed to camera */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '56whc172' /* *SHOP TYPE */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: FlutterFlowDropDown(
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
                      onChanged: (val) => setState(() => dropDownValue = val),
                      width: MediaQuery.of(context).size.width,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Lato',
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 15,
                      ),
                      fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                      elevation: 0,
                      borderColor: Color(0x00B6AF9A),
                      borderWidth: 0,
                      borderRadius: 10,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'lb63m5sw' /* *SHOP NAME ( as per your GST C... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF696969),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  TextFormField(
                    controller: textController,
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
                          color: Color(0xFF183C28),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          'qnhl2z83' /* Field is required */,
                        );
                      }
                      if (val.length < 3) {
                        return 'Requires at least 3 characters.';
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 50,
                      fillColor: FlutterFlowTheme.of(context).primaryColor,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 25,
                      ),
                      onPressed: () async {
                        if (formKey.currentState == null ||
                            !formKey.currentState.validate()) {
                          return;
                        }

                        if (dropDownValue == null) {
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

                        if (uploadedFileUrl1 == null ||
                            uploadedFileUrl1.isEmpty) {
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

                        final vendorsCreateData = createVendorsRecordData(
                          userRef: currentUserReference,
                          registrationCompleted: false,
                        );
                        var vendorsRecordReference =
                            VendorsRecord.collection.doc();
                        await vendorsRecordReference.set(vendorsCreateData);
                        newVendorRef = VendorsRecord.getDocumentFromData(
                            vendorsCreateData, vendorsRecordReference);

                        final usersUpdateData = createUsersRecordData(
                          vendorRef: newVendorRef.reference,
                        );
                        await currentUserReference.update(usersUpdateData);

                        final shopsCreateData = createShopsRecordData(
                          vendorRef: newVendorRef.reference,
                          userRef: currentUserReference,
                          shopPhoto: uploadedFileUrl1,
                          shopLogo: uploadedFileUrl2,
                          shopName: textController.text,
                          shopCategory: dropDownValue,
                        );
                        var shopsRecordReference = ShopsRecord.collection.doc();
                        await shopsRecordReference.set(shopsCreateData);
                        newShopRef = ShopsRecord.getDocumentFromData(
                            shopsCreateData, shopsRecordReference);

                        final vendorsUpdateData = createVendorsRecordData(
                          shopRef: newShopRef.reference,
                        );
                        await currentUserDocument?.vendorRef
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
