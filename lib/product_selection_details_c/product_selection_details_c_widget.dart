import '/components/colors_available_c_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_selection_details_c_model.dart';
export 'product_selection_details_c_model.dart';

class ProductSelectionDetailsCWidget extends StatefulWidget {
  const ProductSelectionDetailsCWidget({Key? key}) : super(key: key);

  @override
  _ProductSelectionDetailsCWidgetState createState() =>
      _ProductSelectionDetailsCWidgetState();
}

class _ProductSelectionDetailsCWidgetState
    extends State<ProductSelectionDetailsCWidget> {
  late ProductSelectionDetailsCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductSelectionDetailsCModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 40.0, 40.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Color(0xFF183C28),
                        size: 30.0,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 300.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: PageView(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/images/Rectangle_245.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.network(
                              'https://picsum.photos/seed/317/600',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              'https://picsum.photos/seed/456/600',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.SlideEffect(
                              spacing: 8.0,
                              radius: 16.0,
                              dotWidth: 9.0,
                              dotHeight: 9.0,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor:
                                  FlutterFlowTheme.of(context).primary,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'pbulfnqv' /* Kangaroo HD-10D Stapler */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'iq51ju6o' /* ₹76.50 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'eq5hkxdp' /* Description */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF696969),
                        fontSize: 12.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'fgdr7wxh' /* - Loading Capacity Of 100 Stap... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF707070),
                        fontSize: 10.0,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: wrapWithModel(
                      model: _model.colorsAvailableCModel,
                      updateCallback: () => setState(() {}),
                      child: ColorsAvailableCWidget(),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.solidMinusSquare,
                        color: enabled
                            ? FlutterFlowTheme.of(context).secondary
                            : Color(0xFFBEBEBE),
                        size: 35.0,
                      ),
                      incrementIconBuilder: (enabled) => Icon(
                        Icons.add_box,
                        color: enabled
                            ? FlutterFlowTheme.of(context).secondary
                            : Color(0xFFBEBEBE),
                        size: 40.0,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      count: _model.countControllerValue ??= 0,
                      updateCount: (count) =>
                          setState(() => _model.countControllerValue = count),
                      stepSize: 1,
                      minimum: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
