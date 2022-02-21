import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoaderCWidget extends StatefulWidget {
  const LoaderCWidget({Key key}) : super(key: key);

  @override
  _LoaderCWidgetState createState() => _LoaderCWidgetState();
}

class _LoaderCWidgetState extends State<LoaderCWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFFF1F1F1),
            shape: BoxShape.circle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
          ),
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFFF1F1F1),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
