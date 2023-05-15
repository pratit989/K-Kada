import '/components/check_list_order_details_widget.dart';
import '/components/products_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'check_list_model.dart';
export 'check_list_model.dart';

class CheckListWidget extends StatefulWidget {
  const CheckListWidget({Key? key}) : super(key: key);

  @override
  _CheckListWidgetState createState() => _CheckListWidgetState();
}

class _CheckListWidgetState extends State<CheckListWidget> {
  late CheckListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckListModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          Icons.arrow_back_ios_sharp,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 30.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 100.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '8vuz3jlv' /* Check List */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.checkListOrderDetailsModel,
                  updateCallback: () => setState(() {}),
                  child: CheckListOrderDetailsWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4ofaughh' /* Items */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                        ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.productsCopyModel,
                          updateCallback: () => setState(() {}),
                          child: ProductsCopyWidget(),
                        ),
                      ),
                    ],
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
