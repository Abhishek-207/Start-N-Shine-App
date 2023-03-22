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
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SubjectLine widget.
  TextEditingController? subjectLineController;
  String? Function(BuildContext, String?)? subjectLineControllerValidator;
  // State field(s) for body widget.
  TextEditingController? bodyController;
  String? Function(BuildContext, String?)? bodyControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    subjectLineController?.dispose();
    bodyController?.dispose();
  }

  /// Additional helper methods are added here.

}
