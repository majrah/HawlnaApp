import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostReplayRecord extends FirestoreRecord {
  PostReplayRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "UID" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "replayText" field.
  String? _replayText;
  String get replayText => _replayText ?? '';
  bool hasReplayText() => _replayText != null;

  // "replayTme" field.
  DateTime? _replayTme;
  DateTime? get replayTme => _replayTme;
  bool hasReplayTme() => _replayTme != null;

  // "postID" field.
  int? _postID;
  int get postID => _postID ?? 0;
  bool hasPostID() => _postID != null;

  // "photoUrl" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _uid = snapshotData['UID'] as String?;
    _userName = snapshotData['UserName'] as String?;
    _replayText = snapshotData['replayText'] as String?;
    _replayTme = snapshotData['replayTme'] as DateTime?;
    _postID = castToType<int>(snapshotData['postID']);
    _photoUrl = snapshotData['photoUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PostReplay');

  static Stream<PostReplayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostReplayRecord.fromSnapshot(s));

  static Future<PostReplayRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostReplayRecord.fromSnapshot(s));

  static PostReplayRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostReplayRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostReplayRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostReplayRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostReplayRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostReplayRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostReplayRecordData({
  String? uid,
  String? userName,
  String? replayText,
  DateTime? replayTme,
  int? postID,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UID': uid,
      'UserName': userName,
      'replayText': replayText,
      'replayTme': replayTme,
      'postID': postID,
      'photoUrl': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostReplayRecordDocumentEquality implements Equality<PostReplayRecord> {
  const PostReplayRecordDocumentEquality();

  @override
  bool equals(PostReplayRecord? e1, PostReplayRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.userName == e2?.userName &&
        e1?.replayText == e2?.replayText &&
        e1?.replayTme == e2?.replayTme &&
        e1?.postID == e2?.postID &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(PostReplayRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.userName,
        e?.replayText,
        e?.replayTme,
        e?.postID,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is PostReplayRecord;
}
