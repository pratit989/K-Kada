import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'your_location2_c_model.dart';
export 'your_location2_c_model.dart';

class YourLocation2CWidget extends StatefulWidget {
  const YourLocation2CWidget({Key? key}) : super(key: key);

  @override
  _YourLocation2CWidgetState createState() => _YourLocation2CWidgetState();
}

class _YourLocation2CWidgetState extends State<YourLocation2CWidget> {
  late YourLocation2CModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YourLocation2CModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
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
      width: 412.0,
      height: 217.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Divider(
              thickness: 1.5,
              indent: 170.0,
              endIndent: 170.0,
              color: Color(0xFF696969),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'pbv1f6e5' /* Your Location */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFFB5B5B5),
                          ),
                    ),
                    Container(
                      width: 219.0,
                      decoration: BoxDecoration(),
                      child: TextFormField(
                        controller: _model.textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: FFLocalizations.of(context).getText(
                            'lp3dkbr9' /* [Some hint text...] */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFFF1F1F1),
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                    Container(
                      width: 219.0,
                      decoration: BoxDecoration(),
                      child: TextFormField(
                        controller: _model.textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            't9geft4i' /* House No / Flat No / Floor* */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF6A6A6A),
                                    fontSize: 10.0,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF707070),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        textAlign: TextAlign.start,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                    Container(
                      width: 219.0,
                      decoration: BoxDecoration(),
                      child: TextFormField(
                        controller: _model.textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'k2very8r' /* Society / Street Name* */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF6A6A6A),
                                    fontSize: 10.0,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF707070),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.5,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        textAlign: TextAlign.start,
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '2aw0xg7x' /* Skip */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF949496),
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'vlkf6zov' /* Change */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 16.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 32.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
