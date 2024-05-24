import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class StudenteventsRecord extends FirestoreRecord {
  StudenteventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "eventname" field.
  String? _eventname;
  String get eventname => _eventname ?? '';
  bool hasEventname() => _eventname != null;

  // "room" field.
  String? _room;
  String get room => _room ?? '';
  bool hasRoom() => _room != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _eventname = snapshotData['eventname'] as String?;
    _room = snapshotData['room'] as String?;
    _description = snapshotData['description'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _date = snapshotData['date'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('studentevents');

  static Stream<StudenteventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudenteventsRecord.fromSnapshot(s));

  static Future<StudenteventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudenteventsRecord.fromSnapshot(s));

  static StudenteventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudenteventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudenteventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudenteventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudenteventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudenteventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudenteventsRecordData({
  String? eventname,
  String? room,
  String? description,
  String? photoUrl,
  String? date,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eventname': eventname,
      'room': room,
      'description': description,
      'photo_url': photoUrl,
      'date': date,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudenteventsRecordDocumentEquality
    implements Equality<StudenteventsRecord> {
  const StudenteventsRecordDocumentEquality();

  @override
  bool equals(StudenteventsRecord? e1, StudenteventsRecord? e2) {
    return e1?.eventname == e2?.eventname &&
        e1?.room == e2?.room &&
        e1?.description == e2?.description &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.date == e2?.date &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(StudenteventsRecord? e) => const ListEquality().hash(
      [e?.eventname, e?.room, e?.description, e?.photoUrl, e?.date, e?.owner]);

  @override
  bool isValidKey(Object? o) => o is StudenteventsRecord;
}
