import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlbumRecord extends FirestoreRecord {
  AlbumRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AlbumId" field.
  int? _albumId;
  int get albumId => _albumId ?? 0;
  bool hasAlbumId() => _albumId != null;

  // "AlbumDate" field.
  DateTime? _albumDate;
  DateTime? get albumDate => _albumDate;
  bool hasAlbumDate() => _albumDate != null;

  // "AlbumPhoto" field.
  String? _albumPhoto;
  String get albumPhoto => _albumPhoto ?? '';
  bool hasAlbumPhoto() => _albumPhoto != null;

  // "AlbumDescription" field.
  String? _albumDescription;
  String get albumDescription => _albumDescription ?? '';
  bool hasAlbumDescription() => _albumDescription != null;

  // "AlbumTitle" field.
  String? _albumTitle;
  String get albumTitle => _albumTitle ?? '';
  bool hasAlbumTitle() => _albumTitle != null;

  void _initializeFields() {
    _albumId = castToType<int>(snapshotData['AlbumId']);
    _albumDate = snapshotData['AlbumDate'] as DateTime?;
    _albumPhoto = snapshotData['AlbumPhoto'] as String?;
    _albumDescription = snapshotData['AlbumDescription'] as String?;
    _albumTitle = snapshotData['AlbumTitle'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Album');

  static Stream<AlbumRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlbumRecord.fromSnapshot(s));

  static Future<AlbumRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlbumRecord.fromSnapshot(s));

  static AlbumRecord fromSnapshot(DocumentSnapshot snapshot) => AlbumRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlbumRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlbumRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlbumRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlbumRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlbumRecordData({
  int? albumId,
  DateTime? albumDate,
  String? albumPhoto,
  String? albumDescription,
  String? albumTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AlbumId': albumId,
      'AlbumDate': albumDate,
      'AlbumPhoto': albumPhoto,
      'AlbumDescription': albumDescription,
      'AlbumTitle': albumTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlbumRecordDocumentEquality implements Equality<AlbumRecord> {
  const AlbumRecordDocumentEquality();

  @override
  bool equals(AlbumRecord? e1, AlbumRecord? e2) {
    return e1?.albumId == e2?.albumId &&
        e1?.albumDate == e2?.albumDate &&
        e1?.albumPhoto == e2?.albumPhoto &&
        e1?.albumDescription == e2?.albumDescription &&
        e1?.albumTitle == e2?.albumTitle;
  }

  @override
  int hash(AlbumRecord? e) => const ListEquality().hash([
        e?.albumId,
        e?.albumDate,
        e?.albumPhoto,
        e?.albumDescription,
        e?.albumTitle
      ]);

  @override
  bool isValidKey(Object? o) => o is AlbumRecord;
}
