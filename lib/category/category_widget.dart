import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'category_model.dart';
export 'category_model.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  late CategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Category'});
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 50, 0, 0),
                              child: Text(
                                'What describes you',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: GradientText(
                              'best ? ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                              colors: [Color(0xFF5E17EB), Color(0xFF7B2F8F)],
                              gradientDirection: GradientDirection.ltr,
                              gradientType: GradientType.linear,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: SvgPicture.asset(
                          'assets/images/Character.svg',
                          width: 20,
                          height: MediaQuery.of(context).size.height * 0.3,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: StreamBuilder<List<UserRecord>>(
                    stream: queryUserRecord(
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
                      List<UserRecord> rowUserRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final rowUserRecord = rowUserRecordList.isNotEmpty
                          ? rowUserRecordList.first
                          : null;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 110,
                                  height: 110.1,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 5),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Color(0x6995A1AC),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            setState(() => FFAppState()
                                                    .isEntrepreneur =
                                                !FFAppState().isEntrepreneur);
                                          },
                                          value: FFAppState().isEntrepreneur,
                                          onIcon: FaIcon(
                                            FontAwesomeIcons.solidLightbulb,
                                            color: Color(0xFF5E17EB),
                                            size: 55,
                                          ),
                                          offIcon: FaIcon(
                                            FontAwesomeIcons.solidLightbulb,
                                            color: FlutterFlowTheme.of(context)
                                                .buttonColor,
                                            size: 54,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Text(
                                          'Entrepreneur ',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 5),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Color(0x6995A1AC),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 25, 0),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            setState(() =>
                                                FFAppState().isStudent =
                                                    !FFAppState().isStudent);
                                          },
                                          value: FFAppState().isStudent,
                                          onIcon: Icon(
                                            Icons.school_sharp,
                                            color: Color(0xFF5E17EB),
                                            size: 60,
                                          ),
                                          offIcon: Icon(
                                            Icons.school_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .buttonColor,
                                            size: 54,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Text(
                                          'Student',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
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
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: StreamBuilder<List<UserRecord>>(
                    stream: queryUserRecord(
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
                      List<UserRecord> rowUserRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final rowUserRecord = rowUserRecordList.isNotEmpty
                          ? rowUserRecordList.first
                          : null;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 5),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0x6995A1AC),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 6, 0),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            setState(() =>
                                                FFAppState().isInvestor =
                                                    !FFAppState().isInvestor);
                                          },
                                          value: FFAppState().isInvestor,
                                          onIcon: FaIcon(
                                            FontAwesomeIcons.dollarSign,
                                            color: Color(0xFF5E17EB),
                                            size: 55,
                                          ),
                                          offIcon: FaIcon(
                                            FontAwesomeIcons.dollarSign,
                                            color: FlutterFlowTheme.of(context)
                                                .buttonColor,
                                            size: 52,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Text(
                                          'Investor',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 5),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0x6995A1AC),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 10, 0),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            setState(() => FFAppState()
                                                    .isAspiringEntrepreneur =
                                                !FFAppState()
                                                    .isAspiringEntrepreneur);
                                          },
                                          value: FFAppState()
                                              .isAspiringEntrepreneur,
                                          onIcon: FaIcon(
                                            FontAwesomeIcons.rocket,
                                            color: Color(0xFF5E17EB),
                                            size: 45,
                                          ),
                                          offIcon: FaIcon(
                                            FontAwesomeIcons.rocket,
                                            color: FlutterFlowTheme.of(context)
                                                .buttonColor,
                                            size: 42,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 18, 0, 0),
                                        child: Text(
                                          'Aspiring\nEntrepreneur\n',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
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
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('CATEGORY_PAGE_NEXT_BTN_ON_TAP');
                      logFirebaseEvent('Button_backend_call');

                      final userUpdateData = createUserRecordData(
                        yourReferralCode: functions.codeGenerator(),
                        category: () {
                          if (FFAppState().isEntrepreneur == true) {
                            return 'Entrepreneur';
                          } else if (FFAppState().isStudent == true) {
                            return 'Student';
                          } else if (FFAppState().isInvestor == true) {
                            return 'Investor';
                          } else if (FFAppState().isAspiringEntrepreneur ==
                              true) {
                            return 'Aspiring Entrepreneur';
                          } else {
                            return 'Category Not Selected';
                          }
                        }(),
                      );
                      await currentUserReference!.update(userUpdateData);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed('FeatureView');
                    },
                    text: 'Next',
                    options: FFButtonOptions(
                      width: 300,
                      height: 48,
                      color: Color(0xFF5E17EB),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 17,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
