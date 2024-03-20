import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "servicesID" field.
  int? _servicesID;
  int get servicesID => _servicesID ?? 0;
  bool hasServicesID() => _servicesID != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "providerRef" field.
  String? _providerRef;
  String get providerRef => _providerRef ?? '';
  bool hasProviderRef() => _providerRef != null;

  // "servicesName" field.
  String? _servicesName;
  String get servicesName => _servicesName ?? '';
  bool hasServicesName() => _servicesName != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _servicesID = castToType<int>(snapshotData['servicesID']);
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _providerRef = snapshotData['providerRef'] as String?;
    _servicesName = snapshotData['servicesName'] as String?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  int? servicesID,
  String? description,
  double? price,
  String? providerRef,
  String? servicesName,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'servicesID': servicesID,
      'description': description,
      'price': price,
      'providerRef': providerRef,
      'servicesName': servicesName,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.servicesID == e2?.servicesID &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.providerRef == e2?.providerRef &&
        e1?.servicesName == e2?.servicesName &&
        e1?.img == e2?.img;
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([
        e?.servicesID,
        e?.description,
        e?.price,
        e?.providerRef,
        e?.servicesName,
        e?.img
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
