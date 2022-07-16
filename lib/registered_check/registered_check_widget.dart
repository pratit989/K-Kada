import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_navigator/home_navigator_widget.dart';
import '../registration_navigator/registration_navigator_widget.dart';
import '../welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class RegisteredCheckWidget extends StatefulWidget {
  const RegisteredCheckWidget({Key key}) : super(key: key);

  @override
  _RegisteredCheckWidgetState createState() => _RegisteredCheckWidgetState();
}

class _RegisteredCheckWidgetState extends State<RegisteredCheckWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      if ((FFAppState().userType) == 'Customer') {
        if (valueOrDefault(currentUserDocument?.customerRegistered, false)) {
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
        if ((FFAppState().userType) == 'Transporter') {
          if (valueOrDefault(
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
          if ((FFAppState().userType) == 'Vendor') {
            if (valueOrDefault(currentUserDocument?.vendorRegistered, false)) {
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
            await signOut();
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
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_dbm7jriq.json',
          width: 150,
          height: 130,
          fit: BoxFit.contain,
          frameRate: FrameRate(60),
          animate: true,
        ),
      ),
    );
  }
}
