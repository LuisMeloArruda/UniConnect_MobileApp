import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TagsRecord extends FirestoreRecord {
  TagsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tagName" field.
  String? _tagName;
  String get tagName => _tagName ?? '';
  bool hasTagName() => _tagName != null;

  // "category" field.
  int? _category;
  int get category => _category ?? 0;
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _tagName = snapshotData['tagName'] as String?;
    _category = castToType<int>(snapshotData['category']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tags');

  static Stream<TagsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TagsRecord.fromSnapshot(s));

  static Future<TagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TagsRecord.fromSnapshot(s));

  static TagsRecord fromSnapshot(DocumentSnapshot snapshot) => TagsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TagsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TagsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TagsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TagsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTagsRecordData({
  String? tagName,
  int? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tagName': tagName,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class TagsRecordDocumentEquality implements Equality<TagsRecord> {
  const TagsRecordDocumentEquality();

  @override
  bool equals(TagsRecord? e1, TagsRecord? e2) {
    return e1?.tagName == e2?.tagName && e1?.category == e2?.category;
  }

  @override
  int hash(TagsRecord? e) =>
      const ListEquality().hash([e?.tagName, e?.category]);

  @override
  bool isValidKey(Object? o) => o is TagsRecord;
}
