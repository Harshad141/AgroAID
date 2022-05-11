import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawerCopyWidget extends StatefulWidget {
  const SideDrawerCopyWidget({Key key}) : super(key: key);

  @override
  _SideDrawerCopyWidgetState createState() => _SideDrawerCopyWidgetState();
}

class _SideDrawerCopyWidgetState extends State<SideDrawerCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
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
                  color: Color(0xFF050505),
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'onu6abns' /* Crop Information  */,
                  ),
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF020202),
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
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '2vp2omvu' /* Weather  */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.textsms,
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '5rrduwz0' /* Chat */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '8n7kegnx' /* Notification */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'joyqc15x' /* News */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'g07y45z9' /* Vendors */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBtnText,
              dense: false,
            ),
            ListTile(
              leading: Icon(
                Icons.share_sharp,
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'aw8hz0mv' /* Share */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'w490pek3' /* Hire Machinery */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'tddwqj6j' /* Hire Labour */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
                color: Colors.black,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'xh96a17d' /* FAQs  */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
