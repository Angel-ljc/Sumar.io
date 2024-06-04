import '/componentes/facultades/facultades_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Facultades component.
  late FacultadesModel facultadesModel1;
  // Model for Facultades component.
  late FacultadesModel facultadesModel2;
  // Model for Facultades component.
  late FacultadesModel facultadesModel3;
  // Model for Facultades component.
  late FacultadesModel facultadesModel4;

  @override
  void initState(BuildContext context) {
    facultadesModel1 = createModel(context, () => FacultadesModel());
    facultadesModel2 = createModel(context, () => FacultadesModel());
    facultadesModel3 = createModel(context, () => FacultadesModel());
    facultadesModel4 = createModel(context, () => FacultadesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    facultadesModel1.dispose();
    facultadesModel2.dispose();
    facultadesModel3.dispose();
    facultadesModel4.dispose();
  }
}
