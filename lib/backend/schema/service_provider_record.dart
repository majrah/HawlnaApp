import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceProviderRecord extends FirestoreRecord {
  ServiceProviderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ProviderID" field.
  int? _providerID;
  int get providerID => _providerID ?? 0;
  bool hasProviderID() => _providerID != null;

  // "ProviderName" field.
  String? _providerName;
  String get providerName => _providerName ?? '';
  bool hasProviderName() => _providerName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "Area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "Rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  bool hasRating() => _rating != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _providerID = castToType<int>(snapshotData['ProviderID']);
    _providerName = snapshotData['ProviderName'] as String?;
    _description = snapshotData['Description'] as String?;
    _location = snapshotData['Location'] as String?;
    _number = snapshotData['Number'] as String?;
    _area = snapshotData['Area'] as String?;
    _category = snapshotData['category'] as String?;
    _img = snapshotData['img'] as String?;
    _rating = snapshotData['Rating'] as String?;
    _type = snapshotData['Type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('serviceProvider');

  static Stream<ServiceProviderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceProviderRecord.fromSnapshot(s));

  static Future<ServiceProviderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceProviderRecord.fromSnapshot(s));

  static ServiceProviderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceProviderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceProviderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceProviderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceProviderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceProviderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceProviderRecordData({
  int? providerID,
  String? providerName,
  String? description,
  String? location,
  String? number,
  String? area,
  String? category,
  String? img,
  String? rating,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProviderID': providerID,
      'ProviderName': providerName,
      'Description': description,
      'Location': location,
      'Number': number,
      'Area': area,
      'category': category,
      'img': img,
      'Rating': rating,
      'Type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceProviderRecordDocumentEquality
    implements Equality<ServiceProviderRecord> {
  const ServiceProviderRecordDocumentEquality();

  @override
  bool equals(ServiceProviderRecord? e1, ServiceProviderRecord? e2) {
    return e1?.providerID == e2?.providerID &&
        e1?.providerName == e2?.providerName &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.number == e2?.number &&
        e1?.area == e2?.area &&
        e1?.category == e2?.category &&
        e1?.img == e2?.img &&
        e1?.rating == e2?.rating &&
        e1?.type == e2?.type;
  }

  @override
  int hash(ServiceProviderRecord? e) => const ListEquality().hash([
        e?.providerID,
        e?.providerName,
        e?.description,
        e?.location,
        e?.number,
        e?.area,
        e?.category,
        e?.img,
        e?.rating,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceProviderRecord;
}
