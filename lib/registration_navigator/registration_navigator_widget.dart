import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/register/register_widget.dart';
import '/register_c/register_c_widget.dart';
import '/register_t/register_t_widget.dart';
import '/welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'registration_navigator_model.dart';
export 'registration_navigator_model.dart';

class RegistrationNavigatorWidget extends StatefulWidget {
  const RegistrationNavigatorWidget({Key? key}) : super(key: key);

  @override
  _RegistrationNavigatorWidgetState createState() =>
      _RegistrationNavigatorWidgetState();
}

class _RegistrationNavigatorWidgetState
    extends State<RegistrationNavigatorWidget> {
  late RegistrationNavigatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrationNavigatorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().userType == 'Customer') {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RegisterCWidget(),
          ),
        );
      } else {
        if (FFAppState().userType == 'Transporter') {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterTWidget(),
            ),
          );
        } else {
          if (FFAppState().userType == 'Vendor') {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterWidget(),
              ),
            );
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
