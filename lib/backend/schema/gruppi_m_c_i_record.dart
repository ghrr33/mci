import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GruppiMCIRecord extends FirestoreRecord {
  GruppiMCIRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "GroupImage" field.
  String? _groupImage;
  String get groupImage => _groupImage ?? '';
  bool hasGroupImage() => _groupImage != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Luogo" field.
  String? _luogo;
  String get luogo => _luogo ?? '';
  bool hasLuogo() => _luogo != null;

  // "StartTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "EventoGruppo" field.
  String? _eventoGruppo;
  String get eventoGruppo => _eventoGruppo ?? '';
  bool hasEventoGruppo() => _eventoGruppo != null;

  // "ChiSiamo" field.
  String? _chiSiamo;
  String get chiSiamo => _chiSiamo ?? '';
  bool hasChiSiamo() => _chiSiamo != null;

  // "LeNostreAttivita" field.
  String? _leNostreAttivita;
  String get leNostreAttivita => _leNostreAttivita ?? '';
  bool hasLeNostreAttivita() => _leNostreAttivita != null;

  // "GroupImageUpload" field.
  String? _groupImageUpload;
  String get groupImageUpload => _groupImageUpload ?? '';
  bool hasGroupImageUpload() => _groupImageUpload != null;

  void _initializeFields() {
    _groupImage = snapshotData['GroupImage'] as String?;
    _name = snapshotData['Name'] as String?;
    _luogo = snapshotData['Luogo'] as String?;
    _startTime = snapshotData['StartTime'] as DateTime?;
    _eventoGruppo = snapshotData['EventoGruppo'] as String?;
    _chiSiamo = snapshotData['ChiSiamo'] as String?;
    _leNostreAttivita = snapshotData['LeNostreAttivita'] as String?;
    _groupImageUpload = snapshotData['GroupImageUpload'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GruppiMCI');

  static Stream<GruppiMCIRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GruppiMCIRecord.fromSnapshot(s));

  static Future<GruppiMCIRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GruppiMCIRecord.fromSnapshot(s));

  static GruppiMCIRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GruppiMCIRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GruppiMCIRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GruppiMCIRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GruppiMCIRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GruppiMCIRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGruppiMCIRecordData({
  String? groupImage,
  String? name,
  String? luogo,
  DateTime? startTime,
  String? eventoGruppo,
  String? chiSiamo,
  String? leNostreAttivita,
  String? groupImageUpload,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'GroupImage': groupImage,
      'Name': name,
      'Luogo': luogo,
      'StartTime': startTime,
      'EventoGruppo': eventoGruppo,
      'ChiSiamo': chiSiamo,
      'LeNostreAttivita': leNostreAttivita,
      'GroupImageUpload': groupImageUpload,
    }.withoutNulls,
  );

  return firestoreData;
}

class GruppiMCIRecordDocumentEquality implements Equality<GruppiMCIRecord> {
  const GruppiMCIRecordDocumentEquality();

  @override
  bool equals(GruppiMCIRecord? e1, GruppiMCIRecord? e2) {
    return e1?.groupImage == e2?.groupImage &&
        e1?.name == e2?.name &&
        e1?.luogo == e2?.luogo &&
        e1?.startTime == e2?.startTime &&
        e1?.eventoGruppo == e2?.eventoGruppo &&
        e1?.chiSiamo == e2?.chiSiamo &&
        e1?.leNostreAttivita == e2?.leNostreAttivita &&
        e1?.groupImageUpload == e2?.groupImageUpload;
  }

  @override
  int hash(GruppiMCIRecord? e) => const ListEquality().hash([
        e?.groupImage,
        e?.name,
        e?.luogo,
        e?.startTime,
        e?.eventoGruppo,
        e?.chiSiamo,
        e?.leNostreAttivita,
        e?.groupImageUpload
      ]);

  @override
  bool isValidKey(Object? o) => o is GruppiMCIRecord;
}
