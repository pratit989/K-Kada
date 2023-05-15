import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/verification_completed/verification_completed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_status_model.dart';
export 'profile_status_model.dart';

class ProfileStatusWidget extends StatefulWidget {
  const ProfileStatusWidget({Key? key}) : super(key: key);

  @override
  _ProfileStatusWidgetState createState() => _ProfileStatusWidgetState();
}

class _ProfileStatusWidgetState extends State<ProfileStatusWidget> {
  late ProfileStatusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileStatusModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault<bool>(currentUserDocument?.verified, false)) {
        await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => VerificationCompletedWidget(),
          ),
          (r) => false,
        );
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
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
        final profileStatusUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 50.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'l5igix9b' /* Profile Status */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: ToggleIcon(
                            onPressed: () async {
                              final usersUpdateData = {
                                'verification_requested':
                                    !profileStatusUsersRecord
                                        .verificationRequested!,
                              };
                              await profileStatusUsersRecord.reference
                                  .update(usersUpdateData);
                            },
                            value:
                                profileStatusUsersRecord.verificationRequested!,
                            onIcon: FaIcon(
                              FontAwesomeIcons.solidCheckCircle,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 25.0,
                            ),
                            offIcon: FaIcon(
                              FontAwesomeIcons.circle,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 25.0,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'cp3o361y' /* Verification Requested */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: ToggleIcon(
                            onPressed: () async {
                              final usersUpdateData = {
                                'kyc_completed':
                                    !profileStatusUsersRecord.kycCompleted!,
                              };
                              await profileStatusUsersRecord.reference
                                  .update(usersUpdateData);
                            },
                            value: profileStatusUsersRecord.kycCompleted!,
                            onIcon: FaIcon(
                              FontAwesomeIcons.solidCheckCircle,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 25.0,
                            ),
                            offIcon: FaIcon(
                              FontAwesomeIcons.circle,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 25.0,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'hjxk41e5' /* KYC Completed */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: ToggleIcon(
                          onPressed: () async {
                            final usersUpdateData = {
                              'verified': !profileStatusUsersRecord.verified!,
                            };
                            await profileStatusUsersRecord.reference
                                .update(usersUpdateData);
                          },
                          value: profileStatusUsersRecord.verified!,
                          onIcon: FaIcon(
                            FontAwesomeIcons.solidCheckCircle,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 25.0,
                          ),
                          offIcon: FaIcon(
                            FontAwesomeIcons.circle,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 25.0,
                          ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'vj19crki' /* Verification Completed */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '3j8q70cs' /* We will get back to you once t... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFFBEBEBE),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
