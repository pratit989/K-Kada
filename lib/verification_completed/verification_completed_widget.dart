import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_store/my_store_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verification_completed_model.dart';
export 'verification_completed_model.dart';

class VerificationCompletedWidget extends StatefulWidget {
  const VerificationCompletedWidget({Key? key}) : super(key: key);

  @override
  _VerificationCompletedWidgetState createState() =>
      _VerificationCompletedWidgetState();
}

class _VerificationCompletedWidgetState
    extends State<VerificationCompletedWidget> {
  late VerificationCompletedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificationCompletedModel());
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
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: PageView(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 20.0, 40.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 100.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.check_circle_sharp,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 100.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'fay9yvxp' /* Verification
Completed! */
                                      ,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 20.0, 40.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) =>
                                  StreamBuilder<VendorsRecord>(
                                stream: VendorsRecord.getDocument(
                                    currentUserDocument!.vendorRef!),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  final columnVendorsRecord = snapshot.data!;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/Group_476.png',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        fit: BoxFit.contain,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                        child: StreamBuilder<ShopsRecord>(
                                          stream: ShopsRecord.getDocument(
                                              columnVendorsRecord.shopRef!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                              );
                                            }
                                            final textShopsRecord =
                                                snapshot.data!;
                                            return Text(
                                              textShopsRecord.shopName!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontSize: 22.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            );
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'v6ouqyxz' /* Set up your store! */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF949496),
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: smooth_page_indicator.SmoothPageIndicator(
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        count: 2,
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
                          dotWidth: 12.0,
                          dotHeight: 12.0,
                          dotColor: Color(0xFFBEBEBE),
                          activeDotColor: FlutterFlowTheme.of(context).primary,
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
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
                  await _model.pageViewController?.animateToPage(
                    1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                  await Future.delayed(const Duration(milliseconds: 1000));
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyStoreWidget(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
