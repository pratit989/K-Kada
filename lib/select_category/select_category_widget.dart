import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/new_product/new_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_category_model.dart';
export 'select_category_model.dart';

class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({Key? key}) : super(key: key);

  @override
  _SelectCategoryWidgetState createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  late SelectCategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectCategoryModel());
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
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 2.0, 40.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'uda4xe0y' /* Select Category */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'j7dlscvg' /* Your product comes under which... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF9F9F9F),
                        fontSize: 12.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                child: Image.asset(
                  'assets/images/noun_Category_3844729.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  fit: BoxFit.contain,
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
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
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: MediaQuery.of(context).size.width * 1.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'rgd7m09l' /* Select */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 15.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).tertiary,
                    elevation: 0.0,
                    borderColor: Color(0x00B6AF9A),
                    borderWidth: 0.0,
                    borderRadius: 10.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
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
