import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_product_details_model.dart';
export 'edit_product_details_model.dart';

class EditProductDetailsWidget extends StatefulWidget {
  const EditProductDetailsWidget({Key? key}) : super(key: key);

  @override
  _EditProductDetailsWidgetState createState() =>
      _EditProductDetailsWidgetState();
}

class _EditProductDetailsWidgetState extends State<EditProductDetailsWidget> {
  late EditProductDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProductDetailsModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: FlutterFlowTheme.of(context).secondary,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'in2z9vud' /* Edit Product Details */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lato',
                  color: Colors.black,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.delete,
                color: Color(0xFF949496),
                size: 30.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                child: Image.asset(
                  'assets/images/Stapler1.png',
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 0.25,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                child: Image.asset(
                  'assets/images/Group_950.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40.0,
                endIndent: 40.0,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Image.asset(
                  'assets/images/Group_951.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40.0,
                endIndent: 40.0,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Image.asset(
                  'assets/images/Group_952.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40.0,
                endIndent: 40.0,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Image.asset(
                  'assets/images/desc.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40.0,
                endIndent: 40.0,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Image.asset(
                  'assets/images/Stock.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40.0,
                endIndent: 40.0,
                color: Color(0x30183C28),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  'z4wxkoy2' /* Save */,
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
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
