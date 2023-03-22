import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'postcoments_model.dart';
export 'postcoments_model.dart';

class PostcomentsWidget extends StatefulWidget {
  const PostcomentsWidget({
    Key? key,
    this.ugcPost,
  }) : super(key: key);

  final DocumentReference? ugcPost;

  @override
  _PostcomentsWidgetState createState() => _PostcomentsWidgetState();
}

class _PostcomentsWidgetState extends State<PostcomentsWidget> {
  late PostcomentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostcomentsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'postcoments'});
    _model.commentBoxController ??= TextEditingController();
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

    return StreamBuilder<UserGeneratedContentRecord>(
      stream: UserGeneratedContentRecord.getDocument(widget.ugcPost!),
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
        final postcomentsUserGeneratedContentRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('POSTCOMENTS_arrow_back_rounded_ICN_ON_TA');
                logFirebaseEvent('IconButton_navigate_back');
                context.pop();
              },
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: StreamBuilder<List<CommentsRecord>>(
              stream: queryCommentsRecord(
                parent: postcomentsUserGeneratedContentRecord.reference,
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
                List<CommentsRecord> containerCommentsRecordList =
                    snapshot.data!;
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 8, 5, 10),
                          child: StreamBuilder<UserRecord>(
                            stream: UserRecord.getDocument(
                                postcomentsUserGeneratedContentRecord
                                    .createdBy!),
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
                                        if (postcomentsUserGeneratedContentRecord
                                                    .postImage !=
                                                null &&
                                            postcomentsUserGeneratedContentRecord
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
                                                postcomentsUserGeneratedContentRecord
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
                                                mainAxisSize: MainAxisSize.max,
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
                                                                'POSTCOMENTS_CircleImage_is9rz3uy_ON_TAP');
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
                                                          'POSTCOMENTS_PAGE_Column_ebhjwzgp_ON_TAP');
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Builder(
                                                    builder: (context) =>
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30,
                                                      buttonSize: 40,
                                                      icon: Icon(
                                                        Icons.share_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'POSTCOMENTS_share_rounded_ICN_ON_TAP');
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
                                                          _model
                                                              .currentPageLink,
                                                          sharePositionOrigin:
                                                              getWidgetBoundingBox(
                                                                  context),
                                                        );
                                                      },
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
                                                        postcomentsUserGeneratedContentRecord
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
                                                      .fromSTEB(0, 10, 0, 4),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    postcomentsUserGeneratedContentRecord
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
                                                                          postcomentsUserGeneratedContentRecord
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
                                                                'POSTCOMENTS_favorite_sharp_ICN_ON_TAP');
                                                            if ((currentUserDocument
                                                                        ?.isLikedSocial
                                                                        ?.toList() ??
                                                                    [])
                                                                .contains(
                                                                    postcomentsUserGeneratedContentRecord
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
                                                              await postcomentsUserGeneratedContentRecord
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
                                                                  postcomentsUserGeneratedContentRecord
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
                                                              await postcomentsUserGeneratedContentRecord
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
                                                                  postcomentsUserGeneratedContentRecord
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
                                                              'POSTCOMENTS_PAGE_Text_djg5edj0_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Text_navigate_to');

                                                          context.pushNamed(
                                                            'postLikers',
                                                            queryParams: {
                                                              'ugcRef':
                                                                  serializeParam(
                                                                postcomentsUserGeneratedContentRecord
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
                                                          '${postcomentsUserGeneratedContentRecord.likenum?.toString()} Likes',
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
                                                                'POSTCOMENTS_PAGE_chats_ON_TAP');
                                                            logFirebaseEvent(
                                                                'chats_navigate_to');

                                                            context.pushNamed(
                                                              'postcoments',
                                                              queryParams: {
                                                                'ugcPost':
                                                                    serializeParam(
                                                                  postcomentsUserGeneratedContentRecord
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
                                                                    parent: postcomentsUserGeneratedContentRecord
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
                                                                      postcomentsUserGeneratedContentRecord
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
                                                              'POSTCOMENTS_PAGE_flag_sharp_ICN_ON_TAP');
                                                          if (FFAppState()
                                                              .postsFlagged
                                                              .contains(
                                                                  postcomentsUserGeneratedContentRecord
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
                                                            await postcomentsUserGeneratedContentRecord
                                                                .reference
                                                                .update(
                                                                    userGeneratedContentUpdateData1);
                                                            logFirebaseEvent(
                                                                'IconButton_update_app_state');
                                                            setState(() {
                                                              FFAppState().removeFromPostsFlagged(
                                                                  postcomentsUserGeneratedContentRecord
                                                                      .reference);
                                                            });
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
                                                              await postcomentsUserGeneratedContentRecord
                                                                  .reference
                                                                  .update(
                                                                      userGeneratedContentUpdateData2);
                                                              logFirebaseEvent(
                                                                  'IconButton_update_app_state');
                                                              setState(() {
                                                                FFAppState().addToPostsFlagged(
                                                                    postcomentsUserGeneratedContentRecord
                                                                        .reference);
                                                              });
                                                              if (postcomentsUserGeneratedContentRecord
                                                                      .isFlaggedBy!
                                                                      .toList()
                                                                      .length >=
                                                                  10) {
                                                                logFirebaseEvent(
                                                                    'IconButton_backend_call');
                                                                await postcomentsUserGeneratedContentRecord
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
                                                                'POSTCOMENTS_delete_forever_rounded_ICN_O');
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
                                                              await postcomentsUserGeneratedContentRecord
                                                                  .reference
                                                                  .delete();
                                                              logFirebaseEvent(
                                                                  'IconButton_update_app_state');
                                                              setState(() {});
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
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 12),
                          child: StreamBuilder<List<CommentsRecord>>(
                            stream: queryCommentsRecord(
                              parent: widget.ugcPost,
                              queryBuilder: (commentsRecord) =>
                                  commentsRecord.orderBy('commentTime'),
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
                              List<CommentsRecord> listViewCommentsRecordList =
                                  snapshot.data!;
                              if (listViewCommentsRecordList.isEmpty) {
                                return Image.network(
                                  '',
                                );
                              }
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewCommentsRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewCommentsRecord =
                                      listViewCommentsRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 12),
                                    child: StreamBuilder<UserRecord>(
                                      stream: UserRecord.getDocument(
                                          listViewCommentsRecord.commentedBy!),
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
                                        final rowUserRecord = snapshot.data!;
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                  ),
                                                ),
                                                child: InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'POSTCOMENTS_PAGE_Image_v0virsim_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Image_navigate_to');

                                                    context.pushNamed(
                                                      'ProfileNew',
                                                      queryParams: {
                                                        'currentUserId':
                                                            serializeParam(
                                                          listViewCommentsRecord
                                                              .commentedBy,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    child: CachedNetworkImage(
                                                      imageUrl: valueOrDefault<
                                                          String>(
                                                        rowUserRecord.photoUrl,
                                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMsIiUM3HC3dg7_Yok8d4ZOi1ca8h98q7mRw&usqp=CAU',
                                                      ),
                                                      width: 40,
                                                      height: 40,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.75,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 8, 12, 8),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            2,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'POSTCOMENTS_PAGE_Text_rqthecxa_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'ProfileNew',
                                                                      queryParams:
                                                                          {
                                                                        'currentUserId':
                                                                            serializeParam(
                                                                          listViewCommentsRecord
                                                                              .commentedBy,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <
                                                                          String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  child: Text(
                                                                    rowUserRecord
                                                                        .displayName!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (rowUserRecord
                                                                      .isVerified ??
                                                                  true)
                                                                Icon(
                                                                  Icons
                                                                      .verified,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 20,
                                                                ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'POSTCOMENTS_PAGE_Text_ta6fa4yp_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Text_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'ProfileNew',
                                                                  queryParams: {
                                                                    'currentUserId':
                                                                        serializeParam(
                                                                      listViewCommentsRecord
                                                                          .commentedBy,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
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
                                                              },
                                                              child: Text(
                                                                rowUserRecord
                                                                    .usernameWIthSymbol!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            listViewCommentsRecord
                                                                .commentText!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      buttonSize:
                                                                          40,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .favorite_rounded,
                                                                        color: (currentUserDocument?.isLikedComments?.toList() ?? []).contains(listViewCommentsRecord.reference)
                                                                            ? Color(0xFFE14452)
                                                                            : FlutterFlowTheme.of(context).primaryColor,
                                                                        size:
                                                                            24,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'POSTCOMENTS_favorite_rounded_ICN_ON_TAP');
                                                                        if ((currentUserDocument?.isLikedComments?.toList() ??
                                                                                [])
                                                                            .contains(listViewCommentsRecord.reference)) {
                                                                          logFirebaseEvent(
                                                                              'IconButton_backend_call');

                                                                          final commentsUpdateData1 =
                                                                              {
                                                                            'isLikedBy':
                                                                                FieldValue.arrayRemove([
                                                                              currentUserReference
                                                                            ]),
                                                                          };
                                                                          await listViewCommentsRecord
                                                                              .reference
                                                                              .update(commentsUpdateData1);
                                                                          logFirebaseEvent(
                                                                              'IconButton_backend_call');

                                                                          final userUpdateData1 =
                                                                              {
                                                                            'isLikedComments':
                                                                                FieldValue.arrayRemove([
                                                                              listViewCommentsRecord.reference
                                                                            ]),
                                                                          };
                                                                          await currentUserReference!
                                                                              .update(userUpdateData1);
                                                                          return;
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'IconButton_backend_call');

                                                                          final commentsUpdateData2 =
                                                                              {
                                                                            'isLikedBy':
                                                                                FieldValue.arrayUnion([
                                                                              currentUserReference
                                                                            ]),
                                                                          };
                                                                          await listViewCommentsRecord
                                                                              .reference
                                                                              .update(commentsUpdateData2);
                                                                          logFirebaseEvent(
                                                                              'IconButton_backend_call');

                                                                          final userUpdateData2 =
                                                                              {
                                                                            'isLikedComments':
                                                                                FieldValue.arrayUnion([
                                                                              listViewCommentsRecord.reference
                                                                            ]),
                                                                          };
                                                                          await currentUserReference!
                                                                              .update(userUpdateData2);
                                                                          return;
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${listViewCommentsRecord.isLikedBy!.toList().length.toString()} Likes',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    if (!rowUserRecord
                                                                        .isVerified!)
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            30,
                                                                        buttonSize:
                                                                            40,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .flag_rounded,
                                                                          color: FFAppState().commentsFlagged.contains(listViewCommentsRecord.reference)
                                                                              ? Color(0xFFFF0000)
                                                                              : FlutterFlowTheme.of(context).primaryColor,
                                                                          size:
                                                                              24,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'POSTCOMENTS_PAGE_flag_rounded_ICN_ON_TAP');
                                                                          if (FFAppState()
                                                                              .commentsFlagged
                                                                              .contains(listViewCommentsRecord.reference)) {
                                                                            logFirebaseEvent('IconButton_backend_call');

                                                                            final commentsUpdateData1 =
                                                                                {
                                                                              'isFlaggedBy': FieldValue.arrayRemove([
                                                                                currentUserReference
                                                                              ]),
                                                                            };
                                                                            await listViewCommentsRecord.reference.update(commentsUpdateData1);
                                                                            logFirebaseEvent('IconButton_update_app_state');
                                                                            setState(() {
                                                                              FFAppState().removeFromCommentsFlagged(listViewCommentsRecord.reference);
                                                                            });
                                                                            return;
                                                                          } else {
                                                                            logFirebaseEvent('IconButton_alert_dialog');
                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Report'),
                                                                                      content: Text('Do you want to report this comment?'),
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

                                                                              final commentsUpdateData2 = {
                                                                                'isFlaggedBy': FieldValue.arrayUnion([
                                                                                  currentUserReference
                                                                                ]),
                                                                              };
                                                                              await listViewCommentsRecord.reference.update(commentsUpdateData2);
                                                                              logFirebaseEvent('IconButton_update_app_state');
                                                                              setState(() {
                                                                                FFAppState().addToCommentsFlagged(listViewCommentsRecord.reference);
                                                                              });
                                                                              if (listViewCommentsRecord.isFlaggedBy!.toList().length >= 10) {
                                                                                logFirebaseEvent('IconButton_backend_call');
                                                                                await listViewCommentsRecord.reference.delete();
                                                                                logFirebaseEvent('IconButton_navigate_to');

                                                                                context.pushNamed(
                                                                                  'postcoments',
                                                                                  queryParams: {
                                                                                    'ugcPost': serializeParam(
                                                                                      widget.ugcPost,
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
                                                                              }
                                                                              return;
                                                                            } else {
                                                                              return;
                                                                            }
                                                                          }
                                                                        },
                                                                      ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            30,
                                                                        buttonSize:
                                                                            40,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .share_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                          size:
                                                                              24,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'POSTCOMENTS_share_rounded_ICN_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'IconButton_generate_current_page_link');
                                                                          _model.currentPageLink =
                                                                              await generateCurrentPageLink(
                                                                            context,
                                                                            isShortLink:
                                                                                false,
                                                                          );

                                                                          logFirebaseEvent(
                                                                              'IconButton_share');
                                                                          await Share
                                                                              .share(
                                                                            _model.currentPageLink,
                                                                            sharePositionOrigin:
                                                                                getWidgetBoundingBox(context),
                                                                          );
                                                                        },
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
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15, 0,
                                                                    0, 0),
                                                        child: Text(
                                                          dateTimeFormat(
                                                            'relative',
                                                            listViewCommentsRecord
                                                                .commentTime!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x26000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 34),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 8, 0),
                                              child: TextFormField(
                                                controller:
                                                    _model.commentBoxController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Comment Here',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              12, 16, 0, 0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                                maxLines: null,
                                                keyboardType:
                                                    TextInputType.multiline,
                                                validator: _model
                                                    .commentBoxControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 8, 0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'POSTCOMENTS_PAGE_POST_BTN_ON_TAP');
                                                if (_model.commentBoxController
                                                            .text ==
                                                        null ||
                                                    _model.commentBoxController
                                                            .text ==
                                                        '') {
                                                  logFirebaseEvent(
                                                      'Button_show_snack_bar');
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Comment without text? Nice one!',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  );
                                                  return;
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  final commentsCreateData =
                                                      createCommentsRecordData(
                                                    commentText: _model
                                                        .commentBoxController
                                                        .text,
                                                    commentedBy:
                                                        currentUserReference,
                                                    commentTime:
                                                        getCurrentTimestamp,
                                                  );
                                                  await CommentsRecord
                                                          .createDoc(
                                                              widget.ugcPost!)
                                                      .set(commentsCreateData);
                                                  logFirebaseEvent(
                                                      'Button_clear_text_fields');
                                                  setState(() {
                                                    _model.commentBoxController
                                                        ?.clear();
                                                  });
                                                  return;
                                                }
                                              },
                                              text: 'Post',
                                              options: FFButtonOptions(
                                                width: 70,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                elevation: 5,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF95A1AC),
                                                  width: 1,
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
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
