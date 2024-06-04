import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TrabajosRecord extends FirestoreRecord {
  TrabajosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Keywords" field.
  String? _keywords;
  String get keywords => _keywords ?? '';
  bool hasKeywords() => _keywords != null;

  // "tipoTrabajo" field.
  String? _tipoTrabajo;
  String get tipoTrabajo => _tipoTrabajo ?? '';
  bool hasTipoTrabajo() => _tipoTrabajo != null;

  // "Participantes" field.
  String? _participantes;
  String get participantes => _participantes ?? '';
  bool hasParticipantes() => _participantes != null;

  // "Jurado" field.
  String? _jurado;
  String get jurado => _jurado ?? '';
  bool hasJurado() => _jurado != null;

  // "Carrera" field.
  String? _carrera;
  String get carrera => _carrera ?? '';
  bool hasCarrera() => _carrera != null;

  // "URL" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _keywords = snapshotData['Keywords'] as String?;
    _tipoTrabajo = snapshotData['tipoTrabajo'] as String?;
    _participantes = snapshotData['Participantes'] as String?;
    _jurado = snapshotData['Jurado'] as String?;
    _carrera = snapshotData['Carrera'] as String?;
    _url = snapshotData['URL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trabajos');

  static Stream<TrabajosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrabajosRecord.fromSnapshot(s));

  static Future<TrabajosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrabajosRecord.fromSnapshot(s));

  static TrabajosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrabajosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrabajosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrabajosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrabajosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrabajosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrabajosRecordData({
  String? titulo,
  String? descripcion,
  String? keywords,
  String? tipoTrabajo,
  String? participantes,
  String? jurado,
  String? carrera,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Descripcion': descripcion,
      'Keywords': keywords,
      'tipoTrabajo': tipoTrabajo,
      'Participantes': participantes,
      'Jurado': jurado,
      'Carrera': carrera,
      'URL': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrabajosRecordDocumentEquality implements Equality<TrabajosRecord> {
  const TrabajosRecordDocumentEquality();

  @override
  bool equals(TrabajosRecord? e1, TrabajosRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.keywords == e2?.keywords &&
        e1?.tipoTrabajo == e2?.tipoTrabajo &&
        e1?.participantes == e2?.participantes &&
        e1?.jurado == e2?.jurado &&
        e1?.carrera == e2?.carrera &&
        e1?.url == e2?.url;
  }

  @override
  int hash(TrabajosRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descripcion,
        e?.keywords,
        e?.tipoTrabajo,
        e?.participantes,
        e?.jurado,
        e?.carrera,
        e?.url
      ]);

  @override
  bool isValidKey(Object? o) => o is TrabajosRecord;
}
