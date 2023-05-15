import '/components/check_list_order_details_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'request_cancellation_c_model.dart';
export 'request_cancellation_c_model.dart';

class RequestCancellationCWidget extends StatefulWidget {
  const RequestCancellationCWidget({Key? key}) : super(key: key);

  @override
  _RequestCancellationCWidgetState createState() =>
      _RequestCancellationCWidgetState();
}

class _RequestCancellationCWidgetState
    extends State<RequestCancellationCWidget> {
  late RequestCancellationCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestCancellationCModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 30.0,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'qj0gm7c7' /* Request Cancellation */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 30.0),
                        child: Icon(
                          Icons.error_outlined,
                          color: Color(0xFF686868),
                          size: 13.0,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'z0cj5u5q' /* Please refuse the order if the... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xFF949496),
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.checkListOrderDetailsModel,
                    updateCallback: () => setState(() {}),
                    child: CheckListOrderDetailsWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
                    options: [
                      FFLocalizations.of(context).getText(
                        '5azp3qhh' /* Order created by mistake */,
                      ),
                      FFLocalizations.of(context).getText(
                        'il0abzd7' /* Order would not arrive on time */,
                      ),
                      FFLocalizations.of(context).getText(
                        'slirmos9' /* Shipping cost too high */,
                      ),
                      FFLocalizations.of(context).getText(
                        '6eun9ngw' /* Prices too high */,
                      ),
                      FFLocalizations.of(context).getText(
                        'jm3x6gvu' /* Need to change the shipping ad... */,
                      ),
                      FFLocalizations.of(context).getText(
                        'ybx99kd4' /* Need to change payment method */,
                      ),
                      FFLocalizations.of(context).getText(
                        '95mvfkvi' /* Other */,
                      )
                    ],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 320.0,
                    height: 47.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color: Color(0xFF949496),
                          fontSize: 16.0,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'mht9mbst' /* Cancellation reason (optional) */,
                    ),
                    fillColor: Colors.white,
                    elevation: 2.0,
                    borderColor: Colors.transparent,
                    borderWidth: 0.0,
                    borderRadius: 0.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'wc5rak38' /* Request Cancellation */,
                    ),
                    options: FFButtonOptions(
                      width: 181.0,
                      height: 37.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
