import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorsWidget extends StatefulWidget {
  const ColorsWidget({Key key}) : super(key: key);

  @override
  _ColorsWidgetState createState() => _ColorsWidgetState();
}

class _ColorsWidgetState extends State<ColorsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Text(
                FFLocalizations.of(context).getText(
                  '0pcway8d' /* Select Colour Availability for... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xD9000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Container(
              width: 320,
              height: 63,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
                borderRadius: BorderRadius.circular(10),
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
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState().selectedColours.contains('Black')
                                ? FFAppState().selectedColours.remove('Black')
                                : FFAppState().selectedColours.add('Black'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Black'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Colors.black,
                          size: 30,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState().selectedColours.contains('White')
                                ? FFAppState().selectedColours.remove('White')
                                : FFAppState().selectedColours.add('White'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('White'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 30,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState().selectedColours.contains('Green')
                                ? FFAppState().selectedColours.remove('Green')
                                : FFAppState().selectedColours.add('Green'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Green'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFF00FF00),
                          size: 30,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFF00FF00),
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Yellow')
                                ? FFAppState().selectedColours.remove('Yellow')
                                : FFAppState().selectedColours.add('Yellow'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Yellow'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFFFFCB37),
                          size: 30,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFFFFCB37),
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Violet')
                                ? FFAppState().selectedColours.remove('Violet')
                                : FFAppState().selectedColours.add('Violet'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Violet'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFFC21678),
                          size: 30,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFFC21678),
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Violet')
                                ? FFAppState().selectedColours.remove('Violet')
                                : FFAppState().selectedColours.add('Violet'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Violet'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFF399FB3),
                          size: 30,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFF399FB3),
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(
                            () => FFAppState()
                                    .selectedColours
                                    .contains('Violet')
                                ? FFAppState().selectedColours.remove('Violet')
                                : FFAppState().selectedColours.add('Violet'),
                          );
                        },
                        value: FFAppState().selectedColours.contains('Violet'),
                        onIcon: Icon(
                          Icons.check_circle,
                          color: Color(0xFF0C73B7),
                          size: 30,
                        ),
                        offIcon: Icon(
                          Icons.brightness_1,
                          color: Color(0xFF0C73B7),
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                      size: 25,
                    ),
                    offIcon: FaIcon(
                      FontAwesomeIcons.circle,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'veb09xi6' /* Tick if not applicable */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => FFAppState().addedColours = true);
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'cog58anl' /* Save */,
                ),
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lato',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
