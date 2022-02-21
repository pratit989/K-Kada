import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourLocation2CWidget extends StatefulWidget {
  const YourLocation2CWidget({Key key}) : super(key: key);

  @override
  _YourLocation2CWidgetState createState() => _YourLocation2CWidgetState();
}

class _YourLocation2CWidgetState extends State<YourLocation2CWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 412,
      height: 217,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Divider(
            thickness: 1.5,
            indent: 170,
            endIndent: 170,
            color: Color(0xFF696969),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Your Location',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: '[Some hint text...]',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
