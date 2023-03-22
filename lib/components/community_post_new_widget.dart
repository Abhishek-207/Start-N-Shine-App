import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'community_post_new_model.dart';
export 'community_post_new_model.dart';

class CommunityPostNewWidget extends StatefulWidget {
  const CommunityPostNewWidget({
    Key? key,
    this.topicsId,
    this.query2,
  }) : super(key: key);

  final DocumentReference? topicsId;
  final PostsRecord? query2;

  @override
  _CommunityPostNewWidgetState createState() => _CommunityPostNewWidgetState();
}

class _CommunityPostNewWidgetState extends State<CommunityPostNewWidget> {
  late CommunityPostNewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityPostNewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      controller: _model.columnController,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
            child: StreamBuilder<UserRecord>(
              stream: UserRecord.getDocument(widget.query2!.author!),
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
                return InkWell(
                  onTap: () async {
                    logFirebaseEvent('COMMUNITY_POST_NEW_Row_dew29po3_ON_TAP');
                    logFirebaseEvent('Row_navigate_to');

                    context.pushNamed(
                      'ProfileNew',
                      queryParams: {
                        'currentUserId': serializeParam(
                          rowUserRecord.reference,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 2, 0),
                        child: GradientText(
                          widget.query2!.authorName!,
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
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
                      if (rowUserRecord.isVerified ?? true)
                        Icon(
                          Icons.verified,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20,
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).borderDescription,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SelectionArea(
                      child: Text(
                    widget.query2!.text!,
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                        ),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                      child: Text(
                        dateTimeFormat(
                          'relative',
                          widget.query2!.ts!,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
                StreamBuilder<UserRecord>(
                  stream: UserRecord.getDocument(widget.query2!.author!),
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
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.favorite_sharp,
                            color: valueOrDefault<Color>(
                              FFAppState()
                                      .UpvotedCommunityPosts
                                      .contains(widget.query2!.reference)
                                  ? Color(0xFFED4956)
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).grayIcon,
                            ),
                            size: 25,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'COMMUNITY_POST_NEW_favorite_sharp_ICN_ON');
                            if (FFAppState()
                                    .UpvotedCommunityPosts
                                    .contains(widget.query2!.reference) ==
                                true) {
                              logFirebaseEvent('IconButton_backend_call');

                              final postsUpdateData1 = {
                                'upvoteNumber': FieldValue.increment(-(1)),
                              };
                              await widget.query2!.reference
                                  .update(postsUpdateData1);
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().removeFromUpvotedCommunityPosts(
                                    widget.query2!.reference);
                              });
                              return;
                            } else {
                              logFirebaseEvent('IconButton_backend_call');

                              final postsUpdateData2 = {
                                'upvoteNumber': FieldValue.increment(1),
                              };
                              await widget.query2!.reference
                                  .update(postsUpdateData2);
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().addToUpvotedCommunityPosts(
                                    widget.query2!.reference);
                              });
                              return;
                            }
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Text(
                            widget.query2!.upvoteNumber!.toString(),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                          ),
                        ),
                        if ((rowUserRecord.reference != currentUserReference) &&
                            !rowUserRecord.isVerified!)
                          AuthUserStreamWidget(
                            builder: (context) => FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              buttonSize: 40,
                              icon: Icon(
                                Icons.flag_sharp,
                                color: (currentUserDocument?.commPostsFlagged
                                                ?.toList() ??
                                            [])
                                        .contains(widget.query2!.reference)
                                    ? Color(0xFFFF0000)
                                    : FlutterFlowTheme.of(context).primaryText,
                                size: 24,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'COMMUNITY_POST_NEW_flag_sharp_ICN_ON_TAP');
                                if ((currentUserDocument?.commPostsFlagged
                                            ?.toList() ??
                                        [])
                                    .contains(widget.query2!.reference)) {
                                  logFirebaseEvent('IconButton_backend_call');

                                  final postsUpdateData1 = {
                                    'isFlaggedBy': FieldValue.arrayRemove(
                                        [currentUserReference]),
                                  };
                                  await widget.query2!.reference
                                      .update(postsUpdateData1);
                                  logFirebaseEvent('IconButton_backend_call');

                                  final userUpdateData1 = {
                                    'commPostsFlagged': FieldValue.arrayRemove(
                                        [widget.query2!.reference]),
                                  };
                                  await currentUserReference!
                                      .update(userUpdateData1);
                                  return;
                                } else {
                                  logFirebaseEvent('IconButton_alert_dialog');
                                  var confirmDialogResponse =
                                      await showDialog<bool>(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Report'),
                                                content: Text(
                                                    'Do you want to report this post?'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: Text('No'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: Text('Confirm'),
                                                  ),
                                                ],
                                              );
                                            },
                                          ) ??
                                          false;
                                  if (confirmDialogResponse) {
                                    logFirebaseEvent('IconButton_backend_call');

                                    final postsUpdateData2 = {
                                      'isFlaggedBy': FieldValue.arrayUnion(
                                          [currentUserReference]),
                                    };
                                    await widget.query2!.reference
                                        .update(postsUpdateData2);
                                    logFirebaseEvent('IconButton_backend_call');

                                    final userUpdateData2 = {
                                      'commPostsFlagged': FieldValue.arrayUnion(
                                          [widget.query2!.reference]),
                                    };
                                    await currentUserReference!
                                        .update(userUpdateData2);
                                    if (widget.query2!.isFlaggedBy!
                                            .toList()
                                            .length >=
                                        10) {
                                      logFirebaseEvent(
                                          'IconButton_backend_call');
                                      await widget.query2!.reference.delete();
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
                          ),
                        if (widget.query2!.author == currentUserReference)
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            buttonSize: 40,
                            icon: Icon(
                              Icons.delete_forever_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'COMMUNITY_POST_NEW_delete_forever_rounde');
                              logFirebaseEvent('IconButton_alert_dialog');
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title:
                                                Text('Delete Community Post ?'),
                                            content: Text(
                                                'This action cannot be reversed.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                logFirebaseEvent('IconButton_backend_call');
                                await widget.query2!.reference.delete();
                                logFirebaseEvent('IconButton_scroll_to');
                                await _model.columnController?.animateTo(
                                  _model.columnController!.position
                                      .maxScrollExtent,
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.ease,
                                );
                                return;
                              } else {
                                return;
                              }
                            },
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
