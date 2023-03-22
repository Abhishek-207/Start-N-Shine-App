import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'profile_new_model.dart';
export 'profile_new_model.dart';

class ProfileNewWidget extends StatefulWidget {
  const ProfileNewWidget({
    Key? key,
    this.currentUserId,
  }) : super(key: key);

  final DocumentReference? currentUserId;

  @override
  _ProfileNewWidgetState createState() => _ProfileNewWidgetState();
}

class _ProfileNewWidgetState extends State<ProfileNewWidget> {
  late ProfileNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileNewModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ProfileNew'});
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

    return StreamBuilder<UserRecord>(
      stream: UserRecord.getDocument(widget.currentUserId!),
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
        final profileNewUserRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).buttonColor,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('PROFILE_NEW_chevron_left_rounded_ICN_ON_');
                logFirebaseEvent('IconButton_navigate_back');
                context.pop();
              },
            ),
            title: GradientText(
              'Profile',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).textColor,
                    fontSize: 22,
                  ),
              colors: [
                FlutterFlowTheme.of(context).gradient1Light,
                FlutterFlowTheme.of(context).gradientLight2
              ],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional(0, -1),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 700,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x320E151B),
                                            offset: Offset(0, -2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 100, 16, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Bio',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          if (widget
                                                                  .currentUserId ==
                                                              currentUserReference)
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius: 30,
                                                              borderWidth: 1,
                                                              buttonSize: 40,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .pen,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 12,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'PROFILE_NEW_PAGE_pen_ICN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'IconButton_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'bioaddingPage',
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
                                                                    ),
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                        ],
                                                      ),
                                                      if ((widget.currentUserId ==
                                                              currentUserReference) &&
                                                          !valueOrDefault<bool>(
                                                              currentUserDocument
                                                                  ?.isVerified,
                                                              false))
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'PROFILE_NEW_PAGE_GET_VERIFIED_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_navigate_to');

                                                              context.pushNamed(
                                                                'VerifiedDemo',
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
                                                            text:
                                                                'Get Verified',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 120,
                                                              height: 30,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if ((widget.currentUserId ==
                                                                currentUserReference) ||
                                                            (profileNewUserRecord
                                                                        .userBio !=
                                                                    null &&
                                                                profileNewUserRecord
                                                                        .userBio !=
                                                                    ''))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        1,
                                                                        10,
                                                                        1),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              valueOrDefault<
                                                                  String>(
                                                                profileNewUserRecord
                                                                    .userBio,
                                                                'Adorn with your vibes :)',
                                                              ).maybeHandleOverflow(
                                                                  maxChars:
                                                                      150),
                                                              maxLines: 3,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                            )),
                                                          ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2, 0, 0, 0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'PROFILE_NEW_PAGE_FOLLOWERS_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                              'followers',
                                                              queryParams: {
                                                                'userRef':
                                                                    serializeParam(
                                                                  widget
                                                                      .currentUserId,
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
                                                          text:
                                                              '${profileNewUserRecord.followers!.toList().length.toString()} Followers',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 130,
                                                            height: 40,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                            elevation: 10,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x5995A1AC),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 3, 0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'PROFILE_NEW_PAGE_FOLLOWING_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                              'following',
                                                              queryParams: {
                                                                'userRef':
                                                                    serializeParam(
                                                                  widget
                                                                      .currentUserId,
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
                                                          text:
                                                              '${profileNewUserRecord.following!.toList().length.toString()} Following',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 130,
                                                            height: 40,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                            elevation: 10,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x5995A1AC),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 12, 0, 0),
                                              child: DefaultTabController(
                                                length: 2,
                                                initialIndex: 0,
                                                child: Column(
                                                  children: [
                                                    TabBar(
                                                      labelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      unselectedLabelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle1,
                                                      indicatorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      tabs: [
                                                        Tab(
                                                          text: 'Posts',
                                                        ),
                                                        Tab(
                                                          text: 'Liked',
                                                        ),
                                                      ],
                                                    ),
                                                    Expanded(
                                                      child: TabBarView(
                                                        children: [
                                                          StreamBuilder<
                                                              List<
                                                                  UserGeneratedContentRecord>>(
                                                            stream:
                                                                queryUserGeneratedContentRecord(
                                                              queryBuilder: (userGeneratedContentRecord) =>
                                                                  userGeneratedContentRecord.where(
                                                                      'createdBy',
                                                                      isEqualTo:
                                                                          widget
                                                                              .currentUserId),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10,
                                                                    height: 10,
                                                                    child:
                                                                        SpinKitFoldingCube(
                                                                      color: Color(
                                                                          0xFF5E17EB),
                                                                      size: 10,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<UserGeneratedContentRecord>
                                                                  listViewUserGeneratedContentRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewUserGeneratedContentRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewUserGeneratedContentRecord =
                                                                      listViewUserGeneratedContentRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            8,
                                                                            5,
                                                                            30),
                                                                    child: StreamBuilder<
                                                                        UserRecord>(
                                                                      stream: UserRecord.getDocument(
                                                                          listViewUserGeneratedContentRecord
                                                                              .createdBy!),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 10,
                                                                              height: 10,
                                                                              child: SpinKitFoldingCube(
                                                                                color: Color(0xFF5E17EB),
                                                                                size: 10,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        final userCardUserRecord =
                                                                            snapshot.data!;
                                                                        return Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 5,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                offset: Offset(0, 2),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                5),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              primary: false,
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (listViewUserGeneratedContentRecord.postImage != null && listViewUserGeneratedContentRecord.postImage != '')
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 5, 4, 5),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10),
                                                                                        child: Image.network(
                                                                                          listViewUserGeneratedContentRecord.postImage!,
                                                                                          width: MediaQuery.of(context).size.width,
                                                                                          fit: BoxFit.fitWidth,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 5, 12, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Stack(
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 55,
                                                                                                  height: 55,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    borderRadius: BorderRadius.circular(100),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(2.5, 2.2, 0, 0),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_CircleImage_8z7hox19_ON_TAP');
                                                                                                      logFirebaseEvent('CircleImage_navigate_to');

                                                                                                      context.pushNamed(
                                                                                                        'ProfileNew',
                                                                                                        queryParams: {
                                                                                                          'currentUserId': serializeParam(
                                                                                                            userCardUserRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                        extra: <String, dynamic>{
                                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                                            hasTransition: true,
                                                                                                            transitionType: PageTransitionType.fade,
                                                                                                          ),
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: 50,
                                                                                                      height: 50,
                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                      decoration: BoxDecoration(
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                      child: Image.network(
                                                                                                        valueOrDefault<String>(
                                                                                                          userCardUserRecord.photoUrl,
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
                                                                                                logFirebaseEvent('PROFILE_NEW_PAGE_Column_wms1v7vo_ON_TAP');
                                                                                                logFirebaseEvent('Column_navigate_to');

                                                                                                context.pushNamed(
                                                                                                  'ProfileNew',
                                                                                                  queryParams: {
                                                                                                    'currentUserId': serializeParam(
                                                                                                      userCardUserRecord.reference,
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
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 2, 0),
                                                                                                        child: Text(
                                                                                                          userCardUserRecord.displayName!,
                                                                                                          maxLines: 2,
                                                                                                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                fontSize: 16,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      if (userCardUserRecord.isVerified == true)
                                                                                                        Icon(
                                                                                                          Icons.verified,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          size: 20,
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                    child: Text(
                                                                                                      userCardUserRecord.usernameWIthSymbol!,
                                                                                                      textAlign: TextAlign.start,
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
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
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                                                          children: [
                                                                                            Builder(
                                                                                              builder: (context) => FlutterFlowIconButton(
                                                                                                borderColor: Colors.transparent,
                                                                                                borderRadius: 30,
                                                                                                buttonSize: 40,
                                                                                                icon: Icon(
                                                                                                  Icons.share_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  size: 24,
                                                                                                ),
                                                                                                onPressed: () async {
                                                                                                  logFirebaseEvent('PROFILE_NEW_share_rounded_ICN_ON_TAP');
                                                                                                  logFirebaseEvent('IconButton_share');
                                                                                                  await Share.share(
                                                                                                    'https://startnshine.page.link/?st=Check%20out%20this%20post%20on%20Start%20N%20Shine&apn=com.mycompany.startnshine&ibi=com.mycompany.startnshine&link=https%3A%2F%2Fstartnshine.page.link%2Fpostcoments%3FugcPost%3D${listViewUserGeneratedContentRecord.reference.id}',
                                                                                                    sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 6),
                                                                                              child: AutoSizeText(
                                                                                                dateTimeFormat(
                                                                                                  'relative',
                                                                                                  listViewUserGeneratedContentRecord.timePosted!,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                      fontFamily: 'Poppins',
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
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 4),
                                                                                            child: SelectionArea(
                                                                                                child: Text(
                                                                                              listViewUserGeneratedContentRecord.postText!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontWeight: FontWeight.w500,
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
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 2, 10, 7),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                AuthUserStreamWidget(
                                                                                                  builder: (context) => FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.favorite_sharp,
                                                                                                      color: valueOrDefault<Color>(
                                                                                                        (currentUserDocument?.isLikedSocial?.toList() ?? []).contains(listViewUserGeneratedContentRecord.reference) ? Color(0xFFFF0000) : FlutterFlowTheme.of(context).primaryText,
                                                                                                        FlutterFlowTheme.of(context).primaryText,
                                                                                                      ),
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_favorite_sharp_ICN_ON_TAP');
                                                                                                      if ((currentUserDocument?.isLikedSocial?.toList() ?? []).contains(listViewUserGeneratedContentRecord.reference)) {
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userGeneratedContentUpdateData1 = {
                                                                                                          'likedBy': FieldValue.arrayRemove([currentUserReference]),
                                                                                                          'likenum': FieldValue.increment(-(1)),
                                                                                                        };
                                                                                                        await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData1);
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userUpdateData1 = {
                                                                                                          'isLikedSocial': FieldValue.arrayRemove([
                                                                                                            listViewUserGeneratedContentRecord.reference
                                                                                                          ]),
                                                                                                        };
                                                                                                        await currentUserReference!.update(userUpdateData1);
                                                                                                        return;
                                                                                                      } else {
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userGeneratedContentUpdateData2 = {
                                                                                                          'likedBy': FieldValue.arrayUnion([currentUserReference]),
                                                                                                          'likenum': FieldValue.increment(1),
                                                                                                        };
                                                                                                        await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData2);
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userUpdateData2 = {
                                                                                                          'isLikedSocial': FieldValue.arrayUnion([
                                                                                                            listViewUserGeneratedContentRecord.reference
                                                                                                          ]),
                                                                                                        };
                                                                                                        await currentUserReference!.update(userUpdateData2);
                                                                                                        return;
                                                                                                      }
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                                InkWell(
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('PROFILE_NEW_PAGE_Text_fjrh0ijy_ON_TAP');
                                                                                                    logFirebaseEvent('Text_navigate_to');

                                                                                                    context.pushNamed(
                                                                                                      'postLikers',
                                                                                                      queryParams: {
                                                                                                        'ugcRef': serializeParam(
                                                                                                          listViewUserGeneratedContentRecord.reference,
                                                                                                          ParamType.DocumentReference,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                      extra: <String, dynamic>{
                                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                                          hasTransition: true,
                                                                                                          transitionType: PageTransitionType.fade,
                                                                                                        ),
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    '${listViewUserGeneratedContentRecord.likenum?.toString()} Likes',
                                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_PAGE_chats_ON_TAP');
                                                                                                      logFirebaseEvent('chats_navigate_to');

                                                                                                      context.pushNamed(
                                                                                                        'postcoments',
                                                                                                        queryParams: {
                                                                                                          'ugcPost': serializeParam(
                                                                                                            listViewUserGeneratedContentRecord.reference,
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
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Icon(
                                                                                                          Icons.mode_comment_rounded,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          size: 24,
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                          child: FutureBuilder<int>(
                                                                                                            future: queryCommentsRecordCount(
                                                                                                              parent: listViewUserGeneratedContentRecord.reference,
                                                                                                            ),
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
                                                                                                              int textCount = snapshot.data!;
                                                                                                              return Text(
                                                                                                                '${textCount.toString()} Comments',
                                                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                      fontFamily: 'Poppins',
                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              if ((userCardUserRecord.reference != currentUserReference) && (userCardUserRecord.isVerified != true))
                                                                                                FlutterFlowIconButton(
                                                                                                  borderColor: Colors.transparent,
                                                                                                  borderRadius: 30,
                                                                                                  buttonSize: 40,
                                                                                                  icon: Icon(
                                                                                                    Icons.flag_sharp,
                                                                                                    color: FFAppState().postsFlagged.contains(listViewUserGeneratedContentRecord.reference) ? Color(0xFFFF0000) : FlutterFlowTheme.of(context).primaryText,
                                                                                                    size: 24,
                                                                                                  ),
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('PROFILE_NEW_PAGE_flag_sharp_ICN_ON_TAP');
                                                                                                    if (FFAppState().postsFlagged.contains(listViewUserGeneratedContentRecord.reference)) {
                                                                                                      logFirebaseEvent('IconButton_backend_call');

                                                                                                      final userGeneratedContentUpdateData1 = {
                                                                                                        'isFlaggedBy': FieldValue.arrayRemove([currentUserReference]),
                                                                                                      };
                                                                                                      await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData1);
                                                                                                      logFirebaseEvent('IconButton_update_app_state');
                                                                                                      setState(() {
                                                                                                        FFAppState().removeFromPostsFlagged(listViewUserGeneratedContentRecord.reference);
                                                                                                      });
                                                                                                      return;
                                                                                                    } else {
                                                                                                      logFirebaseEvent('IconButton_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: Text('Report'),
                                                                                                                content: Text('Do you want to report this post?'),
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
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userGeneratedContentUpdateData2 = {
                                                                                                          'isFlaggedBy': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        };
                                                                                                        await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData2);
                                                                                                        logFirebaseEvent('IconButton_update_app_state');
                                                                                                        setState(() {
                                                                                                          FFAppState().addToPostsFlagged(listViewUserGeneratedContentRecord.reference);
                                                                                                        });
                                                                                                        if (listViewUserGeneratedContentRecord.isFlaggedBy!.toList().length >= 10) {
                                                                                                          logFirebaseEvent('IconButton_backend_call');
                                                                                                          await listViewUserGeneratedContentRecord.reference.delete();
                                                                                                          logFirebaseEvent('IconButton_navigate_to');

                                                                                                          context.pushNamed(
                                                                                                            'SocialFeed',
                                                                                                            extra: <String, dynamic>{
                                                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                                                hasTransition: true,
                                                                                                                transitionType: PageTransitionType.fade,
                                                                                                                duration: Duration(milliseconds: 0),
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
                                                                                              if (userCardUserRecord.reference == currentUserReference)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.delete_forever_rounded,
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                    showLoadingIndicator: true,
                                                                                                    onPressed: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_delete_forever_rounded_ICN_O');
                                                                                                      logFirebaseEvent('IconButton_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: Text('Delete Post ?'),
                                                                                                                content: Text('Deleting this post is permanent'),
                                                                                                                actions: [
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                    child: Text('Cancel'),
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
                                                                                                        logFirebaseEvent('IconButton_backend_call');
                                                                                                        await listViewUserGeneratedContentRecord.reference.delete();
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
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  UserGeneratedContentRecord>>(
                                                            stream:
                                                                queryUserGeneratedContentRecord(
                                                              queryBuilder: (userGeneratedContentRecord) =>
                                                                  userGeneratedContentRecord.where(
                                                                      'likedBy',
                                                                      arrayContains:
                                                                          profileNewUserRecord
                                                                              .reference),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10,
                                                                    height: 10,
                                                                    child:
                                                                        SpinKitFoldingCube(
                                                                      color: Color(
                                                                          0xFF5E17EB),
                                                                      size: 10,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<UserGeneratedContentRecord>
                                                                  listViewUserGeneratedContentRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewUserGeneratedContentRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewUserGeneratedContentRecord =
                                                                      listViewUserGeneratedContentRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            8,
                                                                            5,
                                                                            15),
                                                                    child: StreamBuilder<
                                                                        UserRecord>(
                                                                      stream: UserRecord.getDocument(
                                                                          listViewUserGeneratedContentRecord
                                                                              .createdBy!),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 10,
                                                                              height: 10,
                                                                              child: SpinKitFoldingCube(
                                                                                color: Color(0xFF5E17EB),
                                                                                size: 10,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        final userCardUserRecord =
                                                                            snapshot.data!;
                                                                        return Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 5,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                offset: Offset(0, 2),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                5),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              primary: false,
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (listViewUserGeneratedContentRecord.postImage != null && listViewUserGeneratedContentRecord.postImage != '')
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 5, 4, 5),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10),
                                                                                        child: Image.network(
                                                                                          listViewUserGeneratedContentRecord.postImage!,
                                                                                          width: MediaQuery.of(context).size.width,
                                                                                          fit: BoxFit.fitWidth,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 5, 12, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Stack(
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 55,
                                                                                                  height: 55,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    borderRadius: BorderRadius.circular(100),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(2.5, 2.2, 0, 0),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_CircleImage_19wc2s30_ON_TAP');
                                                                                                      logFirebaseEvent('CircleImage_navigate_to');

                                                                                                      context.pushNamed(
                                                                                                        'ProfileNew',
                                                                                                        queryParams: {
                                                                                                          'currentUserId': serializeParam(
                                                                                                            userCardUserRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                        extra: <String, dynamic>{
                                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                                            hasTransition: true,
                                                                                                            transitionType: PageTransitionType.fade,
                                                                                                          ),
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: 50,
                                                                                                      height: 50,
                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                      decoration: BoxDecoration(
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                      child: Image.network(
                                                                                                        valueOrDefault<String>(
                                                                                                          userCardUserRecord.photoUrl,
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
                                                                                                logFirebaseEvent('PROFILE_NEW_PAGE_Column_79r2zl1n_ON_TAP');
                                                                                                logFirebaseEvent('Column_navigate_to');

                                                                                                context.pushNamed(
                                                                                                  'ProfileNew',
                                                                                                  queryParams: {
                                                                                                    'currentUserId': serializeParam(
                                                                                                      userCardUserRecord.reference,
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
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 2, 0),
                                                                                                        child: Text(
                                                                                                          userCardUserRecord.displayName!,
                                                                                                          maxLines: 2,
                                                                                                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                fontSize: 16,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      if (userCardUserRecord.isVerified == true)
                                                                                                        Icon(
                                                                                                          Icons.verified,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          size: 20,
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                    child: Text(
                                                                                                      userCardUserRecord.usernameWIthSymbol!,
                                                                                                      textAlign: TextAlign.start,
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
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
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                                                          children: [
                                                                                            Builder(
                                                                                              builder: (context) => FlutterFlowIconButton(
                                                                                                borderColor: Colors.transparent,
                                                                                                borderRadius: 30,
                                                                                                buttonSize: 40,
                                                                                                icon: Icon(
                                                                                                  Icons.share_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  size: 24,
                                                                                                ),
                                                                                                onPressed: () async {
                                                                                                  logFirebaseEvent('PROFILE_NEW_share_rounded_ICN_ON_TAP');
                                                                                                  logFirebaseEvent('IconButton_share');
                                                                                                  await Share.share(
                                                                                                    'https://startnshine.page.link/?st=Check%20out%20this%20post%20on%20Start%20N%20Shine&apn=com.mycompany.startnshine&ibi=com.mycompany.startnshine&link=https%3A%2F%2Fstartnshine.page.link%2Fpostcoments%3FugcPost%3D${listViewUserGeneratedContentRecord.reference.id}',
                                                                                                    sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 6),
                                                                                              child: AutoSizeText(
                                                                                                dateTimeFormat(
                                                                                                  'relative',
                                                                                                  listViewUserGeneratedContentRecord.timePosted!,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                      fontFamily: 'Poppins',
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
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 4),
                                                                                            child: SelectionArea(
                                                                                                child: Text(
                                                                                              listViewUserGeneratedContentRecord.postText!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontWeight: FontWeight.w500,
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
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 2, 10, 7),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                AuthUserStreamWidget(
                                                                                                  builder: (context) => FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.favorite_sharp,
                                                                                                      color: valueOrDefault<Color>(
                                                                                                        (currentUserDocument?.isLikedSocial?.toList() ?? []).contains(listViewUserGeneratedContentRecord.reference) ? Color(0xFFFF0000) : FlutterFlowTheme.of(context).primaryText,
                                                                                                        FlutterFlowTheme.of(context).primaryText,
                                                                                                      ),
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_favorite_sharp_ICN_ON_TAP');
                                                                                                      if ((currentUserDocument?.isLikedSocial?.toList() ?? []).contains(listViewUserGeneratedContentRecord.reference)) {
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userGeneratedContentUpdateData1 = {
                                                                                                          'likedBy': FieldValue.arrayRemove([currentUserReference]),
                                                                                                          'likenum': FieldValue.increment(-(1)),
                                                                                                        };
                                                                                                        await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData1);
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userUpdateData1 = {
                                                                                                          'isLikedSocial': FieldValue.arrayRemove([
                                                                                                            listViewUserGeneratedContentRecord.reference
                                                                                                          ]),
                                                                                                        };
                                                                                                        await currentUserReference!.update(userUpdateData1);
                                                                                                        return;
                                                                                                      } else {
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userGeneratedContentUpdateData2 = {
                                                                                                          'likedBy': FieldValue.arrayUnion([currentUserReference]),
                                                                                                          'likenum': FieldValue.increment(1),
                                                                                                        };
                                                                                                        await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData2);
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userUpdateData2 = {
                                                                                                          'isLikedSocial': FieldValue.arrayUnion([
                                                                                                            listViewUserGeneratedContentRecord.reference
                                                                                                          ]),
                                                                                                        };
                                                                                                        await currentUserReference!.update(userUpdateData2);
                                                                                                        return;
                                                                                                      }
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                                InkWell(
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('PROFILE_NEW_PAGE_Text_1liaaaaz_ON_TAP');
                                                                                                    logFirebaseEvent('Text_navigate_to');

                                                                                                    context.pushNamed(
                                                                                                      'postLikers',
                                                                                                      queryParams: {
                                                                                                        'ugcRef': serializeParam(
                                                                                                          listViewUserGeneratedContentRecord.reference,
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
                                                                                                    '${listViewUserGeneratedContentRecord.likenum?.toString()} Likes',
                                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_PAGE_chats_ON_TAP');
                                                                                                      logFirebaseEvent('chats_navigate_to');

                                                                                                      context.pushNamed(
                                                                                                        'postcoments',
                                                                                                        queryParams: {
                                                                                                          'ugcPost': serializeParam(
                                                                                                            listViewUserGeneratedContentRecord.reference,
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
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Icon(
                                                                                                          Icons.mode_comment_rounded,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          size: 24,
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                          child: FutureBuilder<int>(
                                                                                                            future: queryCommentsRecordCount(
                                                                                                              parent: listViewUserGeneratedContentRecord.reference,
                                                                                                            ),
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
                                                                                                              int textCount = snapshot.data!;
                                                                                                              return Text(
                                                                                                                '${textCount.toString()} Comments',
                                                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                      fontFamily: 'Poppins',
                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              if ((userCardUserRecord.reference != currentUserReference) && (userCardUserRecord.isVerified != true))
                                                                                                FlutterFlowIconButton(
                                                                                                  borderColor: Colors.transparent,
                                                                                                  borderRadius: 30,
                                                                                                  buttonSize: 40,
                                                                                                  icon: Icon(
                                                                                                    Icons.flag_sharp,
                                                                                                    color: FFAppState().postsFlagged.contains(listViewUserGeneratedContentRecord.reference) ? Color(0xFFFF0000) : FlutterFlowTheme.of(context).primaryText,
                                                                                                    size: 24,
                                                                                                  ),
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('PROFILE_NEW_PAGE_flag_sharp_ICN_ON_TAP');
                                                                                                    if (FFAppState().postsFlagged.contains(listViewUserGeneratedContentRecord.reference)) {
                                                                                                      logFirebaseEvent('IconButton_backend_call');

                                                                                                      final userGeneratedContentUpdateData1 = {
                                                                                                        'isFlaggedBy': FieldValue.arrayRemove([currentUserReference]),
                                                                                                      };
                                                                                                      await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData1);
                                                                                                      logFirebaseEvent('IconButton_update_app_state');
                                                                                                      setState(() {
                                                                                                        FFAppState().removeFromPostsFlagged(listViewUserGeneratedContentRecord.reference);
                                                                                                      });
                                                                                                      return;
                                                                                                    } else {
                                                                                                      logFirebaseEvent('IconButton_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: Text('Report'),
                                                                                                                content: Text('Do you want to report this post?'),
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
                                                                                                        logFirebaseEvent('IconButton_backend_call');

                                                                                                        final userGeneratedContentUpdateData2 = {
                                                                                                          'isFlaggedBy': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        };
                                                                                                        await listViewUserGeneratedContentRecord.reference.update(userGeneratedContentUpdateData2);
                                                                                                        logFirebaseEvent('IconButton_update_app_state');
                                                                                                        setState(() {
                                                                                                          FFAppState().addToPostsFlagged(listViewUserGeneratedContentRecord.reference);
                                                                                                        });
                                                                                                        if (listViewUserGeneratedContentRecord.isFlaggedBy!.toList().length >= 10) {
                                                                                                          logFirebaseEvent('IconButton_backend_call');
                                                                                                          await listViewUserGeneratedContentRecord.reference.delete();
                                                                                                          logFirebaseEvent('IconButton_navigate_to');

                                                                                                          context.pushNamed(
                                                                                                            'SocialFeed',
                                                                                                            extra: <String, dynamic>{
                                                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                                                hasTransition: true,
                                                                                                                transitionType: PageTransitionType.fade,
                                                                                                                duration: Duration(milliseconds: 0),
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
                                                                                              if (userCardUserRecord.reference == currentUserReference)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.delete_forever_rounded,
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                    showLoadingIndicator: true,
                                                                                                    onPressed: () async {
                                                                                                      logFirebaseEvent('PROFILE_NEW_delete_forever_rounded_ICN_O');
                                                                                                      logFirebaseEvent('IconButton_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: Text('Delete Post ?'),
                                                                                                                content: Text('Deleting this post is permanent'),
                                                                                                                actions: [
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                    child: Text('Cancel'),
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
                                                                                                        logFirebaseEvent('IconButton_backend_call');
                                                                                                        await listViewUserGeneratedContentRecord.reference.delete();
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
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 232.6,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      profileNewUserRecord.coverPhoto,
                                      'https://firebasestorage.googleapis.com/v0/b/start-n-shine.appspot.com/o/20230217_112748_0000.png?alt=media&token=ae497f8d-857d-4ca1-be6e-379a65f0a4b9',
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height: 130,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 168, 0, 0),
                                    child: Text(
                                      profileNewUserRecord.usernameWIthSymbol!,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.87),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 15, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4,
                                                color: Color(0x520E151B),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Builder(
                                            builder: (context) =>
                                                FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8,
                                              borderWidth: 1,
                                              buttonSize: 40,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: Icon(
                                                Icons.share_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 20,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'PROFILE_NEW_share_rounded_ICN_ON_TAP');
                                                logFirebaseEvent(
                                                    'IconButton_generate_current_page_link');
                                                _model.currentPageLink =
                                                    await generateCurrentPageLink(
                                                  context,
                                                  title:
                                                      'Check out my profile on  Start N Shine',
                                                  isShortLink: false,
                                                );

                                                logFirebaseEvent(
                                                    'IconButton_share');
                                                await Share.share(
                                                  _model.currentPageLink,
                                                  sharePositionOrigin:
                                                      getWidgetBoundingBox(
                                                          context),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        if (widget.currentUserId ==
                                            currentUserReference)
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4,
                                                  color: Color(0x520E151B),
                                                  offset: Offset(0, 2),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Visibility(
                                              visible: widget.currentUserId ==
                                                  currentUserReference,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.38, -0.78),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30,
                                                  borderWidth: 1,
                                                  buttonSize: 60,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.pen,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 15,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'PROFILE_NEW_PAGE_pen_ICN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'IconButton_upload_media_to_firebase');
                                                    final selectedMedia =
                                                        await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      maxWidth: 1500.00,
                                                      maxHeight: 500.00,
                                                      imageQuality: 100,
                                                      allowPhoto: true,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      textColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      pickerFontFamily:
                                                          'Montserrat',
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      setState(() => _model
                                                              .isMediaUploading1 =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];
                                                      var downloadUrls =
                                                          <String>[];
                                                      try {
                                                        selectedUploadedFiles =
                                                            selectedMedia
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      height: m
                                                                          .dimensions
                                                                          ?.height,
                                                                      width: m
                                                                          .dimensions
                                                                          ?.width,
                                                                    ))
                                                                .toList();

                                                        downloadUrls =
                                                            (await Future.wait(
                                                          selectedMedia.map(
                                                            (m) async =>
                                                                await uploadData(
                                                                    m.storagePath,
                                                                    m.bytes),
                                                          ),
                                                        ))
                                                                .where((u) =>
                                                                    u != null)
                                                                .map((u) => u!)
                                                                .toList();
                                                      } finally {
                                                        _model.isMediaUploading1 =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                                  .length ==
                                                              selectedMedia
                                                                  .length &&
                                                          downloadUrls.length ==
                                                              selectedMedia
                                                                  .length) {
                                                        setState(() {
                                                          _model.uploadedLocalFile1 =
                                                              selectedUploadedFiles
                                                                  .first;
                                                          _model.uploadedFileUrl1 =
                                                              downloadUrls
                                                                  .first;
                                                        });
                                                      } else {
                                                        setState(() {});
                                                        return;
                                                      }
                                                    }

                                                    logFirebaseEvent(
                                                        'IconButton_backend_call');

                                                    final userUpdateData =
                                                        createUserRecordData(
                                                      coverPhoto: _model
                                                          .uploadedFileUrl1,
                                                    );
                                                    await currentUserReference!
                                                        .update(userUpdateData);
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (widget.currentUserId ==
                                    currentUserReference)
                                  Align(
                                    alignment: AlignmentDirectional(1.1, -1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 130, 0, 0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: FaIcon(
                                          FontAwesomeIcons.pen,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 17,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'PROFILE_NEW_PAGE_pen_ICN_ON_TAP');
                                          logFirebaseEvent(
                                              'IconButton_upload_media_to_firebase');
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            imageQuality: 100,
                                            allowPhoto: true,
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            textColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            pickerFontFamily: 'Montserrat',
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            setState(() => _model
                                                .isMediaUploading2 = true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];
                                            var downloadUrls = <String>[];
                                            try {
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map(
                                                          (m) => FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                              ))
                                                      .toList();

                                              downloadUrls = (await Future.wait(
                                                selectedMedia.map(
                                                  (m) async => await uploadData(
                                                      m.storagePath, m.bytes),
                                                ),
                                              ))
                                                  .where((u) => u != null)
                                                  .map((u) => u!)
                                                  .toList();
                                            } finally {
                                              _model.isMediaUploading2 = false;
                                            }
                                            if (selectedUploadedFiles.length ==
                                                    selectedMedia.length &&
                                                downloadUrls.length ==
                                                    selectedMedia.length) {
                                              setState(() {
                                                _model.uploadedLocalFile2 =
                                                    selectedUploadedFiles.first;
                                                _model.uploadedFileUrl2 =
                                                    downloadUrls.first;
                                              });
                                            } else {
                                              setState(() {});
                                              return;
                                            }
                                          }

                                          logFirebaseEvent(
                                              'IconButton_backend_call');

                                          final userUpdateData =
                                              createUserRecordData(
                                            photoUrl: _model.uploadedFileUrl2,
                                          );
                                          await currentUserReference!
                                              .update(userUpdateData);
                                        },
                                      ),
                                    ),
                                  ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 135, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 3, 0),
                                          child: AutoSizeText(
                                            profileNewUserRecord.displayName!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 22,
                                                ),
                                          ),
                                        ),
                                        if (profileNewUserRecord.isVerified ??
                                            true)
                                          InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'PROFILE_NEW_PAGE_Icon_o41ot22g_ON_TAP');
                                              logFirebaseEvent(
                                                  'Icon_show_snack_bar');
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Verified!',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 2000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.verified,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.01, -1.05),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 192, 0, 19),
                                    child: Text(
                                      profileNewUserRecord.category!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.94, -0.55),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 85, 12, 0),
                                    child: Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 2,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(60),
                                        child: CachedNetworkImage(
                                          imageUrl: valueOrDefault<String>(
                                            profileNewUserRecord.photoUrl,
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMsIiUM3HC3dg7_Yok8d4ZOi1ca8h98q7mRw&usqp=CAU',
                                          ),
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (widget.currentUserId !=
                                    currentUserReference)
                                  Align(
                                    alignment: AlignmentDirectional(0.92, 0.15),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 180, 5, 0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'PROFILE_NEW_PAGE_FOLLOW_BACK_BTN_ON_TAP');
                                            if (!(currentUserDocument?.following
                                                        ?.toList() ??
                                                    [])
                                                .contains(
                                                    widget.currentUserId)) {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              final userUpdateData1 = {
                                                'followers':
                                                    FieldValue.arrayUnion(
                                                        [currentUserReference]),
                                                'followersnum':
                                                    FieldValue.increment(1),
                                              };
                                              await widget.currentUserId!
                                                  .update(userUpdateData1);
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              final userUpdateData2 = {
                                                'following':
                                                    FieldValue.arrayUnion(
                                                        [widget.currentUserId]),
                                                'followingNum':
                                                    FieldValue.increment(1),
                                              };
                                              await currentUserReference!
                                                  .update(userUpdateData2);
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamed(
                                                'ProfileNew',
                                                queryParams: {
                                                  'currentUserId':
                                                      serializeParam(
                                                    widget.currentUserId,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );

                                              return;
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              final userUpdateData3 = {
                                                'followers':
                                                    FieldValue.arrayRemove(
                                                        [currentUserReference]),
                                                'followersnum':
                                                    FieldValue.increment(-(1)),
                                              };
                                              await widget.currentUserId!
                                                  .update(userUpdateData3);
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              final userUpdateData4 = {
                                                'following':
                                                    FieldValue.arrayRemove(
                                                        [widget.currentUserId]),
                                                'followingNum':
                                                    FieldValue.increment(-(1)),
                                              };
                                              await currentUserReference!
                                                  .update(userUpdateData4);
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamed(
                                                'ProfileNew',
                                                queryParams: {
                                                  'currentUserId':
                                                      serializeParam(
                                                    widget.currentUserId,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );

                                              return;
                                            }
                                          },
                                          text: () {
                                            if ((currentUserDocument?.followers
                                                            ?.toList() ??
                                                        [])
                                                    .contains(
                                                        widget.currentUserId) &&
                                                !(currentUserDocument?.following
                                                            ?.toList() ??
                                                        [])
                                                    .contains(
                                                        widget.currentUserId)) {
                                              return 'Follow Back';
                                            } else if (!(currentUserDocument
                                                            ?.followers
                                                            ?.toList() ??
                                                        [])
                                                    .contains(
                                                        widget.currentUserId) &&
                                                !(currentUserDocument?.following
                                                            ?.toList() ??
                                                        [])
                                                    .contains(
                                                        widget.currentUserId)) {
                                              return 'Follow';
                                            } else {
                                              return 'Unfollow';
                                            }
                                          }(),
                                          options: FFButtonOptions(
                                            width: 95,
                                            height: 35,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 10,
                                            borderSide: BorderSide(
                                              color: Color(0x5995A1AC),
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
