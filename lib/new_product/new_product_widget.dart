import '/backend/firebase_storage/storage.dart';
import '/components/colors_widget.dart';
import '/components/priceof_product_widget.dart';
import '/components/product_details_widget.dart';
import '/components/product_name_widget.dart';
import '/components/size_widget.dart';
import '/components/stock_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_product_model.dart';
export 'new_product_model.dart';

class NewProductWidget extends StatefulWidget {
  const NewProductWidget({Key? key}) : super(key: key);

  @override
  _NewProductWidgetState createState() => _NewProductWidgetState();
}

class _NewProductWidgetState extends State<NewProductWidget> {
  late NewProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewProductModel());
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
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).secondary,
            size: 30.0,
          ),
          onPressed: () async {
            FFAppState().update(() {
              FFAppState().productImages = [];
            });
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'crbzahxb' /* New Product */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Lato',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.delete_outlined,
              color: Color(0xFF949496),
              size: 30.0,
            ),
            onPressed: () async {
              FFAppState().update(() {
                FFAppState().productImages = [];
              });
              Navigator.pop(context);
            },
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 187.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Builder(
                        builder: (context) {
                          final productImages =
                              FFAppState().productImages.map((e) => e).toList();
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
                            setState(() => _model.isDataUploading = true);
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
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                    selectedMedia.length &&
                                downloadUrls.length == selectedMedia.length) {
                              setState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                                _model.uploadedFileUrl = downloadUrls.first;
                              });
                              showUploadMessage(context, 'Success!');
                            } else {
                              setState(() {});
                              showUploadMessage(
                                  context, 'Failed to upload data');
                              return;
                            }
                          }

                          FFAppState().update(() {
                            FFAppState()
                                .addToProductImages(_model.uploadedFileUrl);
                          });
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
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 320.0,
                        height: 73.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              context: context,
                              builder: (bottomSheetContext) {
                                return Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    child: ProductNameWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Path_366.png',
                                width: 19.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'a4yfxn5p' /* PRODUCT NAME* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState()
                                              .addedProductVaraint =
                                          !FFAppState().addedProductVaraint);
                                    },
                                    value: FFAppState().addedProductVaraint,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320.0,
                        height: 73.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              context: context,
                              builder: (bottomSheetContext) {
                                return Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: PriceofProductWidget(),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Group_539.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'p7st00jo' /* PRIZE* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState()
                                              .addedProductVaraint =
                                          !FFAppState().addedProductVaraint);
                                    },
                                    value: FFAppState().addedProductVaraint,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320.0,
                        height: 73.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              context: context,
                              builder: (bottomSheetContext) {
                                return Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: ColorsWidget(),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Ellipse_33.png',
                                width: 19.0,
                                height: 19.0,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'dzvcs85m' /* COLOUR AVAILABLITY* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState().addedColours =
                                          !FFAppState().addedColours);
                                    },
                                    value: FFAppState().addedColours,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320.0,
                        height: 73.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              context: context,
                              builder: (bottomSheetContext) {
                                return Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: ProductDetailsWidget(),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/Group_542.png',
                                width: 16.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'n546rtfn' /* DESCRIPTION* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().addedDescription =
                                              !FFAppState().addedDescription);
                                    },
                                    value: FFAppState().addedDescription,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320.0,
                        height: 73.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              context: context,
                              builder: (bottomSheetContext) {
                                return Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: StockDetailsWidget(),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/noun_In_Stock_213499.png',
                                width: 20.0,
                                height: 16.0,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'd5bqvyse' /* STOCK AVAILABLITY */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().addedStockDetails =
                                              !FFAppState().addedStockDetails);
                                    },
                                    value: FFAppState().addedStockDetails,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 320.0,
                        height: 73.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              context: context,
                              builder: (bottomSheetContext) {
                                return Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: SizeWidget(),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/noun_size_4399926.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'rb869eza' /* SIZE* */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      setState(() => FFAppState()
                                              .addedProductVaraint =
                                          !FFAppState().addedProductVaraint);
                                    },
                                    value: FFAppState().addedProductVaraint,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 25.0,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'iia2mc8q' /* Save */,
                  ),
                  options: FFButtonOptions(
                    width: 130.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
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
