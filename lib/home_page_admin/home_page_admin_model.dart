import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_admin_widget.dart' show HomePageAdminWidget;
import 'package:flutter/material.dart';

class HomePageAdminModel extends FlutterFlowModel<HomePageAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
