import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/cutomer_c/cutomer_c_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_store/my_store_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_switcher_model.dart';
export 'account_switcher_model.dart';

class AccountSwitcherWidget extends StatefulWidget {
  const AccountSwitcherWidget({Key? key}) : super(key: key);

  @override
  _AccountSwitcherWidgetState createState() => _AccountSwitcherWidgetState();
}

class _AccountSwitcherWidgetState extends State<AccountSwitcherWidget> {
  late AccountSwitcherModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountSwitcherModel());
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
      height: MediaQuery.of(context).size.height * 0.4,
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
            if (valueOrDefault<bool>(
                currentUserDocument?.vendorRegistered, false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<VendorsRecord>(
                    stream: VendorsRecord.getDocument(
                        currentUserDocument!.vendorRef!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      final rowVendorsRecord = snapshot.data!;
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyStoreWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Icon(
                                Icons.brightness_1,
                                color: Color(0xFF65B9C3),
                                size: 50.0,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'fcsi1yti' /* Vendor */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                StreamBuilder<ShopsRecord>(
                                  stream: ShopsRecord.getDocument(
                                      rowVendorsRecord.shopRef!),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    final textShopsRecord = snapshot.data!;
                                    return Text(
                                      textShopsRecord.shopName!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0xFF949496),
                                            fontSize: 12.0,
                                          ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.customerRegistered, false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<CustomersRecord>(
                    stream: CustomersRecord.getDocument(
                        currentUserDocument!.customerRef!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      final rowCustomersRecord = snapshot.data!;
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CutomerCWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Icon(
                                Icons.brightness_1,
                                color: Color(0xFF65B9C3),
                                size: 50.0,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '5h2qaaqz' /* Customer */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'to03l269' /*  Anand Shetty */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Color(0xFF949496),
                                        fontSize: 12.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.transporterRegistered, false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<TransportersRecord>(
                    stream: TransportersRecord.getDocument(
                        currentUserDocument!.transporterRef!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      final rowTransportersRecord = snapshot.data!;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Icon(
                              Icons.brightness_1,
                              color: Color(0xFF65B9C3),
                              size: 50.0,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'e5diwr38' /* Transporter */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'x727qvh9' /*  Anand Shetty */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Color(0xFF949496),
                                      fontSize: 12.0,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.black,
                    size: 50.0,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '6y0kg3lz' /* Add User */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
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
