import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0.1),
          child: Text(
            'AgroAid',
            style: FlutterFlowTheme.of(context).title1,
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
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/c4276787dh4c/login_page_img2.webp',
                  width: 375,
                  height: 812,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.37, 0.6),
                child: Text(
                  '*Please select you language\n*कृपया अपनी भाषा का चयन करें',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF030303),
                        fontSize: 17,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.06, 0.78),
                child: FlutterFlowLanguageSelector(
                  width: 300,
                  height: 50,
                  backgroundColor: Color(0xFF904040),
                  borderColor: Color(0xFF262D34),
                  dropdownIconColor: Color(0xFF14181B),
                  borderRadius: 8,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                  hideFlags: false,
                  flagSize: 24,
                  flagTextGap: 8,
                  currentLanguage: FFLocalizations.of(context).languageCode,
                  languages: FFLocalizations.languages(),
                  onChanged: (lang) => setAppLanguage(context, lang),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
