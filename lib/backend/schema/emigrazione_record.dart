import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmigrazioneRecord extends FirestoreRecord {
  EmigrazioneRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "testo" field.
  String? _testo;
  String get testo => _testo ?? '';
  bool hasTesto() => _testo != null;

  // "isSet" field.
  bool? _isSet;
  bool get isSet => _isSet ?? false;
  bool hasIsSet() => _isSet != null;

  // "isNotSet" field.
  bool? _isNotSet;
  bool get isNotSet => _isNotSet ?? false;
  bool hasIsNotSet() => _isNotSet != null;

  void _initializeFields() {
    _testo = snapshotData['testo'] as String?;
    _isSet = snapshotData['isSet'] as bool?;
    _isNotSet = snapshotData['isNotSet'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Emigrazione');

  static Stream<EmigrazioneRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmigrazioneRecord.fromSnapshot(s));

  static Future<EmigrazioneRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmigrazioneRecord.fromSnapshot(s));

  static EmigrazioneRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmigrazioneRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmigrazioneRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmigrazioneRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmigrazioneRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmigrazioneRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmigrazioneRecordData({
  String? testo,
  bool? isSet,
  bool? isNotSet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'testo': testo,
      'isSet': isSet,
      'isNotSet': isNotSet,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmigrazioneRecordDocumentEquality implements Equality<EmigrazioneRecord> {
  const EmigrazioneRecordDocumentEquality();

  @override
  bool equals(EmigrazioneRecord? e1, EmigrazioneRecord? e2) {
    return e1?.testo == e2?.testo &&
        e1?.isSet == e2?.isSet &&
        e1?.isNotSet == e2?.isNotSet;
  }

  @override
  int hash(EmigrazioneRecord? e) =>
      const ListEquality().hash([e?.testo, e?.isSet, e?.isNotSet]);

  @override
  bool isValidKey(Object? o) => o is EmigrazioneRecord;
}
