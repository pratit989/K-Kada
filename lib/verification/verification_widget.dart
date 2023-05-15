import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registered_check/registered_check_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verification_model.dart';
export 'verification_model.dart';

class VerificationWidget extends StatefulWidget {
  const VerificationWidget({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  final String? phoneNumber;

  @override
  _VerificationWidgetState createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<VerificationWidget> {
  late VerificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificationModel());

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
      backgroundColor: Colors.black,
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
            color: Colors.white,
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
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'flsrh0ca' /* Verification */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(60.0, 10.0, 60.0, 20.0),
              child: Text(
                'Please enter the 6 digit verification code we have sent you on ${widget.phoneNumber}',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      color: Color(0xFFBEBEBE),
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  controller: _model.textController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: FFLocalizations.of(context).getText(
                      'qh1snv6i' /* Enter OTP */,
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
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'q17tmdlt' /* Don't have an account? */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Color(0xFFE4E4E4),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        final phoneNumberVal = widget.phoneNumber;
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
                                  phoneNumber: widget.phoneNumber,
                                ),
                              ),
                              (r) => false,
                            );
                          },
                        );
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'id8irn2h' /*  Resend */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFFEEC643),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FFButtonWidget(
                onPressed: () async {
                  final smsCodeVal = _model.textController.text;
                  if (smsCodeVal == null || smsCodeVal.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Enter SMS verification code.'),
                      ),
                    );
                    return;
                  }
                  final phoneVerifiedUser = await authManager.verifySmsCode(
                    context: context,
                    smsCode: smsCodeVal,
                  );
                  if (phoneVerifiedUser == null) {
                    return;
                  }

                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisteredCheckWidget(),
                    ),
                    (r) => false,
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'kzn1hrux' /* Confirm */,
                ),
                options: FFButtonOptions(
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
          ],
        ),
      ),
    );
  }
}
