import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfiloMCIRecord extends FirestoreRecord {
  ProfiloMCIRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Testo" field.
  String? _testo;
  String get testo => _testo ?? '';
  bool hasTesto() => _testo != null;

  // "testoisSet" field.
  bool? _testoisSet;
  bool get testoisSet => _testoisSet ?? false;
  bool hasTestoisSet() => _testoisSet != null;

  void _initializeFields() {
    _testo = snapshotData['Testo'] as String?;
    _testoisSet = snapshotData['testoisSet'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProfiloMCI');

  static Stream<ProfiloMCIRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfiloMCIRecord.fromSnapshot(s));

  static Future<ProfiloMCIRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfiloMCIRecord.fromSnapshot(s));

  static ProfiloMCIRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfiloMCIRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfiloMCIRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfiloMCIRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfiloMCIRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfiloMCIRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfiloMCIRecordData({
  String? testo,
  bool? testoisSet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Testo': testo,
      'testoisSet': testoisSet,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfiloMCIRecordDocumentEquality implements Equality<ProfiloMCIRecord> {
  const ProfiloMCIRecordDocumentEquality();

  @override
  bool equals(ProfiloMCIRecord? e1, ProfiloMCIRecord? e2) {
    return e1?.testo == e2?.testo && e1?.testoisSet == e2?.testoisSet;
  }

  @override
  int hash(ProfiloMCIRecord? e) =>
      const ListEquality().hash([e?.testo, e?.testoisSet]);

  @override
  bool isValidKey(Object? o) => o is ProfiloMCIRecord;
}
