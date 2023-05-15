import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_account_c_comp_model.dart';
export 'my_account_c_comp_model.dart';

class MyAccountCCompWidget extends StatefulWidget {
  const MyAccountCCompWidget({Key? key}) : super(key: key);

  @override
  _MyAccountCCompWidgetState createState() => _MyAccountCCompWidgetState();
}

class _MyAccountCCompWidgetState extends State<MyAccountCCompWidget> {
  late MyAccountCCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAccountCCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Icon(
                      Icons.brightness_1,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 25.0,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'sqomn5yu' /* My Account */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Icon(
                      Icons.post_add_sharp,
                      size: 25.0,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '4kvc635o' /* About my store */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Icon(
                    Icons.logout,
                    color: Colors.black,
                    size: 25.0,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '6mst8o9n' /* Log Out */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
