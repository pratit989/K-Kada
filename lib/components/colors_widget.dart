import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorsWidget extends StatefulWidget {
  const ColorsWidget({Key key}) : super(key: key);

  @override
  _ColorsWidgetState createState() => _ColorsWidgetState();
}

class _ColorsWidgetState extends State<ColorsWidget> {
  bool checkboxListTileValue;

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
                      child: Icon(
                        Icons.brightness_1,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFF037034),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFFEEC643),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFFC21678),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFF399FB3),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFF0C73B7),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFF59008B),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFF99A5AE),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFFD68203),
                        size: 40,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFFE09EE2),
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  unselectedWidgetColor: Color(0xFF707070),
                ),
                child: CheckboxListTile(
                  value: checkboxListTileValue ??= false,
                  onChanged: (newValue) =>
                      setState(() => checkboxListTileValue = newValue),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'jf9609p9' /* Tick if not applicable */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFF949496),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).tertiaryColor,
                  activeColor: FlutterFlowTheme.of(context).secondaryColor,
                  checkColor: FlutterFlowTheme.of(context).tertiaryColor,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
