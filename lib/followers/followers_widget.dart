import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'followers_model.dart';
export 'followers_model.dart';

class FollowersWidget extends StatefulWidget {
  const FollowersWidget({
    Key? key,
    this.userRef,
  }) : super(key: key);

  final DocumentReference? userRef;

  @override
  _FollowersWidgetState createState() => _FollowersWidgetState();
}

class _FollowersWidgetState extends State<FollowersWidget> {
  late FollowersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FollowersModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'followers'});
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
      stream: UserRecord.getDocument(widget.userRef!),
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
        final followersUserRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 54,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24,
              ),
              onPressed: () async {
                logFirebaseEvent('FOLLOWERS_arrow_back_rounded_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.pop();
              },
            ),
            title: Text(
              '${followersUserRecord.displayName}\'s Followers',
              style: FlutterFlowTheme.of(context).title3,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                    child: Builder(
                      builder: (context) {
                        final followersList =
                            followersUserRecord.followers!.toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: followersList.length,
                          itemBuilder: (context, followersListIndex) {
                            final followersListItem =
                                followersList[followersListIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 8),
                              child: StreamBuilder<UserRecord>(
                                stream:
                                    UserRecord.getDocument(followersListItem),
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
                                  final userList5UserRecord = snapshot.data!;
                                  return Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x32000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 8, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'FOLLOWERS_PAGE_Image_6juyr3kp_ON_TAP');
                                                logFirebaseEvent(
                                                    'Image_navigate_to');

                                                context.pushNamed(
                                                  'ProfileNew',
                                                  queryParams: {
                                                    'currentUserId':
                                                        serializeParam(
                                                      userList5UserRecord
                                                          .reference,
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
                                                    BorderRadius.circular(26),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      valueOrDefault<String>(
                                                    userList5UserRecord
                                                        .photoUrl,
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCtFhZE-9msbTY6LMLyvcIvytoK22aM3hSUq9HDNnoJYSccyLlEmbQg5flyUJSfxElcqs&usqp=CAU',
                                                  ),
                                                  width: 36,
                                                  height: 36,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 2, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'FOLLOWERS_PAGE_Text_bgtpqebt_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Text_navigate_to');

                                                            context.pushNamed(
                                                              'ProfileNew',
                                                              queryParams: {
                                                                'currentUserId':
                                                                    serializeParam(
                                                                  userList5UserRecord
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
                                                          child: Text(
                                                            userList5UserRecord
                                                                .displayName!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ),
                                                      if (userList5UserRecord
                                                              .isVerified ??
                                                          true)
                                                        Icon(
                                                          Icons.verified,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 20,
                                                        ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'FOLLOWERS_PAGE_Text_8x3tdmgd_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Text_navigate_to');

                                                          context.pushNamed(
                                                            'ProfileNew',
                                                            queryParams: {
                                                              'currentUserId':
                                                                  serializeParam(
                                                                userList5UserRecord
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
                                                        child: Text(
                                                          userList5UserRecord
                                                              .usernameWIthSymbol!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if (userList5UserRecord.reference !=
                                              currentUserReference)
                                            AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'FOLLOWERS_PAGE_FOLLOW_BACK_BTN_ON_TAP');
                                                  if (!(currentUserDocument
                                                              ?.following
                                                              ?.toList() ??
                                                          [])
                                                      .contains(
                                                          widget.userRef)) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    final userUpdateData1 = {
                                                      ...createUserRecordData(
                                                        followersnum:
                                                            userList5UserRecord
                                                                .followers!
                                                                .toList()
                                                                .length,
                                                      ),
                                                      'followers': FieldValue
                                                          .arrayUnion([
                                                        currentUserReference
                                                      ]),
                                                    };
                                                    await userList5UserRecord
                                                        .reference
                                                        .update(
                                                            userUpdateData1);
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    final userUpdateData2 = {
                                                      'following': FieldValue
                                                          .arrayUnion([
                                                        userList5UserRecord
                                                            .reference
                                                      ]),
                                                      'followingNum':
                                                          FieldValue.increment(
                                                              1),
                                                    };
                                                    await currentUserReference!
                                                        .update(
                                                            userUpdateData2);
                                                    logFirebaseEvent(
                                                        'Button_navigate_to');

                                                    context.goNamed(
                                                      'followers',
                                                      queryParams: {
                                                        'userRef':
                                                            serializeParam(
                                                          widget.userRef,
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

                                                    return;
                                                  } else {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    final userUpdateData3 = {
                                                      ...createUserRecordData(
                                                        followersnum:
                                                            userList5UserRecord
                                                                .followers!
                                                                .toList()
                                                                .length,
                                                      ),
                                                      'followers': FieldValue
                                                          .arrayRemove([
                                                        currentUserReference
                                                      ]),
                                                    };
                                                    await userList5UserRecord
                                                        .reference
                                                        .update(
                                                            userUpdateData3);
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    final userUpdateData4 = {
                                                      'following': FieldValue
                                                          .arrayRemove([
                                                        userList5UserRecord
                                                            .reference
                                                      ]),
                                                      'followingNum':
                                                          FieldValue.increment(
                                                              -(1)),
                                                    };
                                                    await currentUserReference!
                                                        .update(
                                                            userUpdateData4);
                                                    logFirebaseEvent(
                                                        'Button_navigate_to');

                                                    context.goNamed(
                                                      'followers',
                                                      queryParams: {
                                                        'userRef':
                                                            serializeParam(
                                                          widget.userRef,
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

                                                    return;
                                                  }
                                                },
                                                text: () {
                                                  if ((currentUserDocument
                                                                  ?.followers
                                                                  ?.toList() ??
                                                              [])
                                                          .contains(
                                                              userList5UserRecord
                                                                  .reference) &&
                                                      !(currentUserDocument
                                                                  ?.following
                                                                  ?.toList() ??
                                                              [])
                                                          .contains(
                                                              followersListItem)) {
                                                    return 'Follow Back';
                                                  } else if (!(currentUserDocument
                                                                  ?.followers
                                                                  ?.toList() ??
                                                              [])
                                                          .contains(
                                                              userList5UserRecord
                                                                  .reference) &&
                                                      !(currentUserDocument
                                                                  ?.following
                                                                  ?.toList() ??
                                                              [])
                                                          .contains(
                                                              followersListItem)) {
                                                    return 'Follow';
                                                  } else {
                                                    return 'Unfollow';
                                                  }
                                                }(),
                                                options: FFButtonOptions(
                                                  width: 95,
                                                  height: 36,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
