import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/community_post_new_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'community_posts_model.dart';
export 'community_posts_model.dart';

class CommunityPostsWidget extends StatefulWidget {
  const CommunityPostsWidget({
    Key? key,
    this.topicId,
  }) : super(key: key);

  final DocumentReference? topicId;

  @override
  _CommunityPostsWidgetState createState() => _CommunityPostsWidgetState();
}

class _CommunityPostsWidgetState extends State<CommunityPostsWidget> {
  late CommunityPostsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityPostsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CommunityPosts'});
    _model.inputNewPostController ??= TextEditingController();
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

    return StreamBuilder<TopicsRecord>(
      stream: TopicsRecord.getDocument(widget.topicId!),
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
        final communityPostsTopicsRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              logFirebaseEvent('COMMUNITY_POSTS_FloatingActionButton_m5w');
              logFirebaseEvent('FloatingActionButton_scroll_to');
              await _model.columnController?.animateTo(
                _model.columnController!.position.maxScrollExtent,
                duration: Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            },
            backgroundColor: Color(0xFF5E17EB),
            elevation: 8,
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 30,
            ),
          ),
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
                logFirebaseEvent('COMMUNITY_POSTS_chevron_left_rounded_ICN');
                logFirebaseEvent('IconButton_navigate_back');
                context.pop();
              },
            ),
            title: AutoSizeText(
              communityPostsTopicsRecord.name!,
              maxLines: 3,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -1.08),
                    child: SingleChildScrollView(
                      primary: false,
                      controller: _model.columnController,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 220),
                            child: StreamBuilder<List<PostsRecord>>(
                              stream: queryPostsRecord(
                                parent: widget.topicId,
                                queryBuilder: (postsRecord) =>
                                    postsRecord.orderBy('ts', descending: true),
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
                                List<PostsRecord> listViewPostsRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  reverse: true,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewPostsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewPostsRecord =
                                        listViewPostsRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 16, 8),
                                      child: StreamBuilder<List<PostsRecord>>(
                                        stream: queryPostsRecord(
                                          parent: widget.topicId,
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
                                          List<PostsRecord>
                                              eventCardPostsRecordList =
                                              snapshot.data!;
                                          return Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3,
                                                  color: Color(0x430F1113),
                                                  offset: Offset(0, 1),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Stack(
                                              children: [
                                                CommunityPostNewWidget(
                                                  key: Key(
                                                      'Key95c_${listViewIndex}_of_${listViewPostsRecordList.length}'),
                                                  topicsId: widget.topicId,
                                                  query2: listViewPostsRecord,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  controller: _model.listViewController,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 4,
                          sigmaY: 8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Color(0x6995A1AC),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: _model.inputNewPostController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.inputNewPostController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Type Your Message Here',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        suffixIcon: _model
                                                .inputNewPostController!
                                                .text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.inputNewPostController
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      validator: _model
                                          .inputNewPostControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 12),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'COMMUNITY_POSTS_PAGE_POST_BTN_ON_TAP');
                                        if (_model.inputNewPostController
                                                    .text ==
                                                null ||
                                            _model.inputNewPostController
                                                    .text ==
                                                '') {
                                          logFirebaseEvent(
                                              'Button_show_snack_bar');
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'This field is so empty like a startup without an idea.',
                                                style: GoogleFonts.getFont(
                                                  'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          );
                                          return;
                                        } else {
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          final postsCreateData =
                                              createPostsRecordData(
                                            author: currentUserReference,
                                            text: _model
                                                .inputNewPostController.text,
                                            ts: getCurrentTimestamp,
                                            authorName: currentUserDisplayName,
                                          );
                                          await PostsRecord.createDoc(
                                                  widget.topicId!)
                                              .set(postsCreateData);
                                          logFirebaseEvent(
                                              'Button_clear_text_fields');
                                          setState(() {
                                            _model.inputNewPostController
                                                ?.clear();
                                          });
                                          logFirebaseEvent('Button_scroll_to');
                                          await _model.columnController
                                              ?.animateTo(
                                            _model.columnController!.position
                                                .maxScrollExtent,
                                            duration: Duration(milliseconds: 1),
                                            curve: Curves.ease,
                                          );
                                          return;
                                        }
                                      },
                                      text: 'Post',
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        color: Color(0xFF5E17EB),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                        elevation: 16,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
