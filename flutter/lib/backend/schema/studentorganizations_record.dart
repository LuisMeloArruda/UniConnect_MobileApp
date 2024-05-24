import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class StudentorganizationsRecord extends FirestoreRecord {
  StudentorganizationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "organization_name" field.
  String? _organizationName;
  String get organizationName => _organizationName ?? '';
  bool hasOrganizationName() => _organizationName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _organizationName = snapshotData['organization_name'] as String?;
    _email = snapshotData['email'] as String?;
    _room = snapshotData['room'] as String?;
    _description = snapshotData['description'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('studentorganizations');

  static Stream<StudentorganizationsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => StudentorganizationsRecord.fromSnapshot(s));

  static Future<StudentorganizationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StudentorganizationsRecord.fromSnapshot(s));

  static StudentorganizationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentorganizationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentorganizationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentorganizationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentorganizationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentorganizationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentorganizationsRecordData({
  String? organizationName,
  String? email,
  String? room,
  String? description,
  String? photoUrl,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'organization_name': organizationName,
      'email': email,
      'room': room,
      'description': description,
      'photo_url': photoUrl,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentorganizationsRecordDocumentEquality
    implements Equality<StudentorganizationsRecord> {
  const StudentorganizationsRecordDocumentEquality();

  @override
  bool equals(StudentorganizationsRecord? e1, StudentorganizationsRecord? e2) {
    return e1?.organizationName == e2?.organizationName &&
        e1?.email == e2?.email &&
        e1?.room == e2?.room &&
        e1?.description == e2?.description &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(StudentorganizationsRecord? e) => const ListEquality().hash([
        e?.organizationName,
        e?.email,
        e?.room,
        e?.description,
        e?.photoUrl,
        e?.owner
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentorganizationsRecord;
}
