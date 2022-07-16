import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../upload_documents/upload_documents_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlmostDoneWidget extends StatefulWidget {
  const AlmostDoneWidget({Key key}) : super(key: key);

  @override
  _AlmostDoneWidgetState createState() => _AlmostDoneWidgetState();
}

class _AlmostDoneWidgetState extends State<AlmostDoneWidget> {
  String dropDownValue1;
  TextEditingController textController1;
  String dropDownValue2;
  TextEditingController textController2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).alternate,
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
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
            child: FutureBuilder<ApiCallResponse>(
              future: CountriesAndStatesCall.call(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                final columnCountriesAndStatesResponse = snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '5wtrqxfq' /* Almost done, */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'lryd6cnr' /* What's your shop address? */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF949496),
                                  ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '04lx3sto' /* *ADDRESS */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Color(0xD9000000),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF183C28),
                                width: 0.3,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF183C28),
                                width: 0.3,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                          maxLines: 3,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Field is required';
                            }
                            if (val.length < 3) {
                              return 'Requires at least 3 characters.';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'b3f5hqnd' /* ( Enter the same address as sh... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF949496),
                                    fontSize: 10,
                                  ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'v40xcfoz' /* *STATE */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Color(0xDA000000),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: FlutterFlowDropDown(
                          options: (CountriesAndStatesCall.states(
                            (columnCountriesAndStatesResponse?.jsonBody ?? ''),
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList()
                              .toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue1 = val),
                          width: MediaQuery.of(context).size.width,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'jfrcbung' /* *CITY */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Color(0xDA000000),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: FlutterFlowDropDown(
                          options: (CountriesAndStatesCall.cities(
                            (columnCountriesAndStatesResponse?.jsonBody ?? ''),
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList()
                              .toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue2 = val),
                          width: MediaQuery.of(context).size.width,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'c8jwcwbb' /* *PIN CODE */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Color(0xDA000000),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      TextFormField(
                        controller: textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF183C28),
                              width: 0.3,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF183C28),
                              width: 0.3,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                        keyboardType: TextInputType.number,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Field is required';
                          }
                          if (val.length < 6) {
                            return 'Requires at least 6 characters.';
                          }
                          if (val.length > 6) {
                            return 'Maximum 6 characters allowed, currently ${val.length}.';
                          }

                          return null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: AuthUserStreamWidget(
                          child: FutureBuilder<VendorsRecord>(
                            future: VendorsRecord.getDocumentOnce(
                                currentUserDocument?.vendorRef),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              final iconButtonVendorsRecord = snapshot.data;
                              return FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 50,
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 25,
                                ),
                                onPressed: () async {
                                  final shopsUpdateData = createShopsRecordData(
                                    address: textController1.text,
                                    state: dropDownValue1,
                                    city: dropDownValue2,
                                    pincode: textController2.text,
                                  );
                                  await iconButtonVendorsRecord.shopRef
                                      .update(shopsUpdateData);
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          UploadDocumentsWidget(),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
