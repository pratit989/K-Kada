import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'colors_model.dart';
export 'colors_model.dart';

class ColorsWidget extends StatefulWidget {
  const ColorsWidget({Key? key}) : super(key: key);

  @override
  _ColorsWidgetState createState() => _ColorsWidgetState();
}

class _ColorsWidgetState extends State<ColorsWidget> {
  late ColorsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '0pcway8d' /* Select Colour Availability for... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xD9000000),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Container(
              width: 320.0,
              height: 63.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiary,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0xFF707070),
                  width: 0.5,
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState().selectedColours.contains('Black')
                                ? FFAppState()
                                    .removeFromSelectedColours('Black')
                                : FFAppState().addToSelectedColours('Black'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Black'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState().selectedColours.contains('White')
                                ? FFAppState()
                                    .removeFromSelectedColours('White')
                                : FFAppState().addToSelectedColours('White'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('White'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 30.0,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState().selectedColours.contains('Green')
                                ? FFAppState()
                                    .removeFromSelectedColours('Green')
                                : FFAppState().addToSelectedColours('Green'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Green'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFF00FF00),
                          size: 30.0,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFF00FF00),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Yellow')
                                ? FFAppState()
                                    .removeFromSelectedColours('Yellow')
                                : FFAppState().addToSelectedColours('Yellow'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Yellow'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFFFFCB37),
                          size: 30.0,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFFFFCB37),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Violet')
                                ? FFAppState()
                                    .removeFromSelectedColours('Violet')
                                : FFAppState().addToSelectedColours('Violet'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Violet'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFFC21678),
                          size: 30.0,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFFC21678),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Violet')
                                ? FFAppState()
                                    .removeFromSelectedColours('Violet')
                                : FFAppState().addToSelectedColours('Violet'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Violet'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFF399FB3),
                          size: 30.0,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFF399FB3),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Violet')
                                ? FFAppState()
                                    .removeFromSelectedColours('Violet')
                                : FFAppState().addToSelectedColours('Violet'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Violet'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFF0C73B7),
                          size: 30.0,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFF0C73B7),
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ToggleIcon(
                    onPressed: () async {
                      setState(() => FFAppState().addedColours =
                          !FFAppState().addedColours);
                    },
                    value: FFAppState().addedColours,
                    onIcon: Icon(
                      Icons.check_circle,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    offIcon: FaIcon(
                      FontAwesomeIcons.circle,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'veb09xi6' /* Tick if not applicable */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  FFAppState().update(() {
                    FFAppState().addedColours = true;
                  });
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'cog58anl' /* Save */,
                ),
                options: FFButtonOptions(
                  width: 130.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lato',
                        color: Colors.white,
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
