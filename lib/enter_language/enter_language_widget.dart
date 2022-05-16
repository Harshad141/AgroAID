import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterLanguageWidget extends StatefulWidget {
  const EnterLanguageWidget({Key key}) : super(key: key);

  @override
  _EnterLanguageWidgetState createState() => _EnterLanguageWidgetState();
}

class _EnterLanguageWidgetState extends State<EnterLanguageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF00FA10),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0.1),
          child: Text(
            FFLocalizations.of(context).getText(
              'jzlflwox' /* AgroAID */,
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/login_page_img2.webp',
                ).image,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.15, 0.68),
                  child: StreamBuilder<List<AgroaidRecord>>(
                    stream: queryAgroaidRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<AgroaidRecord> languageSelectorAgroaidRecordList =
                          snapshot.data;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data.isEmpty) {
                        return Container();
                      }
                      final languageSelectorAgroaidRecord =
                          languageSelectorAgroaidRecordList.isNotEmpty
                              ? languageSelectorAgroaidRecordList.first
                              : null;
                      return FlutterFlowLanguageSelector(
                        width: 300,
                        height: 50,
                        backgroundColor: Color(0xFF5B90E0),
                        borderColor: Color(0xFF262D34),
                        dropdownColor: Color(0xFF5B90E0),
                        dropdownIconColor: Colors.black,
                        borderRadius: 12,
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                        hideFlags: false,
                        flagSize: 24,
                        flagTextGap: 8,
                        currentLanguage:
                            FFLocalizations.of(context).languageCode,
                        languages: FFLocalizations.languages(),
                        onChanged: (lang) => setAppLanguage(context, lang),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.08, 0.86),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'enter_phonenumber',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 2),
                          ),
                        },
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      'hfhoyrqs' /* Login */,
                    ),
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFF9EEF39),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0B0B0B),
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
          ),
        ),
      ),
    );
  }
}
