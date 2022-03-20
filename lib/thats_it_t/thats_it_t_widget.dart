import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThatsItTWidget extends StatefulWidget {
  const ThatsItTWidget({Key key}) : super(key: key);

  @override
  _ThatsItTWidgetState createState() => _ThatsItTWidgetState();
}

class _ThatsItTWidgetState extends State<ThatsItTWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xFF183C28),
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  '0pzni3lr' /* Thats's it! */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 50),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '1seox8x3' /* We just need to knoe, what veh... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF949496),
                        fontSize: 14,
                      ),
                ),
              ),
              Image.asset(
                'assets/images/Car.png',
                width: 287,
                height: 203,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
