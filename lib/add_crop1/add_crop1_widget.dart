import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCrop1Widget extends StatefulWidget {
  const AddCrop1Widget({Key key}) : super(key: key);

  @override
  _AddCrop1WidgetState createState() => _AddCrop1WidgetState();
}

class _AddCrop1WidgetState extends State<AddCrop1Widget> {
  String dropDownValue1;
  String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 304,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B39EF),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.7, 0),
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/UI_avatar@2x.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.7, 0),
                                  child: Icon(
                                    Icons.edit_rounded,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'x0xza3t6' /* [User Name] */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'abirande' /* [username@domain.com] */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFFEE8B60),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B39EF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Image.asset(
                                    'assets/images/barley.jpg',
                                    width: MediaQuery.of(context).size.width,
                                    height: 270,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color(0xFFF1F4F8),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFF4B39EF),
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ae2674ec' /* Add Crop :  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF090F13),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: FlutterFlowDropDown(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    '8z1qsoni' /* Wheat */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '9ge7eclv' /* Rice  */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '9thewt7e' /* Maize  */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'f6kdvuva' /* Milletes */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'dwq84f6r' /* Tomato */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'jlebhlck' /* Ground nut */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'tg355a97' /* Corn */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'y8iwrhcf' /* Cotton */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'dda8zm6e' /* Barley */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'ok6t5488' /* Jute */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    't1isjtxt' /* Linseed */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'zg11je6e' /* Mustard */,
                                  )
                                ].toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownValue1 = val),
                                width: 180,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '8wen9f75' /* Select Crop */,
                                ),
                                fillColor:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                elevation: 2,
                                borderColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                borderWidth: 3,
                                borderRadius: 10,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFFF1F4F8),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFF4B39EF),
                                    size: 24,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '0x2ugdvt' /* Add Quantity :  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF090F13),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: FlutterFlowDropDown(
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'fe42wjye' /* 1 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'o9r7fw4x' /* 2 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'n2a11vpf' /* 3 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'rshyplf7' /* 4 hc  */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'hjjl3ek7' /* 5 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '17hshla9' /* 6 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '9vgd8u3o' /* 7 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '38fw56s5' /* 8 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'sjvrtl75' /* 9 hc */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '4barpphy' /* 10 hc */,
                                      )
                                    ].toList(),
                                    onChanged: (val) =>
                                        setState(() => dropDownValue2 = val),
                                    width: 180,
                                    height: 50,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'zlgi2m3r' /* Select Quantiyt  */,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    elevation: 2,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    borderWidth: 3,
                                    borderRadius: 10,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12, 4, 12, 4),
                                    hidesUnderline: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('search_vendors');
                      },
                      text: FFLocalizations.of(context).getText(
                        't294v30k' /* Search Vendors  */,
                      ),
                      options: FFButtonOptions(
                        width: 200,
                        height: 40,
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF4B39EF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Color(0xFF0A0372),
                          width: 1,
                        ),
                        borderRadius: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
