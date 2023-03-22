import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'social_feed_model.dart';
export 'social_feed_model.dart';

class SocialFeedWidget extends StatefulWidget {
  const SocialFeedWidget({Key? key}) : super(key: key);

  @override
  _SocialFeedWidgetState createState() => _SocialFeedWidgetState();
}

class _SocialFeedWidgetState extends State<SocialFeedWidget>
    with TickerProviderStateMixin {
  late SocialFeedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered1 = false;
  var hasContainerTriggered2 = false;
  final animationsMap = {
    'drawerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialFeedModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SocialFeed'});
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        drawer: Drawer(
          elevation: 16,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: AuthUserStreamWidget(
                      builder: (context) => InkWell(
                        onTap: () async {
                          logFirebaseEvent(
                              'SOCIAL_FEED_PAGE_Image_qi88pkab_ON_TAP');
                          logFirebaseEvent('Image_navigate_to');

                          context.pushNamed(
                            'ProfileNew',
                            queryParams: {
                              'currentUserId': serializeParam(
                                currentUserReference,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                              ),
                            },
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: CachedNetworkImage(
                            imageUrl: valueOrDefault<String>(
                              currentUserPhoto,
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMsIiUM3HC3dg7_Yok8d4ZOi1ca8h98q7mRw&usqp=CAU',
                            ),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 3, 0),
                      child: AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'SOCIAL_FEED_PAGE_Text_15qzqy2y_ON_TAP');
                            logFirebaseEvent('Text_navigate_to');

                            context.pushNamed(
                              'ProfileNew',
                              queryParams: {
                                'currentUserId': serializeParam(
                                  currentUserReference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                        ),
                      ),
                    ),
                    if (valueOrDefault<bool>(
                        currentUserDocument?.isVerified, false))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'SOCIAL_FEED_PAGE_Icon_7qslb8f8_ON_TAP');
                              logFirebaseEvent('Icon_show_snack_bar');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Verified',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 1400),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              );
                            },
                            child: Icon(
                              Icons.verified,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'SOCIAL_FEED_PAGE_Text_hjechuti_ON_TAP');
                        logFirebaseEvent('Text_navigate_to');

                        context.pushNamed(
                          'ProfileNew',
                          queryParams: {
                            'currentUserId': serializeParam(
                              currentUserReference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: GradientText(
                        valueOrDefault(
                            currentUserDocument?.usernameWIthSymbol, ''),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                        colors: [
                          FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).tertiaryColor
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 44,
                  thickness: 1,
                  indent: 24,
                  endIndent: 24,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('SOCIAL_FEED_Container_1va7t738_ON_TAP');
                      logFirebaseEvent('Container_navigate_to');

                      context.pushNamed(
                        'ProfileNew',
                        queryParams: {
                          'currentUserId': serializeParam(
                            currentUserReference,
                            ParamType.DocumentReference,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                          ),
                        },
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Icon(
                                  Icons.account_circle,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  'Your Profile',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (Theme.of(context).brightness == Brightness.light)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('SOCIAL_FEED_PAGE_isLightMode_ON_TAP');
                        logFirebaseEvent('isLightMode_set_dark_mode_settings');
                        setDarkModeSetting(context, ThemeMode.dark);
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Icon(
                                    Icons.nights_stay_outlined,
                                    color: Color(0xFF101213),
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'Switch to Dark Mode',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Stack(
                                    alignment: AlignmentDirectional(0, 0),
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.95, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 8, 0),
                                          child: Icon(
                                            Icons.nights_stay,
                                            color: Color(0xFF57636C),
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.11, 0),
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4,
                                                color: Color(0x430B0D0F),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            shape: BoxShape.rectangle,
                                          ),
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
                    ),
                  ),
                if (Theme.of(context).brightness == Brightness.dark)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('SOCIAL_FEED_PAGE_isDarkMode_ON_TAP');
                        logFirebaseEvent('isDarkMode_set_dark_mode_settings');
                        setDarkModeSetting(context, ThemeMode.light);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Color(0xFF1A1F24),
                              offset: Offset(0, 0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: Icon(
                                  Icons.wb_sunny_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Text(
                                    'Switch to Light Mode',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0E3E7),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional(0, 0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-0.9, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 2, 0, 0),
                                        child: Icon(
                                          Icons.wb_sunny_rounded,
                                          color: Color(0xFF95A1AC),
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.9, 0),
                                      child: Container(
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF14181B),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: Color(0x430B0D0F),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          shape: BoxShape.rectangle,
                                        ),
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
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('SOCIAL_FEED_Container_nkdsx0ih_ON_TAP');
                      logFirebaseEvent('Container_navigate_to');

                      context.pushNamed(
                        'supportPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                          ),
                        },
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Icon(
                                  Icons.support_agent,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  'Support',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Rate Us',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('SOCIAL_FEED_PAGE_LOG_OUT_BTN_ON_TAP');
                      logFirebaseEvent('Button_auth');
                      GoRouter.of(context).prepareAuthEvent();
                      await signOut();

                      context.goNamedAuth('Startvideo', mounted);
                    },
                    text: 'Log Out',
                    options: FFButtonOptions(
                      width: 150,
                      height: 44,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle: FlutterFlowTheme.of(context).bodyText2,
                      elevation: 5,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).lineColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ).animateOnPageLoad(animationsMap['drawerOnPageLoadAnimation']!),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      22, 12, 0, 0),
                                  child: Container(
                                    width: 46,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      23, 13, 0, 0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'SOCIAL_FEED_CircleImage_tqnbu3ey_ON_TAP');
                                        logFirebaseEvent('CircleImage_drawer');
                                        scaffoldKey.currentState!.openDrawer();
                                      },
                                      child: Container(
                                        width: 44,
                                        height: 44,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: valueOrDefault<String>(
                                            currentUserPhoto,
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMsIiUM3HC3dg7_Yok8d4ZOi1ca8h98q7mRw&usqp=CAU',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                buttonSize: 45,
                                icon: FaIcon(
                                  FontAwesomeIcons.brain,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'SOCIAL_FEED_PAGE_brain_ICN_ON_TAP');
                                  logFirebaseEvent('IconButton_navigate_to');

                                  context.pushNamed(
                                    'CommunityPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                      ),
                                    },
                                  );
                                },
                              ),
                              badges.Badge(
                                badgeContent: Text(
                                  '1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 10,
                                      ),
                                ),
                                showBadge: false,
                                shape: badges.BadgeShape.circle,
                                badgeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                elevation: 0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 20, 0),
                                position: badges.BadgePosition.topEnd(),
                                animationType: badges.BadgeAnimationType.scale,
                                toAnimate: true,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 10, 0, 0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: FaIcon(
                                      FontAwesomeIcons.solidBell,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 22,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'SOCIAL_FEED_PAGE_solidBell_ICN_ON_TAP');
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamed('Notifications');
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(2.5, 0, 2.5, 0),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                              child: Text(
                                'Hola!',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 60, 0),
                              child: AuthUserStreamWidget(
                                builder: (context) => GradientText(
                                  valueOrDefault<String>(
                                    functions.firstNameExtractor(
                                        currentUserDisplayName),
                                    'No Name',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  colors: [
                                    FlutterFlowTheme.of(context).gradient1Light,
                                    FlutterFlowTheme.of(context).gradientLight2
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 3,
                            buttonSize: 40,
                            icon: FaIcon(
                              FontAwesomeIcons.search,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 21,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SOCIAL_FEED_PAGE_search_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.pushNamed('searchPage');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  PagedListView<DocumentSnapshot<Object?>?,
                      UserGeneratedContentRecord>(
                    pagingController: () {
                      final Query<Object?> Function(Query<Object?>)
                          queryBuilder = (userGeneratedContentRecord) =>
                              userGeneratedContentRecord.orderBy('timePosted',
                                  descending: true);
                      if (_model.pagingController != null) {
                        final query =
                            queryBuilder(UserGeneratedContentRecord.collection);
                        if (query != _model.pagingQuery) {
                          // The query has changed
                          _model.pagingQuery = query;
                          _model.streamSubscriptions
                              .forEach((s) => s?.cancel());
                          _model.streamSubscriptions.clear();
                          _model.pagingController!.refresh();
                        }
                        return _model.pagingController!;
                      }

                      _model.pagingController =
                          PagingController(firstPageKey: null);
                      _model.pagingQuery =
                          queryBuilder(UserGeneratedContentRecord.collection);
                      _model.pagingController!
                          .addPageRequestListener((nextPageMarker) {
                        queryUserGeneratedContentRecordPage(
                          queryBuilder: (userGeneratedContentRecord) =>
                              userGeneratedContentRecord.orderBy('timePosted',
                                  descending: true),
                          nextPageMarker: nextPageMarker,
                          pageSize: 25,
                          isStream: true,
                        ).then((page) {
                          _model.pagingController!.appendPage(
                            page.data,
                            page.nextPageMarker,
                          );
                          final streamSubscription =
                              page.dataStream?.listen((data) {
                            data.forEach((item) {
                              final itemIndexes = _model
                                  .pagingController!.itemList!
                                  .asMap()
                                  .map((k, v) => MapEntry(v.reference.id, k));
                              final index = itemIndexes[item.reference.id];
                              final items = _model.pagingController!.itemList!;
                              if (index != null) {
                                items.replaceRange(index, index + 1, [item]);
                                _model.pagingController!.itemList = {
                                  for (var item in items) item.reference: item
                                }.values.toList();
                              }
                            });
                            setState(() {});
                          });
                          _model.streamSubscriptions.add(streamSubscription);
                        });
                      });
                      return _model.pagingController!;
                    }(),
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    builderDelegate:
                        PagedChildBuilderDelegate<UserGeneratedContentRecord>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 10,
                          height: 10,
                          child: SpinKitFoldingCube(
                            color: Color(0xFF5E17EB),
                            size: 10,
                          ),
                        ),
                      ),

                      itemBuilder: (context, _, listViewIndex) {
                        final listViewUserGeneratedContentRecord =
                            _model.pagingController!.itemList![listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 8, 5, 10),
                          child: StreamBuilder<UserRecord>(
                            stream: UserRecord.getDocument(
                                listViewUserGeneratedContentRecord.createdBy!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: SpinKitFoldingCube(
                                      color: Color(0xFF5E17EB),
                                      size: 10,
                                    ),
                                  ),
                                );
                              }
                              final userCardUserRecord = snapshot.data!;
                              return Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 5),
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (listViewUserGeneratedContentRecord
                                                    .postImage !=
                                                null &&
                                            listViewUserGeneratedContentRecord
                                                    .postImage !=
                                                '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 5, 4, 5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                listViewUserGeneratedContentRecord
                                                    .postImage!,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 12, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: 55,
                                                        height: 55,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(2.5,
                                                                    2.2, 0, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'SOCIAL_FEED_CircleImage_paeq28z7_ON_TAP');
                                                            logFirebaseEvent(
                                                                'CircleImage_navigate_to');

                                                            context.pushNamed(
                                                              'ProfileNew',
                                                              queryParams: {
                                                                'currentUserId':
                                                                    serializeParam(
                                                                  userCardUserRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: Container(
                                                            width: 50,
                                                            height: 50,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                CachedNetworkImage(
                                                              imageUrl:
                                                                  valueOrDefault<
                                                                      String>(
                                                                userCardUserRecord
                                                                    .photoUrl,
                                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMsIiUM3HC3dg7_Yok8d4ZOi1ca8h98q7mRw&usqp=CAU',
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'SOCIAL_FEED_PAGE_Column_kl4cgcne_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Column_navigate_to');

                                                      context.pushNamed(
                                                        'ProfileNew',
                                                        queryParams: {
                                                          'currentUserId':
                                                              serializeParam(
                                                            userCardUserRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          2,
                                                                          0),
                                                              child: Text(
                                                                userCardUserRecord
                                                                    .displayName!,
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                              ),
                                                            ),
                                                            if (userCardUserRecord
                                                                    .isVerified ==
                                                                true)
                                                              Icon(
                                                                Icons.verified,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 20,
                                                              ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            userCardUserRecord
                                                                .usernameWIthSymbol!,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 13,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Builder(
                                                    builder: (context) =>
                                                        Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 20, 0, 0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30,
                                                        buttonSize: 40,
                                                        icon: Icon(
                                                          Icons.share_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24,
                                                        ),
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'SOCIAL_FEED_share_rounded_ICN_ON_TAP');
                                                          logFirebaseEvent(
                                                              'IconButton_generate_current_page_link');
                                                          _model.currentPageLink =
                                                              await generateCurrentPageLink(
                                                            context,
                                                            title:
                                                                'Check out this post on Start N Shine',
                                                            isShortLink: false,
                                                          );

                                                          logFirebaseEvent(
                                                              'IconButton_share');
                                                          await Share.share(
                                                            '${_model.currentPageLink}postcoments%3FugcPost%3D${listViewUserGeneratedContentRecord.reference.id}',
                                                            sharePositionOrigin:
                                                                getWidgetBoundingBox(
                                                                    context),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: AutoSizeText(
                                                      dateTimeFormat(
                                                        'relative',
                                                        listViewUserGeneratedContentRecord
                                                            .timePosted!,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 4, 12, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 8, 0, 4),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    listViewUserGeneratedContentRecord
                                                        .postText!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 3,
                                          thickness: 2,
                                          color: Color(0x33F1F4F8),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 2, 10, 7),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          buttonSize: 40,
                                                          icon: Icon(
                                                            Icons
                                                                .favorite_sharp,
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              (currentUserDocument
                                                                              ?.isLikedSocial
                                                                              ?.toList() ??
                                                                          [])
                                                                      .contains(
                                                                          listViewUserGeneratedContentRecord
                                                                              .reference)
                                                                  ? Color(
                                                                      0xFFFF0000)
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            size: 24,
                                                          ),
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'SOCIAL_FEED_favorite_sharp_ICN_ON_TAP');
                                                            if ((currentUserDocument
                                                                        ?.isLikedSocial
                                                                        ?.toList() ??
                                                                    [])
                                                                .contains(
                                                                    listViewUserGeneratedContentRecord
                                                                        .reference)) {
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              final userGeneratedContentUpdateData1 =
                                                                  {
                                                                'likedBy':
                                                                    FieldValue
                                                                        .arrayRemove([
                                                                  currentUserReference
                                                                ]),
                                                                'likenum': FieldValue
                                                                    .increment(
                                                                        -(1)),
                                                              };
                                                              await listViewUserGeneratedContentRecord
                                                                  .reference
                                                                  .update(
                                                                      userGeneratedContentUpdateData1);
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              final userUpdateData1 =
                                                                  {
                                                                'isLikedSocial':
                                                                    FieldValue
                                                                        .arrayRemove([
                                                                  listViewUserGeneratedContentRecord
                                                                      .reference
                                                                ]),
                                                              };
                                                              await currentUserReference!
                                                                  .update(
                                                                      userUpdateData1);
                                                              return;
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              final userGeneratedContentUpdateData2 =
                                                                  {
                                                                'likedBy':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  currentUserReference
                                                                ]),
                                                                'likenum':
                                                                    FieldValue
                                                                        .increment(
                                                                            1),
                                                              };
                                                              await listViewUserGeneratedContentRecord
                                                                  .reference
                                                                  .update(
                                                                      userGeneratedContentUpdateData2);
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              final userUpdateData2 =
                                                                  {
                                                                'isLikedSocial':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  listViewUserGeneratedContentRecord
                                                                      .reference
                                                                ]),
                                                              };
                                                              await currentUserReference!
                                                                  .update(
                                                                      userUpdateData2);
                                                              return;
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'SOCIAL_FEED_PAGE_Text_amp3c7aa_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Text_navigate_to');

                                                          context.pushNamed(
                                                            'postLikers',
                                                            queryParams: {
                                                              'ugcRef':
                                                                  serializeParam(
                                                                listViewUserGeneratedContentRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          '${listViewUserGeneratedContentRecord.likedBy!.toList().length.toString()} Likes',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20, 0,
                                                                    0, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'SOCIAL_FEED_PAGE_chats_ON_TAP');
                                                            logFirebaseEvent(
                                                                'chats_navigate_to');

                                                            context.pushNamed(
                                                              'postcoments',
                                                              queryParams: {
                                                                'ugcPost':
                                                                    serializeParam(
                                                                  listViewUserGeneratedContentRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .mode_comment_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    FutureBuilder<
                                                                        int>(
                                                                  future:
                                                                      queryCommentsRecordCount(
                                                                    parent: listViewUserGeneratedContentRecord
                                                                        .reference,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              10,
                                                                          height:
                                                                              10,
                                                                          child:
                                                                              SpinKitFoldingCube(
                                                                            color:
                                                                                Color(0xFF5E17EB),
                                                                            size:
                                                                                10,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    int textCount =
                                                                        snapshot
                                                                            .data!;
                                                                    return Text(
                                                                      '${textCount.toString()} Comments',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    if ((userCardUserRecord
                                                                .reference !=
                                                            currentUserReference) &&
                                                        (userCardUserRecord
                                                                .isVerified !=
                                                            true))
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30,
                                                        buttonSize: 40,
                                                        icon: Icon(
                                                          Icons.flag_sharp,
                                                          color: FFAppState()
                                                                  .postsFlagged
                                                                  .contains(
                                                                      listViewUserGeneratedContentRecord
                                                                          .reference)
                                                              ? Color(
                                                                  0xFFFF0000)
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          size: 24,
                                                        ),
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'SOCIAL_FEED_PAGE_flag_sharp_ICN_ON_TAP');
                                                          if ((currentUserDocument
                                                                      ?.socialPostsFlagged
                                                                      ?.toList() ??
                                                                  [])
                                                              .contains(
                                                                  listViewUserGeneratedContentRecord
                                                                      .reference)) {
                                                            logFirebaseEvent(
                                                                'IconButton_backend_call');

                                                            final userGeneratedContentUpdateData1 =
                                                                {
                                                              'isFlaggedBy':
                                                                  FieldValue
                                                                      .arrayRemove([
                                                                currentUserReference
                                                              ]),
                                                            };
                                                            await listViewUserGeneratedContentRecord
                                                                .reference
                                                                .update(
                                                                    userGeneratedContentUpdateData1);
                                                            logFirebaseEvent(
                                                                'IconButton_backend_call');

                                                            final userUpdateData1 =
                                                                {
                                                              'socialPostsFlagged':
                                                                  FieldValue
                                                                      .arrayRemove([
                                                                listViewUserGeneratedContentRecord
                                                                    .reference
                                                              ]),
                                                            };
                                                            await currentUserReference!
                                                                .update(
                                                                    userUpdateData1);
                                                            return;
                                                          } else {
                                                            logFirebaseEvent(
                                                                'IconButton_alert_dialog');
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Report'),
                                                                          content:
                                                                              Text('Do you want to report this post?'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                              child: Text('No'),
                                                                            ),
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                              child: Text('Confirm'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ) ??
                                                                    false;
                                                            if (confirmDialogResponse) {
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              final userGeneratedContentUpdateData2 =
                                                                  {
                                                                'isFlaggedBy':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  currentUserReference
                                                                ]),
                                                              };
                                                              await listViewUserGeneratedContentRecord
                                                                  .reference
                                                                  .update(
                                                                      userGeneratedContentUpdateData2);
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              final userUpdateData2 =
                                                                  {
                                                                'socialPostsFlagged':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  listViewUserGeneratedContentRecord
                                                                      .reference
                                                                ]),
                                                              };
                                                              await currentUserReference!
                                                                  .update(
                                                                      userUpdateData2);
                                                              if (listViewUserGeneratedContentRecord
                                                                      .isFlaggedBy!
                                                                      .toList()
                                                                      .length >=
                                                                  10) {
                                                                logFirebaseEvent(
                                                                    'IconButton_backend_call');
                                                                await listViewUserGeneratedContentRecord
                                                                    .reference
                                                                    .delete();
                                                                logFirebaseEvent(
                                                                    'IconButton_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'SocialFeed',
                                                                  extra: <
                                                                      String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                return;
                                                              }

                                                              return;
                                                            } else {
                                                              return;
                                                            }
                                                          }
                                                        },
                                                      ),
                                                    if (userCardUserRecord
                                                            .reference ==
                                                        currentUserReference)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          buttonSize: 40,
                                                          icon: Icon(
                                                            Icons
                                                                .delete_forever_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 24,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'SOCIAL_FEED_delete_forever_rounded_ICN_O');
                                                            logFirebaseEvent(
                                                                'IconButton_alert_dialog');
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Delete Post'),
                                                                          content:
                                                                              Text('Do you want to delete this post?'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                              child: Text('No'),
                                                                            ),
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                              child: Text('Confirm'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ) ??
                                                                    false;
                                                            if (confirmDialogResponse) {
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');
                                                              await listViewUserGeneratedContentRecord
                                                                  .reference
                                                                  .delete();
                                                              logFirebaseEvent(
                                                                  'IconButton_navigate_to');

                                                              context.goNamed(
                                                                'SocialFeed',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                  ),
                                                                },
                                                              );

                                                              return;
                                                            } else {
                                                              return;
                                                            }
                                                          },
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
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
