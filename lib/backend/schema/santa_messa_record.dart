import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SantaMessaRecord extends FirestoreRecord {
  SantaMessaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "chiesa" field.
  String? _chiesa;
  String get chiesa => _chiesa ?? '';
  bool hasChiesa() => _chiesa != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "luogo" field.
  String? _luogo;
  String get luogo => _luogo ?? '';
  bool hasLuogo() => _luogo != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "cratedDate" field.
  DateTime? _cratedDate;
  DateTime? get cratedDate => _cratedDate;
  bool hasCratedDate() => _cratedDate != null;

  // "evento" field.
  String? _evento;
  String get evento => _evento ?? '';
  bool hasEvento() => _evento != null;

  void _initializeFields() {
    _chiesa = snapshotData['chiesa'] as String?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _luogo = snapshotData['luogo'] as String?;
    _image = snapshotData['Image'] as String?;
    _description = snapshotData['description'] as String?;
    _cratedDate = snapshotData['cratedDate'] as DateTime?;
    _evento = snapshotData['evento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SantaMessa');

  static Stream<SantaMessaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SantaMessaRecord.fromSnapshot(s));

  static Future<SantaMessaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SantaMessaRecord.fromSnapshot(s));

  static SantaMessaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SantaMessaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SantaMessaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SantaMessaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SantaMessaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SantaMessaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSantaMessaRecordData({
  String? chiesa,
  DateTime? startTime,
  String? luogo,
  String? image,
  String? description,
  DateTime? cratedDate,
  String? evento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chiesa': chiesa,
      'startTime': startTime,
      'luogo': luogo,
      'Image': image,
      'description': description,
      'cratedDate': cratedDate,
      'evento': evento,
    }.withoutNulls,
  );

  return firestoreData;
}

class SantaMessaRecordDocumentEquality implements Equality<SantaMessaRecord> {
  const SantaMessaRecordDocumentEquality();

  @override
  bool equals(SantaMessaRecord? e1, SantaMessaRecord? e2) {
    return e1?.chiesa == e2?.chiesa &&
        e1?.startTime == e2?.startTime &&
        e1?.luogo == e2?.luogo &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.cratedDate == e2?.cratedDate &&
        e1?.evento == e2?.evento;
  }

  @override
  int hash(SantaMessaRecord? e) => const ListEquality().hash([
        e?.chiesa,
        e?.startTime,
        e?.luogo,
        e?.image,
        e?.description,
        e?.cratedDate,
        e?.evento
      ]);

  @override
  bool isValidKey(Object? o) => o is SantaMessaRecord;
}
