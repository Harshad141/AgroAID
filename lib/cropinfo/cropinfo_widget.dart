import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class CropinfoWidget extends StatefulWidget {
  const CropinfoWidget({Key key}) : super(key: key);

  @override
  _CropinfoWidgetState createState() => _CropinfoWidgetState();
}

class _CropinfoWidgetState extends State<CropinfoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF17B33F),
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
                child: Image.asset(
                  'assets/images/home_image.webp',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: InkWell(
                onTap: () async {
                  context.goNamed('CROPINFO');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.info_sharp,
                    color: Color(0xFF050505),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'xg85vcay' /* Crop Information  */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed('myfriends');
              },
              child: ListTile(
                leading: Icon(
                  Icons.textsms,
                  color: Colors.black,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'u2j7hqix' /* Chat */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed('News');
              },
              child: ListTile(
                leading: Icon(
                  Icons.library_books_sharp,
                  color: Colors.black,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    '85r95slh' /* News */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed('search_vendors');
              },
              child: ListTile(
                leading: Icon(
                  Icons.commute_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    's16qinor' /* Vendors */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed('myfriends');
              },
              child: ListTile(
                leading: Icon(
                  Icons.share_sharp,
                  color: Colors.black,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'ii5hua5z' /* Share */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed('hire_machineries');
              },
              child: ListTile(
                leading: Icon(
                  Icons.agriculture,
                  color: Colors.black,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'e9eu6dzg' /* Hire Machinery */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed('faqs');
              },
              child: ListTile(
                leading: Icon(
                  Icons.contact_support,
                  color: Colors.black,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    '1hizsvwt' /* FAQs  */,
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
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
              child: Image.asset(
                'assets/images/agroaid_logo.png',
                width: 500,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/cropinfo',
                    ).image,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 20),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '2v5sbddr' /*     CROP INFORMATION */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF080808),
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                context.pushNamed('crop1');
                              },
                              onLongPress: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.network(
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/wjuznjqpz5gl/wheat.jpg',
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: 'crop1Tag',
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'crop1Tag',
                                transitionOnUserGestures: true,
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/wjuznjqpz5gl/wheat.jpg',
                                  width: 150,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop2');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/mk1riaiea0ts/groundnut.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop3');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/abn1pjppmqpf/corn.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop4');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/2vihxitir50n/cotton.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop6');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/amcd8rnvhurn/milletes.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop6');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/0be6w02nslme/barley.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop7');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/wvmdixf4skqt/jute.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop8');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/48mrnuwnz7sz/linseed.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop9');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/syqspygq9k9x/mustard.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop10');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/kn1k5y1r9yvh/rice.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop11');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/mgq2bv1qo299/sugarecane.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('Crop12');
                              },
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/1fdqk9sh5wjm/tomato.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
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
        ),
      ),
    );
  }
}
