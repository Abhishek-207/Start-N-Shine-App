import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'username_n_referral_model.dart';
export 'username_n_referral_model.dart';

class UsernameNReferralWidget extends StatefulWidget {
  const UsernameNReferralWidget({Key? key}) : super(key: key);

  @override
  _UsernameNReferralWidgetState createState() =>
      _UsernameNReferralWidgetState();
}

class _UsernameNReferralWidgetState extends State<UsernameNReferralWidget> {
  late UsernameNReferralModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsernameNReferralModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'UsernameNReferral'});
    _model.usernameController ??= TextEditingController();
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

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: 335,
                height: 570,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0xFF5E17EB),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Lottie.asset(
                          'assets/lottie_animations/User.json',
                          width: 220,
                          height: 220,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 2),
                      child: Text(
                        'Pick a Username',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                      child: StreamBuilder<List<UsernamesCollectionRecord>>(
                        stream: queryUsernamesCollectionRecord(
                          singleRecord: true,
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
                          List<UsernamesCollectionRecord>
                              usernameUsernamesCollectionRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final usernameUsernamesCollectionRecord =
                              usernameUsernamesCollectionRecordList.isNotEmpty
                                  ? usernameUsernamesCollectionRecordList.first
                                  : null;
                          return Container(
                            width: 300,
                            child: TextFormField(
                              controller: _model.usernameController,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.usernameController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                hintText: 'Username Here',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF5E17EB),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF5E17EB),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                suffixIcon: _model
                                        .usernameController!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.usernameController?.clear();
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
                              style: FlutterFlowTheme.of(context).bodyText1,
                              validator: _model.usernameControllerValidator
                                  .asValidator(context),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                      child: StreamBuilder<List<UsernamesCollectionRecord>>(
                        stream: queryUsernamesCollectionRecord(
                          singleRecord: true,
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
                          List<UsernamesCollectionRecord>
                              buttonUsernamesCollectionRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final buttonUsernamesCollectionRecord =
                              buttonUsernamesCollectionRecordList.isNotEmpty
                                  ? buttonUsernamesCollectionRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'USERNAME_N_REFERRAL_PAGE_NEXT_BTN_ON_TAP');
                              logFirebaseEvent('Button_update_app_state');
                              FFAppState().tempUsername =
                                  functions.checkUsername(
                                      _model.usernameController.text);
                              if (buttonUsernamesCollectionRecord!
                                  .takenUsernames!
                                  .toList()
                                  .contains(FFAppState().tempUsername)) {
                                logFirebaseEvent('Button_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Username Invalid or In Use'),
                                      content: Text(
                                          'Please choose another username. Only letters, numbers, periods and underscores are allowed.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Got it'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                logFirebaseEvent('Button_clear_text_fields');
                                setState(() {
                                  _model.usernameController?.clear();
                                });
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'UsernameNReferral',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                return;
                              } else {
                                logFirebaseEvent('Button_backend_call');

                                final userUpdateData = createUserRecordData(
                                  username: FFAppState().tempUsername,
                                  usernameWIthSymbol:
                                      '@${FFAppState().tempUsername}',
                                  usernameIsSet: true,
                                );
                                await currentUserReference!
                                    .update(userUpdateData);
                                logFirebaseEvent('Button_backend_call');

                                final usernamesCollectionUpdateData = {
                                  'taken_usernames': FieldValue.arrayUnion(
                                      [FFAppState().tempUsername]),
                                };
                                await buttonUsernamesCollectionRecord!.reference
                                    .update(usernamesCollectionUpdateData);
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('Category');

                                return;
                              }
                            },
                            text: 'Next',
                            options: FFButtonOptions(
                              width: 150,
                              height: 47,
                              color: Color(0xFF5E17EB),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                              elevation: 20,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(24),
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
      ),
    );
  }
}
