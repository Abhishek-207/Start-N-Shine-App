import '../components/logo_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'startvideo_model.dart';
export 'startvideo_model.dart';

class StartvideoWidget extends StatefulWidget {
  const StartvideoWidget({Key? key}) : super(key: key);

  @override
  _StartvideoWidgetState createState() => _StartvideoWidgetState();
}

class _StartvideoWidgetState extends State<StartvideoWidget> {
  late StartvideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartvideoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Startvideo'});
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 805,
                    decoration: BoxDecoration(
                      color: Color(0xFF1C1C23),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  FlutterFlowVideoPlayer(
                    path: 'assets/videos/video.mp4',
                    videoType: VideoType.asset,
                    width: double.infinity,
                    height: double.infinity,
                    autoPlay: true,
                    looping: true,
                    showControls: false,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 600, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'STARTVIDEO_PAGE_GET_STARTED_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed(
                            'SignupOptions',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                              ),
                            },
                          );
                        },
                        text: 'Get Started',
                        options: FFButtonOptions(
                          width: 320,
                          height: 48,
                          color: Color(0xFF5E17EB),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                          elevation: 10,
                          borderSide: BorderSide(
                            color: Color(0x70707080),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 670, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'STARTVIDEO_I_HAVE_AN_ACCOUNT\n_BTN_ON_TA');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('Login');
                        },
                        text: 'I have an account\n',
                        options: FFButtonOptions(
                          width: 320,
                          height: 48,
                          color: Color(0x5995A1AC),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                          elevation: 10,
                          borderSide: BorderSide(
                            color: Color(0x80808080),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: wrapWithModel(
                      model: _model.logoModel,
                      updateCallback: () => setState(() {}),
                      child: LogoWidget(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
