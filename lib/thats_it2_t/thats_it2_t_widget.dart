import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/my_store/my_store_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'thats_it2_t_model.dart';
export 'thats_it2_t_model.dart';

class ThatsIt2TWidget extends StatefulWidget {
  const ThatsIt2TWidget({Key? key}) : super(key: key);

  @override
  _ThatsIt2TWidgetState createState() => _ThatsIt2TWidgetState();
}

class _ThatsIt2TWidgetState extends State<ThatsIt2TWidget> {
  late ThatsIt2TModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThatsIt2TModel());
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xFF183C28),
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '63b2oa0h' /* Thats's it! */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 50.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'uyon36vu' /* We just need to knoe, what veh... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                          fontSize: 14.0,
                        ),
                  ),
                ),
                Image.asset(
                  'assets/images/CAR2.png',
                  width: 287.0,
                  height: 203.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      's328vtvq' /* My Vehicles */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF000702),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                      child: Container(
                        width: 269.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          border: Border.all(
                            width: 0.1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 10.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: FFLocalizations.of(context).getText(
                                  '0uu0vk2x' /* 2 - WHEELER */,
                                ),
                                options: FFButtonOptions(
                                  width: 131.0,
                                  height: 31.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                        fontSize: 14.0,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '6hy7a70h' /* EDIT DETAILS */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 10.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.delete,
                      color: Color(0xFF949496),
                      size: 35.0,
                    ),
                  ],
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
        ),
      ),
    );
  }
}
