import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviewID" field.
  int? _reviewID;
  int get reviewID => _reviewID ?? 0;
  bool hasReviewID() => _reviewID != null;

  // "reviewDetails" field.
  String? _reviewDetails;
  String get reviewDetails => _reviewDetails ?? '';
  bool hasReviewDetails() => _reviewDetails != null;

  // "providerRef" field.
  String? _providerRef;
  String get providerRef => _providerRef ?? '';
  bool hasProviderRef() => _providerRef != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _reviewID = castToType<int>(snapshotData['reviewID']);
    _reviewDetails = snapshotData['reviewDetails'] as String?;
    _providerRef = snapshotData['providerRef'] as String?;
    _user = snapshotData['user'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('review');

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  int? reviewID,
  String? reviewDetails,
  String? providerRef,
  String? user,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewID': reviewID,
      'reviewDetails': reviewDetails,
      'providerRef': providerRef,
      'user': user,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewRecordDocumentEquality implements Equality<ReviewRecord> {
  const ReviewRecordDocumentEquality();

  @override
  bool equals(ReviewRecord? e1, ReviewRecord? e2) {
    return e1?.reviewID == e2?.reviewID &&
        e1?.reviewDetails == e2?.reviewDetails &&
        e1?.providerRef == e2?.providerRef &&
        e1?.user == e2?.user &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(ReviewRecord? e) => const ListEquality().hash(
      [e?.reviewID, e?.reviewDetails, e?.providerRef, e?.user, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is ReviewRecord;
}
