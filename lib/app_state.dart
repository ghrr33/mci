import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchbaractive = false;
  bool get searchbaractive => _searchbaractive;
  set searchbaractive(bool value) {
    _searchbaractive = value;
  }

  bool _OnTap = false;
  bool get OnTap => _OnTap;
  set OnTap(bool value) {
    _OnTap = value;
  }

  List<DocumentReference> _allUsers = [];
  List<DocumentReference> get allUsers => _allUsers;
  set allUsers(List<DocumentReference> value) {
    _allUsers = value;
  }

  void addToAllUsers(DocumentReference value) {
    allUsers.add(value);
  }

  void removeFromAllUsers(DocumentReference value) {
    allUsers.remove(value);
  }

  void removeAtIndexFromAllUsers(int index) {
    allUsers.removeAt(index);
  }

  void updateAllUsersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    allUsers[index] = updateFn(_allUsers[index]);
  }

  void insertAtIndexInAllUsers(int index, DocumentReference value) {
    allUsers.insert(index, value);
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}
