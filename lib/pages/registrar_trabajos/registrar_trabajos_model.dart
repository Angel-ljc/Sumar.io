import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_trabajos_widget.dart' show RegistrarTrabajosWidget;
import 'package:flutter/material.dart';

class RegistrarTrabajosModel extends FlutterFlowModel<RegistrarTrabajosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Keywords widget.
  FocusNode? keywordsFocusNode;
  TextEditingController? keywordsTextController;
  String? Function(BuildContext, String?)? keywordsTextControllerValidator;
  // State field(s) for tipoDoc widget.
  FocusNode? tipoDocFocusNode;
  TextEditingController? tipoDocTextController;
  String? Function(BuildContext, String?)? tipoDocTextControllerValidator;
  // State field(s) for Participantes widget.
  FocusNode? participantesFocusNode;
  TextEditingController? participantesTextController;
  String? Function(BuildContext, String?)? participantesTextControllerValidator;
  // State field(s) for Jurados widget.
  FocusNode? juradosFocusNode;
  TextEditingController? juradosTextController;
  String? Function(BuildContext, String?)? juradosTextControllerValidator;
  // State field(s) for Carrera widget.
  FocusNode? carreraFocusNode;
  TextEditingController? carreraTextController;
  String? Function(BuildContext, String?)? carreraTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    keywordsFocusNode?.dispose();
    keywordsTextController?.dispose();

    tipoDocFocusNode?.dispose();
    tipoDocTextController?.dispose();

    participantesFocusNode?.dispose();
    participantesTextController?.dispose();

    juradosFocusNode?.dispose();
    juradosTextController?.dispose();

    carreraFocusNode?.dispose();
    carreraTextController?.dispose();
  }
}
