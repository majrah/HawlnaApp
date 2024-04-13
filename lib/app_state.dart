import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cartsum = prefs.getDouble('ff_cartsum') ?? _cartsum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _myCart = [];
  List<DocumentReference> get myCart => _myCart;
  set myCart(List<DocumentReference> value) {
    _myCart = value;
  }

  void addToMyCart(DocumentReference value) {
    _myCart.add(value);
  }

  void removeFromMyCart(DocumentReference value) {
    _myCart.remove(value);
  }

  void removeAtIndexFromMyCart(int index) {
    _myCart.removeAt(index);
  }

  void updateMyCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _myCart[index] = updateFn(_myCart[index]);
  }

  void insertAtIndexInMyCart(int index, DocumentReference value) {
    _myCart.insert(index, value);
  }

  double _cartsum = 0.0;
  double get cartsum => _cartsum;
  set cartsum(double value) {
    _cartsum = value;
    prefs.setDouble('ff_cartsum', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
