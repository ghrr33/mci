import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotoRecord extends FirestoreRecord {
  FotoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "album" field.
  DocumentReference? _album;
  DocumentReference? get album => _album;
  bool hasAlbum() => _album != null;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  void _initializeFields() {
    _album = snapshotData['album'] as DocumentReference?;
    _id = castToType<int>(snapshotData['Id']);
    _image = getDataList(snapshotData['image']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Foto');

  static Stream<FotoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FotoRecord.fromSnapshot(s));

  static Future<FotoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FotoRecord.fromSnapshot(s));

  static FotoRecord fromSnapshot(DocumentSnapshot snapshot) => FotoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FotoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FotoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FotoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FotoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFotoRecordData({
  DocumentReference? album,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'album': album,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class FotoRecordDocumentEquality implements Equality<FotoRecord> {
  const FotoRecordDocumentEquality();

  @override
  bool equals(FotoRecord? e1, FotoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.album == e2?.album &&
        e1?.id == e2?.id &&
        listEquality.equals(e1?.image, e2?.image);
  }

  @override
  int hash(FotoRecord? e) =>
      const ListEquality().hash([e?.album, e?.id, e?.image]);

  @override
  bool isValidKey(Object? o) => o is FotoRecord;
}
