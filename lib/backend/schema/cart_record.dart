import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cartID" field.
  int? _cartID;
  int get cartID => _cartID ?? 0;
  bool hasCartID() => _cartID != null;

  // "cartItems" field.
  List<String>? _cartItems;
  List<String> get cartItems => _cartItems ?? const [];
  bool hasCartItems() => _cartItems != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "providerRef" field.
  String? _providerRef;
  String get providerRef => _providerRef ?? '';
  bool hasProviderRef() => _providerRef != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "PaymentType" field.
  String? _paymentType;
  String get paymentType => _paymentType ?? '';
  bool hasPaymentType() => _paymentType != null;

  void _initializeFields() {
    _cartID = castToType<int>(snapshotData['cartID']);
    _cartItems = getDataList(snapshotData['cartItems']);
    _total = castToType<double>(snapshotData['total']);
    _providerRef = snapshotData['providerRef'] as String?;
    _user = snapshotData['user'] as String?;
    _paymentType = snapshotData['PaymentType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  int? cartID,
  double? total,
  String? providerRef,
  String? user,
  String? paymentType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cartID': cartID,
      'total': total,
      'providerRef': providerRef,
      'user': user,
      'PaymentType': paymentType,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cartID == e2?.cartID &&
        listEquality.equals(e1?.cartItems, e2?.cartItems) &&
        e1?.total == e2?.total &&
        e1?.providerRef == e2?.providerRef &&
        e1?.user == e2?.user &&
        e1?.paymentType == e2?.paymentType;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.cartID,
        e?.cartItems,
        e?.total,
        e?.providerRef,
        e?.user,
        e?.paymentType
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
