import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../new_product/new_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({Key key}) : super(key: key);

  @override
  _SelectCategoryWidgetState createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  String dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 2, 40, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Color(0xFF183C28),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'uda4xe0y' /* Select Category */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'j7dlscvg' /* Your product comes under which... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF9F9F9F),
                        fontSize: 12,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                child: Image.asset(
                  'assets/images/noun_Category_3844729.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  fit: BoxFit.contain,
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FlutterFlowDropDown(
                    options: [
                      FFLocalizations.of(context).getText(
                        'gfosm9us' /* Electronics */,
                      ),
                      FFLocalizations.of(context).getText(
                        'hosqc7vx' /* Clothing and Accessories */,
                      ),
                      FFLocalizations.of(context).getText(
                        'lr96wp28' /* Health and Beauty */,
                      ),
                      FFLocalizations.of(context).getText(
                        '380l35ou' /* Groceries */,
                      ),
                      FFLocalizations.of(context).getText(
                        'xw35vlvg' /* Fruits and Vegetables */,
                      ),
                      FFLocalizations.of(context).getText(
                        'b299i2fa' /* Books */,
                      ),
                      FFLocalizations.of(context).getText(
                        'g9xleood' /* Home and Kitchen */,
                      ),
                      FFLocalizations.of(context).getText(
                        'w4i8cx2u' /* Sports and Outdoors */,
                      ),
                      FFLocalizations.of(context).getText(
                        '53jr6cob' /* Handicrafts */,
                      ),
                      FFLocalizations.of(context).getText(
                        '0rz2dadl' /* Dairy and Beverages */,
                      ),
                      FFLocalizations.of(context).getText(
                        'sguv88aj' /* Packed Food */,
                      ),
                      FFLocalizations.of(context).getText(
                        'hfuh38bo' /* Baby and Kids */,
                      ),
                      FFLocalizations.of(context).getText(
                        'wdsfsr6p' /* Footwear */,
                      ),
                      FFLocalizations.of(context).getText(
                        '9yx3v144' /* Stationary */,
                      )
                    ],
                    onChanged: (val) => setState(() => dropDownValue = val),
                    width: MediaQuery.of(context).size.width,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'rgd7m09l' /* Select */,
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
                    hidesUnderline: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 40,
                  fillColor: FlutterFlowTheme.of(context).primaryColor,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    size: 20,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewProductWidget(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
