import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loader_c_model.dart';
export 'loader_c_model.dart';

class LoaderCWidget extends StatefulWidget {
  const LoaderCWidget({Key? key}) : super(key: key);

  @override
  _LoaderCWidgetState createState() => _LoaderCWidgetState();
}

class _LoaderCWidgetState extends State<LoaderCWidget> {
  late LoaderCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoaderCModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Color(0xFFF1F1F1),
            shape: BoxShape.circle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
        ),
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Color(0xFFF1F1F1),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
