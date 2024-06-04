import '/auth/firebase_auth/auth_util.dart';
import '/componentes/facultades/facultades_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFE0E3E7),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                'SUMAR.IO',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                colors: const [Color(0xFFEB1D5A), Color(0xFF540010)],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('LOGIN', context.mounted);
                  },
                  text: 'LOG OUT',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF2B000B),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    hoverColor: const Color(0xFF540010),
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: 1461.0,
            height: 883.0,
            decoration: const BoxDecoration(
              color: Color(0xFFDFDFDF),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://www.nobbot.com/wp-content/uploads/2017/11/smart-campus-920x515.jpg',
                            width: 1448.0,
                            height: 435.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.facultadesModel1,
                            updateCallback: () => setState(() {}),
                            child: FacultadesWidget(
                              titulo:
                                  'Facultad de Ciencias Sociales, Humanidades y Artes',
                              imagen:
                                  'https://humanidades.pucmm.edu.do/GaleriaFac/Arquitectura.jpg',
                              desc:
                                  'Departamento de Estudios Generales, Escuela de Humanidades y Ciencias Sociales, Escuela de Lenguas.',
                              ir: () async {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: wrapWithModel(
                            model: _model.facultadesModel2,
                            updateCallback: () => setState(() {}),
                            child: FacultadesWidget(
                              titulo:
                                  'Facultad de Ciencias económicas y Administrativas',
                              imagen:
                                  'https://pucmm.edu.do/sociales/SFS%20Carousel%20Content/Administracion-slide.jpg',
                              desc:
                                  'Forma profesionales en áreas como administración de empresas, economía, contabilidad y finanzas.',
                              ir: () async {},
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(width: 10.0))
                          .addToStart(const SizedBox(width: 10.0))
                          .addToEnd(const SizedBox(width: 10.0)),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.facultadesModel3,
                          updateCallback: () => setState(() {}),
                          child: FacultadesWidget(
                            titulo: 'Facultad de Ciencias e Ingeniería',
                            imagen:
                                'https://www.zonacentronoticias.com/wp-content/uploads/2019/02/WhatsApp-Image-2019-02-20-at-11.49.18-AM.jpeg',
                            desc:
                                'Forma profesionales en áreas como ingeniería civil, ingeniería industrial, ingeniería de sistemas, ingeniería electrónica e informática.',
                            ir: () async {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.facultadesModel4,
                          updateCallback: () => setState(() {}),
                          child: FacultadesWidget(
                            titulo: 'Facultad de Ciencia de la Salud',
                            imagen:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE_CmfDfIPoE_zuyYR5HhJENoYBJKzVy4c7Q&s',
                            desc:
                                'Forma profesionales dispuestos en áreas como medicina, enfermería, odontología, farmacia y psicología.',
                            ir: () async {},
                          ),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(width: 10.0))
                        .addToStart(const SizedBox(width: 10.0))
                        .addToEnd(const SizedBox(width: 10.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
