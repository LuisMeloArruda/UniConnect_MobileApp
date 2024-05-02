import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OtherTagsRecord extends FirestoreRecord {
  OtherTagsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "other" field.
  List<String>? _other;
  List<String> get other => _other ?? const [];
  bool hasOther() => _other != null;

  void _initializeFields() {
    _other = getDataList(snapshotData['other']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Other_tags');

  static Stream<OtherTagsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OtherTagsRecord.fromSnapshot(s));

  static Future<OtherTagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OtherTagsRecord.fromSnapshot(s));

  static OtherTagsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OtherTagsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OtherTagsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OtherTagsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OtherTagsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OtherTagsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOtherTagsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class OtherTagsRecordDocumentEquality implements Equality<OtherTagsRecord> {
  const OtherTagsRecordDocumentEquality();

  @override
  bool equals(OtherTagsRecord? e1, OtherTagsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.other, e2?.other);
  }

  @override
  int hash(OtherTagsRecord? e) => const ListEquality().hash([e?.other]);

  @override
  bool isValidKey(Object? o) => o is OtherTagsRecord;
}
