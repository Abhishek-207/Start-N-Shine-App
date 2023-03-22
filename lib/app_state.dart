import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _referalCode =
        await secureStorage.getString('ff_referalCode') ?? _referalCode;
    _isLiked = (await secureStorage.getStringList('ff_isLiked'))
            ?.map((path) => path.ref)
            .toList() ??
        _isLiked;
    _isBookmarked = (await secureStorage.getStringList('ff_isBookmarked'))
            ?.map((path) => path.ref)
            .toList() ??
        _isBookmarked;
    _UpvotedCommunityPosts =
        (await secureStorage.getStringList('ff_UpvotedCommunityPosts'))
                ?.map((path) => path.ref)
                .toList() ??
            _UpvotedCommunityPosts;
    _isLikedSocial = (await secureStorage.getStringList('ff_isLikedSocial'))
            ?.map((path) => path.ref)
            .toList() ??
        _isLikedSocial;
    _isLikedComments = (await secureStorage.getStringList('ff_isLikedComments'))
            ?.map((path) => path.ref)
            .toList() ??
        _isLikedComments;
    _yourUserId = await secureStorage.getString('ff_yourUserId') ?? _yourUserId;
    _postsFlagged = (await secureStorage.getStringList('ff_postsFlagged'))
            ?.map((path) => path.ref)
            .toList() ??
        _postsFlagged;
    _commentsFlagged = (await secureStorage.getStringList('ff_commentsFlagged'))
            ?.map((path) => path.ref)
            .toList() ??
        _commentsFlagged;
    _userRef = (await secureStorage.getString('ff_userRef'))?.ref ?? _userRef;
    _isEntrepreneur =
        await secureStorage.getBool('ff_isEntrepreneur') ?? _isEntrepreneur;
    _isStudent = await secureStorage.getBool('ff_isStudent') ?? _isStudent;
    _isAspiringEntrepreneur =
        await secureStorage.getBool('ff_isAspiringEntrepreneur') ??
            _isAspiringEntrepreneur;
    _isInvestor = await secureStorage.getBool('ff_isInvestor') ?? _isInvestor;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _referalCode = '';
  String get referalCode => _referalCode;
  set referalCode(String _value) {
    _referalCode = _value;
    secureStorage.setString('ff_referalCode', _value);
  }

  void deleteReferalCode() {
    secureStorage.delete(key: 'ff_referalCode');
  }

  List<DocumentReference> _isLiked = [];
  List<DocumentReference> get isLiked => _isLiked;
  set isLiked(List<DocumentReference> _value) {
    _isLiked = _value;
    secureStorage.setStringList(
        'ff_isLiked', _value.map((x) => x.path).toList());
  }

  void deleteIsLiked() {
    secureStorage.delete(key: 'ff_isLiked');
  }

  void addToIsLiked(DocumentReference _value) {
    _isLiked.add(_value);
    secureStorage.setStringList(
        'ff_isLiked', _isLiked.map((x) => x.path).toList());
  }

  void removeFromIsLiked(DocumentReference _value) {
    _isLiked.remove(_value);
    secureStorage.setStringList(
        'ff_isLiked', _isLiked.map((x) => x.path).toList());
  }

  void removeAtIndexFromIsLiked(int _index) {
    _isLiked.removeAt(_index);
    secureStorage.setStringList(
        'ff_isLiked', _isLiked.map((x) => x.path).toList());
  }

  List<DocumentReference> _isBookmarked = [];
  List<DocumentReference> get isBookmarked => _isBookmarked;
  set isBookmarked(List<DocumentReference> _value) {
    _isBookmarked = _value;
    secureStorage.setStringList(
        'ff_isBookmarked', _value.map((x) => x.path).toList());
  }

  void deleteIsBookmarked() {
    secureStorage.delete(key: 'ff_isBookmarked');
  }

  void addToIsBookmarked(DocumentReference _value) {
    _isBookmarked.add(_value);
    secureStorage.setStringList(
        'ff_isBookmarked', _isBookmarked.map((x) => x.path).toList());
  }

  void removeFromIsBookmarked(DocumentReference _value) {
    _isBookmarked.remove(_value);
    secureStorage.setStringList(
        'ff_isBookmarked', _isBookmarked.map((x) => x.path).toList());
  }

  void removeAtIndexFromIsBookmarked(int _index) {
    _isBookmarked.removeAt(_index);
    secureStorage.setStringList(
        'ff_isBookmarked', _isBookmarked.map((x) => x.path).toList());
  }

  List<DocumentReference> _UpvotedCommunityPosts = [];
  List<DocumentReference> get UpvotedCommunityPosts => _UpvotedCommunityPosts;
  set UpvotedCommunityPosts(List<DocumentReference> _value) {
    _UpvotedCommunityPosts = _value;
    secureStorage.setStringList(
        'ff_UpvotedCommunityPosts', _value.map((x) => x.path).toList());
  }

  void deleteUpvotedCommunityPosts() {
    secureStorage.delete(key: 'ff_UpvotedCommunityPosts');
  }

  void addToUpvotedCommunityPosts(DocumentReference _value) {
    _UpvotedCommunityPosts.add(_value);
    secureStorage.setStringList('ff_UpvotedCommunityPosts',
        _UpvotedCommunityPosts.map((x) => x.path).toList());
  }

  void removeFromUpvotedCommunityPosts(DocumentReference _value) {
    _UpvotedCommunityPosts.remove(_value);
    secureStorage.setStringList('ff_UpvotedCommunityPosts',
        _UpvotedCommunityPosts.map((x) => x.path).toList());
  }

  void removeAtIndexFromUpvotedCommunityPosts(int _index) {
    _UpvotedCommunityPosts.removeAt(_index);
    secureStorage.setStringList('ff_UpvotedCommunityPosts',
        _UpvotedCommunityPosts.map((x) => x.path).toList());
  }

  String _tempUsername = '';
  String get tempUsername => _tempUsername;
  set tempUsername(String _value) {
    _tempUsername = _value;
  }

  List<DocumentReference> _isLikedSocial = [];
  List<DocumentReference> get isLikedSocial => _isLikedSocial;
  set isLikedSocial(List<DocumentReference> _value) {
    _isLikedSocial = _value;
    secureStorage.setStringList(
        'ff_isLikedSocial', _value.map((x) => x.path).toList());
  }

  void deleteIsLikedSocial() {
    secureStorage.delete(key: 'ff_isLikedSocial');
  }

  void addToIsLikedSocial(DocumentReference _value) {
    _isLikedSocial.add(_value);
    secureStorage.setStringList(
        'ff_isLikedSocial', _isLikedSocial.map((x) => x.path).toList());
  }

  void removeFromIsLikedSocial(DocumentReference _value) {
    _isLikedSocial.remove(_value);
    secureStorage.setStringList(
        'ff_isLikedSocial', _isLikedSocial.map((x) => x.path).toList());
  }

  void removeAtIndexFromIsLikedSocial(int _index) {
    _isLikedSocial.removeAt(_index);
    secureStorage.setStringList(
        'ff_isLikedSocial', _isLikedSocial.map((x) => x.path).toList());
  }

  List<DocumentReference> _isLikedComments = [];
  List<DocumentReference> get isLikedComments => _isLikedComments;
  set isLikedComments(List<DocumentReference> _value) {
    _isLikedComments = _value;
    secureStorage.setStringList(
        'ff_isLikedComments', _value.map((x) => x.path).toList());
  }

  void deleteIsLikedComments() {
    secureStorage.delete(key: 'ff_isLikedComments');
  }

  void addToIsLikedComments(DocumentReference _value) {
    _isLikedComments.add(_value);
    secureStorage.setStringList(
        'ff_isLikedComments', _isLikedComments.map((x) => x.path).toList());
  }

  void removeFromIsLikedComments(DocumentReference _value) {
    _isLikedComments.remove(_value);
    secureStorage.setStringList(
        'ff_isLikedComments', _isLikedComments.map((x) => x.path).toList());
  }

  void removeAtIndexFromIsLikedComments(int _index) {
    _isLikedComments.removeAt(_index);
    secureStorage.setStringList(
        'ff_isLikedComments', _isLikedComments.map((x) => x.path).toList());
  }

  String _yourUserId = '';
  String get yourUserId => _yourUserId;
  set yourUserId(String _value) {
    _yourUserId = _value;
    secureStorage.setString('ff_yourUserId', _value);
  }

  void deleteYourUserId() {
    secureStorage.delete(key: 'ff_yourUserId');
  }

  List<DocumentReference> _postsFlagged = [];
  List<DocumentReference> get postsFlagged => _postsFlagged;
  set postsFlagged(List<DocumentReference> _value) {
    _postsFlagged = _value;
    secureStorage.setStringList(
        'ff_postsFlagged', _value.map((x) => x.path).toList());
  }

  void deletePostsFlagged() {
    secureStorage.delete(key: 'ff_postsFlagged');
  }

  void addToPostsFlagged(DocumentReference _value) {
    _postsFlagged.add(_value);
    secureStorage.setStringList(
        'ff_postsFlagged', _postsFlagged.map((x) => x.path).toList());
  }

  void removeFromPostsFlagged(DocumentReference _value) {
    _postsFlagged.remove(_value);
    secureStorage.setStringList(
        'ff_postsFlagged', _postsFlagged.map((x) => x.path).toList());
  }

  void removeAtIndexFromPostsFlagged(int _index) {
    _postsFlagged.removeAt(_index);
    secureStorage.setStringList(
        'ff_postsFlagged', _postsFlagged.map((x) => x.path).toList());
  }

  List<DocumentReference> _commentsFlagged = [];
  List<DocumentReference> get commentsFlagged => _commentsFlagged;
  set commentsFlagged(List<DocumentReference> _value) {
    _commentsFlagged = _value;
    secureStorage.setStringList(
        'ff_commentsFlagged', _value.map((x) => x.path).toList());
  }

  void deleteCommentsFlagged() {
    secureStorage.delete(key: 'ff_commentsFlagged');
  }

  void addToCommentsFlagged(DocumentReference _value) {
    _commentsFlagged.add(_value);
    secureStorage.setStringList(
        'ff_commentsFlagged', _commentsFlagged.map((x) => x.path).toList());
  }

  void removeFromCommentsFlagged(DocumentReference _value) {
    _commentsFlagged.remove(_value);
    secureStorage.setStringList(
        'ff_commentsFlagged', _commentsFlagged.map((x) => x.path).toList());
  }

  void removeAtIndexFromCommentsFlagged(int _index) {
    _commentsFlagged.removeAt(_index);
    secureStorage.setStringList(
        'ff_commentsFlagged', _commentsFlagged.map((x) => x.path).toList());
  }

  DocumentReference? _userRef =
      FirebaseFirestore.instance.doc('/User/lm4qesd7EKYGsDrYHyFT1hSw9Jd2');
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? _value) {
    _userRef = _value;
    _value != null
        ? secureStorage.setString('ff_userRef', _value.path)
        : secureStorage.remove('ff_userRef');
  }

  void deleteUserRef() {
    secureStorage.delete(key: 'ff_userRef');
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  bool _isEntrepreneur = false;
  bool get isEntrepreneur => _isEntrepreneur;
  set isEntrepreneur(bool _value) {
    _isEntrepreneur = _value;
    secureStorage.setBool('ff_isEntrepreneur', _value);
  }

  void deleteIsEntrepreneur() {
    secureStorage.delete(key: 'ff_isEntrepreneur');
  }

  bool _isStudent = false;
  bool get isStudent => _isStudent;
  set isStudent(bool _value) {
    _isStudent = _value;
    secureStorage.setBool('ff_isStudent', _value);
  }

  void deleteIsStudent() {
    secureStorage.delete(key: 'ff_isStudent');
  }

  bool _isAspiringEntrepreneur = false;
  bool get isAspiringEntrepreneur => _isAspiringEntrepreneur;
  set isAspiringEntrepreneur(bool _value) {
    _isAspiringEntrepreneur = _value;
    secureStorage.setBool('ff_isAspiringEntrepreneur', _value);
  }

  void deleteIsAspiringEntrepreneur() {
    secureStorage.delete(key: 'ff_isAspiringEntrepreneur');
  }

  bool _isInvestor = false;
  bool get isInvestor => _isInvestor;
  set isInvestor(bool _value) {
    _isInvestor = _value;
    secureStorage.setBool('ff_isInvestor', _value);
  }

  void deleteIsInvestor() {
    secureStorage.delete(key: 'ff_isInvestor');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
