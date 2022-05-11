import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyOtpWidget extends StatefulWidget {
  const VerifyOtpWidget({Key key}) : super(key: key);

  @override
  _VerifyOtpWidgetState createState() => _VerifyOtpWidgetState();
}

class _VerifyOtpWidgetState extends State<VerifyOtpWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                child: Stack(
                  children: [
                    Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/y1k8v63ritx2/login_otp.PNG',
                      width: 375,
                      height: 812,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: AutoSizeText(
                              FFLocalizations.of(context).getText(
                                'cg0gk864' /* Please enter the OTP */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(40, 50, 40, 0),
                            child: TextFormField(
                              controller: textController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: FFLocalizations.of(context).getText(
                                  'evyignf0' /* Enter Code */,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor: Color(0xFF938A8A),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF060606),
                                  ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                // verify
                                GoRouter.of(context).ignoringAuthChange();
                                final smsCodeVal = textController.text;
                                if (smsCodeVal.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('Enter SMS verification code.'),
                                    ),
                                  );
                                  return;
                                }
                                final phoneVerifiedUser = await verifySmsCode(
                                  context: context,
                                  smsCode: smsCodeVal,
                                );
                                if (phoneVerifiedUser == null) {
                                  return;
                                }

                                context.pushNamed('landing_page');
                              },
                              text: FFLocalizations.of(context).getText(
                                '0x79bp2j' /* Verify
 */
                                ,
                              ),
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
