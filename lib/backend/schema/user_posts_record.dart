import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserPostsRecord extends FirestoreRecord {
  UserPostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "postTitle" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "postDesc" field.
  String? _postDesc;
  String get postDesc => _postDesc ?? '';
  bool hasPostDesc() => _postDesc != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "postID" field.
  int? _postID;
  int get postID => _postID ?? 0;
  bool hasPostID() => _postID != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "posrDate" field.
  DateTime? _posrDate;
  DateTime? get posrDate => _posrDate;
  bool hasPosrDate() => _posrDate != null;

  // "UserID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "PhotoURL" field.
  String? _photoURL;
  String get photoURL => _photoURL ?? '';
  bool hasPhotoURL() => _photoURL != null;

  // "postArea" field.
  String? _postArea;
  String get postArea => _postArea ?? '';
  bool hasPostArea() => _postArea != null;

  void _initializeFields() {
    _postTitle = snapshotData['postTitle'] as String?;
    _postDesc = snapshotData['postDesc'] as String?;
    _photo = snapshotData['photo'] as String?;
    _postID = castToType<int>(snapshotData['postID']);
    _category = snapshotData['category'] as String?;
    _userName = snapshotData['UserName'] as String?;
    _posrDate = snapshotData['posrDate'] as DateTime?;
    _userID = snapshotData['UserID'] as String?;
    _photoURL = snapshotData['PhotoURL'] as String?;
    _postArea = snapshotData['postArea'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserPosts');

  static Stream<UserPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPostsRecord.fromSnapshot(s));

  static Future<UserPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPostsRecord.fromSnapshot(s));

  static UserPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPostsRecordData({
  String? postTitle,
  String? postDesc,
  String? photo,
  int? postID,
  String? category,
  String? userName,
  DateTime? posrDate,
  String? userID,
  String? photoURL,
  String? postArea,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postTitle': postTitle,
      'postDesc': postDesc,
      'photo': photo,
      'postID': postID,
      'category': category,
      'UserName': userName,
      'posrDate': posrDate,
      'UserID': userID,
      'PhotoURL': photoURL,
      'postArea': postArea,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPostsRecordDocumentEquality implements Equality<UserPostsRecord> {
  const UserPostsRecordDocumentEquality();

  @override
  bool equals(UserPostsRecord? e1, UserPostsRecord? e2) {
    return e1?.postTitle == e2?.postTitle &&
        e1?.postDesc == e2?.postDesc &&
        e1?.photo == e2?.photo &&
        e1?.postID == e2?.postID &&
        e1?.category == e2?.category &&
        e1?.userName == e2?.userName &&
        e1?.posrDate == e2?.posrDate &&
        e1?.userID == e2?.userID &&
        e1?.photoURL == e2?.photoURL &&
        e1?.postArea == e2?.postArea;
  }

  @override
  int hash(UserPostsRecord? e) => const ListEquality().hash([
        e?.postTitle,
        e?.postDesc,
        e?.photo,
        e?.postID,
        e?.category,
        e?.userName,
        e?.posrDate,
        e?.userID,
        e?.photoURL,
        e?.postArea
      ]);

  @override
  bool isValidKey(Object? o) => o is UserPostsRecord;
}
