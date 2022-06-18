import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProductDetailsWidget extends StatefulWidget {
  const EditProductDetailsWidget({Key key}) : super(key: key);

  @override
  _EditProductDetailsWidgetState createState() =>
      _EditProductDetailsWidgetState();
}

class _EditProductDetailsWidgetState extends State<EditProductDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Product Details',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lato',
                color: Colors.black,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.delete,
              color: Color(0xFF949496),
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Image.asset(
                  'assets/images/Stapler1.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Image.asset(
                  'assets/images/Group_950.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40,
                endIndent: 40,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Image.asset(
                  'assets/images/Group_951.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40,
                endIndent: 40,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Image.asset(
                  'assets/images/Group_952.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40,
                endIndent: 40,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Image.asset(
                  'assets/images/desc.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40,
                endIndent: 40,
                color: Color(0x30183C28),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Image.asset(
                  'assets/images/Stock.png',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 0.7,
                indent: 40,
                endIndent: 40,
                color: Color(0x30183C28),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Save',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lato',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
