import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreaRecord extends FirestoreRecord {
  AreaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AID" field.
  int? _aid;
  int get aid => _aid ?? 0;
  bool hasAid() => _aid != null;

  // "Aname" field.
  String? _aname;
  String get aname => _aname ?? '';
  bool hasAname() => _aname != null;

  void _initializeFields() {
    _aid = castToType<int>(snapshotData['AID']);
    _aname = snapshotData['Aname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Area');

  static Stream<AreaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AreaRecord.fromSnapshot(s));

  static Future<AreaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AreaRecord.fromSnapshot(s));

  static AreaRecord fromSnapshot(DocumentSnapshot snapshot) => AreaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AreaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AreaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AreaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AreaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAreaRecordData({
  int? aid,
  String? aname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AID': aid,
      'Aname': aname,
    }.withoutNulls,
  );

  return firestoreData;
}

class AreaRecordDocumentEquality implements Equality<AreaRecord> {
  const AreaRecordDocumentEquality();

  @override
  bool equals(AreaRecord? e1, AreaRecord? e2) {
    return e1?.aid == e2?.aid && e1?.aname == e2?.aname;
  }

  @override
  int hash(AreaRecord? e) => const ListEquality().hash([e?.aid, e?.aname]);

  @override
  bool isValidKey(Object? o) => o is AreaRecord;
}
