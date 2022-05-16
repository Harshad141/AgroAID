import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewRegDetailsWidget extends StatefulWidget {
  const NewRegDetailsWidget({Key key}) : super(key: key);

  @override
  _NewRegDetailsWidgetState createState() => _NewRegDetailsWidgetState();
}

class _NewRegDetailsWidgetState extends State<NewRegDetailsWidget> {
  String uploadedFileUrl = '';
  TextEditingController aadharnumberController;
  TextEditingController addressController;
  TextEditingController districtController;
  TextEditingController nameController;
  TextEditingController stateController;
  TextEditingController pincodeController;
  AgroaidRecord up;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    aadharnumberController = TextEditingController();
    addressController = TextEditingController(
        text: FFLocalizations.of(context).getText(
      '3vu7hign' /*   */,
    ));
    districtController = TextEditingController(
        text: FFLocalizations.of(context).getText(
      '2818s920' /*   */,
    ));
    nameController = TextEditingController();
    stateController = TextEditingController(
        text: FFLocalizations.of(context).getText(
      'weptftea' /*   */,
    ));
    pincodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFCAF946),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0.1),
          child: Text(
            FFLocalizations.of(context).getText(
              'j8lusv0u' /* AgroAID */,
            ),
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'PT Serif',
                  color: Colors.black,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/sdypqjhozlbp/WhatsApp%20Image%202022-04-27%20at%2010.31.06%20PM.jpeg',
                            ).image,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 30, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'yzv03626' /* PLEASE ENTER YOUR DETAILS  */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '4uqvxnl9' /* Name */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 20, 20, 30),
                                    child: TextFormField(
                                      controller: nameController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'nameController',
                                        Duration(milliseconds: 1000),
                                        () => setState(() {}),
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '5qonxkvi' /*                               ... */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'edqcfm5k' /* Please enter name */,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0B0101),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0B0101),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFDACDCD),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 20, 10),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF060101),
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.name,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 16),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'zyyydeni' /* State */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35, 0, 20, 30),
                                    child: TextFormField(
                                      controller: stateController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'zz6q4g3v' /*                               ... */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '4n51t2a9' /* [Some hint text...] */,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0B0202),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0B0202),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFC4C4C4),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 20, 10),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0B0404),
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 16),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'qe05vrsp' /* District */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 30),
                                    child: TextFormField(
                                      controller: districtController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'dlclb1vb' /*                                */,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF050101),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF050101),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFC4C4C4),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 50, 10),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF110101),
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 16),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'jski3wsy' /* Address  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 0, 20, 30),
                                    child: TextFormField(
                                      controller: addressController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'cmammhi2' /*                               ... */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '7xz0msa9' /* Address */,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0B0101),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0B0101),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFC4C4C4),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 50, 10),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0B0101),
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 25),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '8um6jy16' /* Pin code  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 0, 20, 30),
                                    child: TextFormField(
                                      controller: pincodeController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'qg81b09n' /*                               ... */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '10gvmvxx' /* [Some hint text...] */,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF150202),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF150202),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFC4C4C4),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 50, 10),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0F0202),
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 25),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7n5dz40q' /* Aadhaar  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 0, 20, 30),
                                    child: TextFormField(
                                      controller: aadharnumberController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '2ah5kukb' /*                                */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'tthz4hru' /* [Some hint text...] */,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0F0202),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0F0202),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFC4C4C4),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 50, 10),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF150404),
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        showUploadMessage(
                                          context,
                                          'Uploading file...',
                                          showLoading: true,
                                        );
                                        final downloadUrls = (await Future.wait(
                                                selectedMedia.map((m) async =>
                                                    await uploadData(
                                                        m.storagePath,
                                                        m.bytes))))
                                            .where((u) => u != null)
                                            .toList();
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        if (downloadUrls != null &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          setState(() => uploadedFileUrl =
                                              downloadUrls.first);
                                          showUploadMessage(
                                            context,
                                            'Success!',
                                          );
                                        } else {
                                          showUploadMessage(
                                            context,
                                            'Failed to upload media',
                                          );
                                          return;
                                        }
                                      }
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '1z0cnwqq' /* UPLOAD PHOTO */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 325,
                                      height: 50,
                                      color: Color(0xFFC7C6DE),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xB1120303),
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6, 34, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final agroaidCreateData = {
                                        ...createAgroaidRecordData(
                                          district: valueOrDefault<String>(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              enText: '',
                                              hiText: '',
                                              mrText: '',
                                              orText: '',
                                              teText: '',
                                            ),
                                            'Null',
                                          ),
                                          state: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        'Name': [
                                          valueOrDefault<String>(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              enText: '',
                                              hiText: '',
                                              mrText: '',
                                              orText: '',
                                              teText: '',
                                            ),
                                            'User',
                                          )
                                        ],
                                        'Address': [
                                          valueOrDefault<String>(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              enText: '',
                                              hiText: '',
                                              mrText: '',
                                              orText: '',
                                              teText: '',
                                            ),
                                            'Null',
                                          )
                                        ],
                                        'Pincode': [
                                          random_data.randomInteger(0, 6)
                                        ],
                                        'AadharNumber': [
                                          random_data.randomInteger(0, 12)
                                        ],
                                      };
                                      var agroaidRecordReference =
                                          AgroaidRecord.collection.doc();
                                      await agroaidRecordReference
                                          .set(agroaidCreateData);
                                      up = AgroaidRecord.getDocumentFromData(
                                          agroaidCreateData,
                                          agroaidRecordReference);
                                      context.pushNamed('landing_page');

                                      setState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '9r24zj56' /* SUBMIT  */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Color(0xFFCE0F12),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
