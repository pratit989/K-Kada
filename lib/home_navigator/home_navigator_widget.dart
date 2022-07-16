import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../my_store/my_store_widget.dart';
import '../select_area_c/select_area_c_widget.dart';
import '../transporter_home_t/transporter_home_t_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomeNavigatorWidget extends StatefulWidget {
  const HomeNavigatorWidget({Key key}) : super(key: key);

  @override
  _HomeNavigatorWidgetState createState() => _HomeNavigatorWidgetState();
}

class _HomeNavigatorWidgetState extends State<HomeNavigatorWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      if ((FFAppState().userType) == 'Customer') {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectAreaCWidget(),
          ),
        );
      } else {
        if ((FFAppState().userType) == 'Transporter') {
          await Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => TransporterHomeTWidget(),
            ),
            (r) => false,
          );
        } else {
          await Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MyStoreWidget(),
            ),
            (r) => false,
          );
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
