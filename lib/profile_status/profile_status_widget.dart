import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../verification_completed/verification_completed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileStatusWidget extends StatefulWidget {
  const ProfileStatusWidget({Key key}) : super(key: key);

  @override
  _ProfileStatusWidgetState createState() => _ProfileStatusWidgetState();
}

class _ProfileStatusWidgetState extends State<ProfileStatusWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.verified, false)) {
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
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference),
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
        final profileStatusUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 50),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'l5igix9b' /* Profile Status */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans',
                            color: Colors.white,
                            fontSize: 24,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: ToggleIcon(
                            onPressed: () async {
                              final usersUpdateData = {
                                'verification_requested':
                                    !profileStatusUsersRecord
                                        .verificationRequested,
                              };
                              await profileStatusUsersRecord.reference
                                  .update(usersUpdateData);
                            },
                            value:
                                profileStatusUsersRecord.verificationRequested,
                            onIcon: FaIcon(
                              FontAwesomeIcons.solidCheckCircle,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 25,
                            ),
                            offIcon: FaIcon(
                              FontAwesomeIcons.circle,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 25,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'cp3o361y' /* Verification Requested */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Open Sans',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: ToggleIcon(
                            onPressed: () async {
                              final usersUpdateData = {
                                'kyc_completed':
                                    !profileStatusUsersRecord.kycCompleted,
                              };
                              await profileStatusUsersRecord.reference
                                  .update(usersUpdateData);
                            },
                            value: profileStatusUsersRecord.kycCompleted,
                            onIcon: FaIcon(
                              FontAwesomeIcons.solidCheckCircle,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 25,
                            ),
                            offIcon: FaIcon(
                              FontAwesomeIcons.circle,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 25,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'hjxk41e5' /* KYC Completed */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Open Sans',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: ToggleIcon(
                          onPressed: () async {
                            final usersUpdateData = {
                              'verified': !profileStatusUsersRecord.verified,
                            };
                            await profileStatusUsersRecord.reference
                                .update(usersUpdateData);
                          },
                          value: profileStatusUsersRecord.verified,
                          onIcon: FaIcon(
                            FontAwesomeIcons.solidCheckCircle,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 25,
                          ),
                          offIcon: FaIcon(
                            FontAwesomeIcons.circle,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 25,
                          ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'vj19crki' /* Verification Completed */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '3j8q70cs' /* We will get back to you once t... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
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
