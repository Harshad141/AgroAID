import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterPhonenumberWidget extends StatefulWidget {
  const EnterPhonenumberWidget({Key key}) : super(key: key);

  @override
  _EnterPhonenumberWidgetState createState() => _EnterPhonenumberWidgetState();
}

class _EnterPhonenumberWidgetState extends State<EnterPhonenumberWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(
        text: FFLocalizations.of(context).getText(
      'ogog7m3l' /* +91 - */,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Image.network(
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agro-aid-d6wj8v/assets/y1k8v63ritx2/login_otp.PNG',
                width: 375,
                height: 812,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.43),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'yssrvxry' /* Enter your Phone number */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 50),
                        child: TextFormField(
                          controller: textController,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'uyqassmk' /* Enter Phone Number */,
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
                            fillColor: Color(0xFFC9B4B4),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          final phoneNumberVal = textController.text;
                          if (phoneNumberVal.isEmpty ||
                              !phoneNumberVal.startsWith('+')) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Phone Number is required and has to start with +.'),
                              ),
                            );
                            return;
                          }
                          await beginPhoneAuth(
                            context: context,
                            phoneNumber: phoneNumberVal,
                            onCodeSent: () async {
                              context.goNamed('verify_otp');
                            },
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          '62b9gh96' /* Send OTP */,
                        ),
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
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
