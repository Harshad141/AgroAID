import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawerWidget extends StatefulWidget {
  const SideDrawerWidget({Key key}) : super(key: key);

  @override
  _SideDrawerWidgetState createState() => _SideDrawerWidgetState();
}

class _SideDrawerWidgetState extends State<SideDrawerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'szw3eih7' /* Page Title */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 150, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://picsum.photos/seed/25/600',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.info_sharp,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'ge46b3e1' /* Crop Information  */,
                  ),
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: FlutterFlowTheme.of(context).primaryBtnText,
                dense: false,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cloud_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '2edug73a' /* Weather  */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.textsms,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'lt1o3xop' /* Chat */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'zgjouc68' /* Notification */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.library_books_sharp,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'w5bs3rtc' /* News */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.commute_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'owa6g8k5' /* Vendors */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.share_sharp,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'jq5atwm8' /* Share */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.agriculture,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '97pj2512' /* Hire Machinery */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'p1miry66' /* Hire Labour */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.contact_support,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'ii72bt1u' /* FAQs  */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            Image.asset(
              'assets/images/agroaid_logo.png',
              width: 500,
              height: 100,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
