import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/verification/verification_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'get_started_model.dart';
export 'get_started_model.dart';

class GetStartedWidget extends StatefulWidget {
  const GetStartedWidget({Key? key}) : super(key: key);

  @override
  _GetStartedWidgetState createState() => _GetStartedWidgetState();
}

class _GetStartedWidgetState extends State<GetStartedWidget> {
  late GetStartedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetStartedModel());

    _model.textController ??= TextEditingController();
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
      backgroundColor: Color(0xE5000000),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).tertiary,
            size: 30.0,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: Stack(
        alignment: AlignmentDirectional(0.0, 1.0),
        children: [
          Image.asset(
            'assets/images/Boy.png',
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            fit: BoxFit.fill,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xE5000000),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'u4rxuqjz' /* Get Started! */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).tertiary,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0x58B6AF9A),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: TextFormField(
                            controller: _model.textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                '1fbo4j9g' /* Enter Phone number */,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFFE4E4E4),
                                  fontSize: 16.0,
                                ),
                            textAlign: TextAlign.center,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.formattedPhoneNumber =
                              await actions.phoneNumberFormatter(
                            _model.textController.text,
                          );
                          final phoneNumberVal = _model.formattedPhoneNumber;
                          if (phoneNumberVal == null ||
                              phoneNumberVal.isEmpty ||
                              !phoneNumberVal.startsWith('+')) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Phone Number is required and has to start with +.'),
                              ),
                            );
                            return;
                          }
                          await authManager.beginPhoneAuth(
                            context: context,
                            phoneNumber: phoneNumberVal,
                            onCodeSent: () async {
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VerificationWidget(
                                    phoneNumber: _model.formattedPhoneNumber,
                                  ),
                                ),
                                (r) => false,
                              );
                            },
                          );

                          setState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'pgwd7q2t' /* Sign In */,
                        ),
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF183C28),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
