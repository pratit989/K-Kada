import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_navigator/home_navigator_widget.dart';
import '/registration_navigator/registration_navigator_widget.dart';
import '/welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'registered_check_model.dart';
export 'registered_check_model.dart';

class RegisteredCheckWidget extends StatefulWidget {
  const RegisteredCheckWidget({Key? key}) : super(key: key);

  @override
  _RegisteredCheckWidgetState createState() => _RegisteredCheckWidgetState();
}

class _RegisteredCheckWidgetState extends State<RegisteredCheckWidget> {
  late RegisteredCheckModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisteredCheckModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().userType == 'Customer') {
        if (valueOrDefault<bool>(
            currentUserDocument?.customerRegistered, false)) {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeNavigatorWidget(),
            ),
          );
        } else {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegistrationNavigatorWidget(),
            ),
          );
        }
      } else {
        if (FFAppState().userType == 'Transporter') {
          if (valueOrDefault<bool>(
              currentUserDocument?.transporterRegistered, false)) {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeNavigatorWidget(),
              ),
            );
          } else {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegistrationNavigatorWidget(),
              ),
            );
          }
        } else {
          if (FFAppState().userType == 'Vendor') {
            if (valueOrDefault<bool>(
                currentUserDocument?.vendorRegistered, false)) {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeNavigatorWidget(),
                ),
              );
            } else {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegistrationNavigatorWidget(),
                ),
              );
            }
          } else {
            await authManager.signOut();
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomeWidget(),
              ),
              (r) => false,
            );
          }
        }
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_dbm7jriq.json',
          width: 150.0,
          height: 130.0,
          fit: BoxFit.contain,
          frameRate: FrameRate(60.0),
          animate: true,
        ),
      ),
    );
  }
}
