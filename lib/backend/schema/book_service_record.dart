import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookServiceRecord extends FirestoreRecord {
  BookServiceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "BookId" field.
  int? _bookId;
  int get bookId => _bookId ?? 0;
  bool hasBookId() => _bookId != null;

  // "BookDate" field.
  DateTime? _bookDate;
  DateTime? get bookDate => _bookDate;
  bool hasBookDate() => _bookDate != null;

  // "servicesID" field.
  DocumentReference? _servicesID;
  DocumentReference? get servicesID => _servicesID;
  bool hasServicesID() => _servicesID != null;

  // "BookTime" field.
  String? _bookTime;
  String get bookTime => _bookTime ?? '';
  bool hasBookTime() => _bookTime != null;

  // "Notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "ProviderName" field.
  String? _providerName;
  String get providerName => _providerName ?? '';
  bool hasProviderName() => _providerName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _bookId = castToType<int>(snapshotData['BookId']);
    _bookDate = snapshotData['BookDate'] as DateTime?;
    _servicesID = snapshotData['servicesID'] as DocumentReference?;
    _bookTime = snapshotData['BookTime'] as String?;
    _notes = snapshotData['Notes'] as String?;
    _userName = snapshotData['UserName'] as String?;
    _providerName = snapshotData['ProviderName'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BookService');

  static Stream<BookServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookServiceRecord.fromSnapshot(s));

  static Future<BookServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookServiceRecord.fromSnapshot(s));

  static BookServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookServiceRecordData({
  int? bookId,
  DateTime? bookDate,
  DocumentReference? servicesID,
  String? bookTime,
  String? notes,
  String? userName,
  String? providerName,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'BookId': bookId,
      'BookDate': bookDate,
      'servicesID': servicesID,
      'BookTime': bookTime,
      'Notes': notes,
      'UserName': userName,
      'ProviderName': providerName,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookServiceRecordDocumentEquality implements Equality<BookServiceRecord> {
  const BookServiceRecordDocumentEquality();

  @override
  bool equals(BookServiceRecord? e1, BookServiceRecord? e2) {
    return e1?.bookId == e2?.bookId &&
        e1?.bookDate == e2?.bookDate &&
        e1?.servicesID == e2?.servicesID &&
        e1?.bookTime == e2?.bookTime &&
        e1?.notes == e2?.notes &&
        e1?.userName == e2?.userName &&
        e1?.providerName == e2?.providerName &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(BookServiceRecord? e) => const ListEquality().hash([
        e?.bookId,
        e?.bookDate,
        e?.servicesID,
        e?.bookTime,
        e?.notes,
        e?.userName,
        e?.providerName,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is BookServiceRecord;
}
