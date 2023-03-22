import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'signup_options_model.dart';
export 'signup_options_model.dart';

class SignupOptionsWidget extends StatefulWidget {
  const SignupOptionsWidget({Key? key}) : super(key: key);

  @override
  _SignupOptionsWidgetState createState() => _SignupOptionsWidgetState();
}

class _SignupOptionsWidgetState extends State<SignupOptionsWidget> {
  late SignupOptionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupOptionsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SignupOptions'});
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 20,
            borderWidth: 1,
            buttonSize: 20,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).buttonColor,
              size: 30,
            ),
            onPressed: () async {
              logFirebaseEvent('SIGNUP_OPTIONS_chevron_left_rounded_ICN_');
              logFirebaseEvent('IconButton_navigate_to');

              context.pushNamed('Startvideo');
            },
          ),
          actions: [],
          centerTitle: true,
          toolbarHeight: 50,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: AlignmentDirectional(0, 0.47),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 320,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                    child: Image.asset(
                      'assets/images/logo_text.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(23.5, 50, 23.5, 8.5),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'SIGNUP_OPTIONS_SIGN_UP_WITH_GOOGLE_BTN_O');
                      logFirebaseEvent('Button_auth');
                      GoRouter.of(context).prepareAuthEvent();
                      final user = await signInWithGoogle(context);
                      if (user == null) {
                        return;
                      }
                      if (valueOrDefault<bool>(
                          currentUserDocument?.usernameIsSet, false)) {
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamedAuth(
                          'SocialFeed',
                          mounted,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );

                        return;
                      } else {
                        logFirebaseEvent('Button_navigate_to');

                        context.pushNamedAuth('UsernameNReferral', mounted);

                        logFirebaseEvent('Button_update_app_state');
                        FFAppState().yourUserId = currentUserUid;
                        return;
                      }
                    },
                    text: 'Sign up with Google',
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      size: 18,
                    ),
                    options: FFButtonOptions(
                      width: 326,
                      height: 47,
                      color: Colors.white,
                      textStyle: GoogleFonts.getFont(
                        'Poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                      elevation: 15,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(23.5),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'or',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'SIGNUP_OPTIONS_CREATE_ACCOUNT_BTN_ON_TAP');
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(
                        'SignUpNew',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                    text: 'Create Account',
                    options: FFButtonOptions(
                      width: 320,
                      height: 48,
                      color: Color(0xFF5E17EB),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      elevation: 20,
                      borderSide: BorderSide(
                        color: Color(0x70707080),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Text(
                    'By registering, you agree to our Terms of Use .\n Learn how we collect, use and share your data.\n',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
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
