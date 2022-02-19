import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewProductWidget extends StatefulWidget {
  const AddNewProductWidget({
    Key key,
    this.text,
    this.height,
  }) : super(key: key);

  final String text;
  final int height;

  @override
  _AddNewProductWidgetState createState() => _AddNewProductWidgetState();
}

class _AddNewProductWidgetState extends State<AddNewProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 412,
      height: widget.height.toDouble(),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, -1),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: Icon(
                  Icons.add_circle_outline,
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                  size: 50,
                ),
              ),
              Text(
                widget.text,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lato',
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      fontSize: 16,
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
