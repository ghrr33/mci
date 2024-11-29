import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventiRecord extends FirestoreRecord {
  EventiRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Evento" field.
  String? _evento;
  String get evento => _evento ?? '';
  bool hasEvento() => _evento != null;

  // "Luogo" field.
  String? _luogo;
  String get luogo => _luogo ?? '';
  bool hasLuogo() => _luogo != null;

  // "dataOra" field.
  DateTime? _dataOra;
  DateTime? get dataOra => _dataOra;
  bool hasDataOra() => _dataOra != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _evento = snapshotData['Evento'] as String?;
    _luogo = snapshotData['Luogo'] as String?;
    _dataOra = snapshotData['dataOra'] as DateTime?;
    _image = snapshotData['Image'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Eventi');

  static Stream<EventiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventiRecord.fromSnapshot(s));

  static Future<EventiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventiRecord.fromSnapshot(s));

  static EventiRecord fromSnapshot(DocumentSnapshot snapshot) => EventiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventiRecordData({
  String? evento,
  String? luogo,
  DateTime? dataOra,
  String? image,
  DateTime? createdDate,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Evento': evento,
      'Luogo': luogo,
      'dataOra': dataOra,
      'Image': image,
      'createdDate': createdDate,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventiRecordDocumentEquality implements Equality<EventiRecord> {
  const EventiRecordDocumentEquality();

  @override
  bool equals(EventiRecord? e1, EventiRecord? e2) {
    return e1?.evento == e2?.evento &&
        e1?.luogo == e2?.luogo &&
        e1?.dataOra == e2?.dataOra &&
        e1?.image == e2?.image &&
        e1?.createdDate == e2?.createdDate &&
        e1?.description == e2?.description;
  }

  @override
  int hash(EventiRecord? e) => const ListEquality().hash([
        e?.evento,
        e?.luogo,
        e?.dataOra,
        e?.image,
        e?.createdDate,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is EventiRecord;
}
