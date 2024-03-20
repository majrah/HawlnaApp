import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvServicesRecord extends FirestoreRecord {
  ProvServicesRecord._(
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

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "serviceName" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  bool hasServiceName() => _serviceName != null;

  void _initializeFields() {
    _servicesID = castToType<int>(snapshotData['servicesID']);
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _providerRef = snapshotData['providerRef'] as String?;
    _img = snapshotData['img'] as String?;
    _serviceName = snapshotData['serviceName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProvServices');

  static Stream<ProvServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProvServicesRecord.fromSnapshot(s));

  static Future<ProvServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProvServicesRecord.fromSnapshot(s));

  static ProvServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProvServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProvServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProvServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProvServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProvServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProvServicesRecordData({
  int? servicesID,
  String? description,
  double? price,
  String? providerRef,
  String? img,
  String? serviceName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'servicesID': servicesID,
      'description': description,
      'price': price,
      'providerRef': providerRef,
      'img': img,
      'serviceName': serviceName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProvServicesRecordDocumentEquality
    implements Equality<ProvServicesRecord> {
  const ProvServicesRecordDocumentEquality();

  @override
  bool equals(ProvServicesRecord? e1, ProvServicesRecord? e2) {
    return e1?.servicesID == e2?.servicesID &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.providerRef == e2?.providerRef &&
        e1?.img == e2?.img &&
        e1?.serviceName == e2?.serviceName;
  }

  @override
  int hash(ProvServicesRecord? e) => const ListEquality().hash([
        e?.servicesID,
        e?.description,
        e?.price,
        e?.providerRef,
        e?.img,
        e?.serviceName
      ]);

  @override
  bool isValidKey(Object? o) => o is ProvServicesRecord;
}
