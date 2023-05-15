import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'thats_it_t_model.dart';
export 'thats_it_t_model.dart';

class ThatsItTWidget extends StatefulWidget {
  const ThatsItTWidget({Key? key}) : super(key: key);

  @override
  _ThatsItTWidgetState createState() => _ThatsItTWidgetState();
}

class _ThatsItTWidgetState extends State<ThatsItTWidget> {
  late ThatsItTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThatsItTModel());
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
      backgroundColor: FlutterFlowTheme.of(context).tertiary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xFF183C28),
                          size: 30.0,
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
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 50.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '1seox8x3' /* We just need to knoe, what veh... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF949496),
                        fontSize: 14.0,
                      ),
                ),
              ),
              Image.asset(
                'assets/images/Car.png',
                width: 287.0,
                height: 203.0,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
