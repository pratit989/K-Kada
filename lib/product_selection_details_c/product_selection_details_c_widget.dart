import '../components/colors_available_c_widget.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductSelectionDetailsCWidget extends StatefulWidget {
  const ProductSelectionDetailsCWidget({Key key}) : super(key: key);

  @override
  _ProductSelectionDetailsCWidgetState createState() =>
      _ProductSelectionDetailsCWidgetState();
}

class _ProductSelectionDetailsCWidgetState
    extends State<ProductSelectionDetailsCWidget> {
  PageController pageViewController;
  int countControllerValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Color(0xFF183C28),
                        size: 30,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                ),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/Rectangle_245.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.network(
                              'https://picsum.photos/seed/317/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              'https://picsum.photos/seed/456/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: SlideEffect(
                              spacing: 8,
                              radius: 16,
                              dotWidth: 9,
                              dotHeight: 9,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor:
                                  FlutterFlowTheme.of(context).primaryColor,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'pbulfnqv' /* Kangaroo HD-10D Stapler */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'iq51ju6o' /* ₹76.50 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'eq5hkxdp' /* Description */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF696969),
                        fontSize: 12,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 50),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'fgdr7wxh' /* - Loading Capacity Of 100 Stap... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF707070),
                        fontSize: 10,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: ColorsAvailableCWidget(),
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.solidMinusSquare,
                        color: enabled
                            ? FlutterFlowTheme.of(context).secondaryColor
                            : Color(0xFFBEBEBE),
                        size: 35,
                      ),
                      incrementIconBuilder: (enabled) => Icon(
                        Icons.add_box,
                        color: enabled
                            ? FlutterFlowTheme.of(context).secondaryColor
                            : Color(0xFFBEBEBE),
                        size: 40,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      count: countControllerValue ??= 0,
                      updateCount: (count) =>
                          setState(() => countControllerValue = count),
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
