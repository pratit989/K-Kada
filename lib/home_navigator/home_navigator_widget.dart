import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_store/my_store_widget.dart';
import '/select_area_c/select_area_c_widget.dart';
import '/transporter_home_t/transporter_home_t_widget.dart';
import '/welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'home_navigator_model.dart';
export 'home_navigator_model.dart';

class HomeNavigatorWidget extends StatefulWidget {
  const HomeNavigatorWidget({Key? key}) : super(key: key);

  @override
  _HomeNavigatorWidgetState createState() => _HomeNavigatorWidgetState();
}

class _HomeNavigatorWidgetState extends State<HomeNavigatorWidget> {
  late HomeNavigatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeNavigatorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().userType == 'Customer') {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectAreaCWidget(),
          ),
        );
      } else {
        if (FFAppState().userType == 'Transporter') {
          await Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => TransporterHomeTWidget(),
            ),
            (r) => false,
          );
        } else {
          if (FFAppState().userType == 'Vendor') {
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => MyStoreWidget(),
              ),
              (r) => false,
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
