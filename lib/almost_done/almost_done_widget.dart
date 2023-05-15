import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/upload_documents/upload_documents_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'almost_done_model.dart';
export 'almost_done_model.dart';

class AlmostDoneWidget extends StatefulWidget {
  const AlmostDoneWidget({Key? key}) : super(key: key);

  @override
  _AlmostDoneWidgetState createState() => _AlmostDoneWidgetState();
}

class _AlmostDoneWidgetState extends State<AlmostDoneWidget> {
  late AlmostDoneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlmostDoneModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).alternate,
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
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '5wtrqxfq' /* Almost done, */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'lryd6cnr' /* What's your shop address? */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            color: Color(0xFF949496),
                          ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '04lx3sto' /* *ADDRESS */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xD9000000),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                    child: TextFormField(
                      controller: _model.textController1,
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
                            color: Color(0x00000000),
                            width: 0.3,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.3,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0.3,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                      maxLines: 3,
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'b3f5hqnd' /* ( Enter the same address as sh... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            color: Color(0xFF949496),
                            fontSize: 10.0,
                          ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'v40xcfoz' /* *STATE */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xDA000000),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: StatesAndCitiesCall.call(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          );
                        }
                        final dropDownStatesAndCitiesResponse = snapshot.data!;
                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController1 ??=
                              FormFieldController<String>(null),
                          options: (StatesAndCitiesCall.states(
                            dropDownStatesAndCitiesResponse.jsonBody,
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList()!
                              .toList(),
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue1 = val),
                          width: MediaQuery.of(context).size.width * 1.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
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
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          isSearchable: false,
                        );
                      },
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'jfrcbung' /* *CITY */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xDA000000),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: StatesAndCitiesCall.call(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          );
                        }
                        final dropDownStatesAndCitiesResponse = snapshot.data!;
                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<String>(null),
                          options: (StatesAndCitiesCall.states(
                            dropDownStatesAndCitiesResponse.jsonBody,
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList()!
                              .toList(),
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue2 = val),
                          width: MediaQuery.of(context).size.width * 1.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
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
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          isSearchable: false,
                        );
                      },
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'c8jwcwbb' /* *PIN CODE */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xDA000000),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  TextFormField(
                    controller: _model.textController2,
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
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    keyboardType: TextInputType.number,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => FutureBuilder<VendorsRecord>(
                        future: VendorsRecord.getDocumentOnce(
                            currentUserDocument!.vendorRef!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            );
                          }
                          final iconButtonVendorsRecord = snapshot.data!;
                          return FlutterFlowIconButton(
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
                              final shopsUpdateData = createShopsRecordData(
                                address: _model.textController1.text,
                                state: _model.dropDownValue1,
                                city: _model.dropDownValue2,
                                pincode: _model.textController2.text,
                              );
                              await iconButtonVendorsRecord.shopRef!
                                  .update(shopsUpdateData);
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UploadDocumentsWidget(),
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
            ),
          ),
        ),
      ),
    );
  }
}
