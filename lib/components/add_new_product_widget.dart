import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_new_product_model.dart';
export 'add_new_product_model.dart';

class AddNewProductWidget extends StatefulWidget {
  const AddNewProductWidget({
    Key? key,
    this.text,
    this.height,
  }) : super(key: key);

  final String? text;
  final int? height;

  @override
  _AddNewProductWidgetState createState() => _AddNewProductWidgetState();
}

class _AddNewProductWidgetState extends State<AddNewProductWidget> {
  late AddNewProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewProductModel());
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
      height: widget.height?.toDouble(),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Icon(
                  Icons.add_circle_outline,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 50.0,
                ),
              ),
              Text(
                widget.text!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      color: FlutterFlowTheme.of(context).tertiary,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
