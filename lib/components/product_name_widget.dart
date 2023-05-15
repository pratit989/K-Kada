import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_name_model.dart';
export 'product_name_model.dart';

class ProductNameWidget extends StatefulWidget {
  const ProductNameWidget({Key? key}) : super(key: key);

  @override
  _ProductNameWidgetState createState() => _ProductNameWidgetState();
}

class _ProductNameWidgetState extends State<ProductNameWidget> {
  late ProductNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductNameModel());

    _model.textController ??= TextEditingController();
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
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'z8fbwkj5' /* Enter your product name */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xD9000000),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Container(
              width: 320.0,
              height: 63.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiary,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0xFF707070),
                  width: 0.5,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: TextFormField(
                  controller: _model.textController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.textController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
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
                    suffixIcon: _model.textController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              _model.textController?.clear();
                              setState(() {});
                            },
                            child: Icon(
                              Icons.clear,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 22.0,
                            ),
                          )
                        : null,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    FFAppState().update(() {
                      FFAppState().productName = _model.textController.text;
                    });
                  },
                  text: FFLocalizations.of(context).getText(
                    'zofjywfc' /* Save */,
                  ),
                  options: FFButtonOptions(
                    width: 130.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: Colors.white,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
