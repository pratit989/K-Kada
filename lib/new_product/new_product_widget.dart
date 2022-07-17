import '../backend/firebase_storage/storage.dart';
import '../components/colors_widget.dart';
import '../components/priceof_product_widget.dart';
import '../components/product_details_widget.dart';
import '../components/product_name_widget.dart';
import '../components/size_widget.dart';
import '../components/stock_details_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProductWidget extends StatefulWidget {
  const NewProductWidget({Key key}) : super(key: key);

  @override
  _NewProductWidgetState createState() => _NewProductWidgetState();
}

class _NewProductWidgetState extends State<NewProductWidget> {
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 30,
          ),
          onPressed: () async {
            setState(() => FFAppState().productImages = []);
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'crbzahxb' /* New Product */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Lato',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.delete_outlined,
              color: Color(0xFF949496),
              size: 30,
            ),
            onPressed: () async {
              setState(() => FFAppState().productImages = []);
              Navigator.pop(context);
            },
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 187,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Builder(
                        builder: (context) {
                          final productImages = FFAppState()
                                  .productImages
                                  .map((e) => e)
                                  .toList()
                                  ?.toList() ??
                              [];
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(productImages.length,
                                (productImagesIndex) {
                              final productImagesItem =
                                  productImages[productImagesIndex];
                              return Image.network(
                                productImagesItem,
                                fit: BoxFit.cover,
                              );
                            }),
                          );
                        },
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
                                        await uploadData(
                                            m.storagePath, m.bytes))))
                                .where((u) => u != null)
                                .toList();
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if (downloadUrls != null &&
                                downloadUrls.length == selectedMedia.length) {
                              setState(
                                  () => uploadedFileUrl = downloadUrls.first);
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

                          setState(() =>
                              FFAppState().productImages.add(uploadedFileUrl));
                        },
                        child: Image.asset(
                          'assets/images/Group_965.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 320,
                        height: 73,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    child: ProductNameWidget(),
                                  ),
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Path_366.png',
                                width: 19,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'a4yfxn5p' /* PRODUCT NAME* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState()
                                              .addedProductVaraint =
                                          !FFAppState().addedProductVaraint);
                                    },
                                    value: FFAppState().addedProductVaraint,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 73,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: PriceofProductWidget(),
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Group_539.png',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'p7st00jo' /* PRIZE* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState()
                                              .addedProductVaraint =
                                          !FFAppState().addedProductVaraint);
                                    },
                                    value: FFAppState().addedProductVaraint,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 73,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: ColorsWidget(),
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Ellipse_33.png',
                                width: 19,
                                height: 19,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'dzvcs85m' /* COLOUR AVAILABLITY* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState().addedColours =
                                          !FFAppState().addedColours);
                                    },
                                    value: FFAppState().addedColours,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 73,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: ProductDetailsWidget(),
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Group_542.png',
                                width: 16,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'n546rtfn' /* DESCRIPTION* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().addedDescription =
                                              !FFAppState().addedDescription);
                                    },
                                    value: FFAppState().addedDescription,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 73,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: StockDetailsWidget(),
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/noun_In_Stock_213499.png',
                                width: 20,
                                height: 16,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'd5bqvyse' /* STOCK AVAILABLITY */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().addedStockDetails =
                                              !FFAppState().addedStockDetails);
                                    },
                                    value: FFAppState().addedStockDetails,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 73,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: SizeWidget(),
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/noun_size_4399926.png',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'rb869eza' /* SIZE* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState()
                                              .addedProductVaraint =
                                          !FFAppState().addedProductVaraint);
                                    },
                                    value: FFAppState().addedProductVaraint,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'iia2mc8q' /* Save */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lato',
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
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
