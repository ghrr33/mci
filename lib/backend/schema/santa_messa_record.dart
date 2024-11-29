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

  // "Photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "Luogo" field.
  String? _luogo;
  String get luogo => _luogo ?? '';
  bool hasLuogo() => _luogo != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "Chiesa" field.
  String? _chiesa;
  String get chiesa => _chiesa ?? '';
  bool hasChiesa() => _chiesa != null;

  // "Favorite" field.
  bool? _favorite;
  bool get favorite => _favorite ?? false;
  bool hasFavorite() => _favorite != null;

  // "contlikes" field.
  int? _contlikes;
  int get contlikes => _contlikes ?? 0;
  bool hasContlikes() => _contlikes != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  void _initializeFields() {
    _photo = snapshotData['Photo'] as String?;
    _luogo = snapshotData['Luogo'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _chiesa = snapshotData['Chiesa'] as String?;
    _favorite = snapshotData['Favorite'] as bool?;
    _contlikes = castToType<int>(snapshotData['contlikes']);
    _shortDescription = snapshotData['short_description'] as String?;
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
  String? photo,
  String? luogo,
  DateTime? startTime,
  String? chiesa,
  bool? favorite,
  int? contlikes,
  String? shortDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Photo': photo,
      'Luogo': luogo,
      'start_time': startTime,
      'Chiesa': chiesa,
      'Favorite': favorite,
      'contlikes': contlikes,
      'short_description': shortDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class SantaMessaRecordDocumentEquality implements Equality<SantaMessaRecord> {
  const SantaMessaRecordDocumentEquality();

  @override
  bool equals(SantaMessaRecord? e1, SantaMessaRecord? e2) {
    return e1?.photo == e2?.photo &&
        e1?.luogo == e2?.luogo &&
        e1?.startTime == e2?.startTime &&
        e1?.chiesa == e2?.chiesa &&
        e1?.favorite == e2?.favorite &&
        e1?.contlikes == e2?.contlikes &&
        e1?.shortDescription == e2?.shortDescription;
  }

  @override
  int hash(SantaMessaRecord? e) => const ListEquality().hash([
        e?.photo,
        e?.luogo,
        e?.startTime,
        e?.chiesa,
        e?.favorite,
        e?.contlikes,
        e?.shortDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is SantaMessaRecord;
}
