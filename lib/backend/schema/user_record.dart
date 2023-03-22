import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_record.g.dart';

abstract class UserRecord implements Built<UserRecord, UserRecordBuilder> {
  static Serializer<UserRecord> get serializer => _$userRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  String? get password;

  String? get category;

  BuiltList<String>? get interests;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'RepoSeen')
  BuiltList<String>? get repoSeen;

  BuiltList<DocumentReference>? get followers;

  String? get username;

  DocumentReference? get userRef;

  BuiltList<DocumentReference>? get userRefs;

  @BuiltValueField(wireName: 'RepoLastSeen')
  int? get repoLastSeen;

  String? get userBio;

  @BuiltValueField(wireName: 'UpvotedCommPosts')
  BuiltList<DocumentReference>? get upvotedCommPosts;

  String? get coverPhoto;

  String? get usernameWIthSymbol;

  String? get yourReferralCode;

  BuiltList<DocumentReference>? get isLikedSocial;

  BuiltList<DocumentReference>? get isLikedComments;

  int? get contestRefers;

  BuiltList<DocumentReference>? get commPostsFlagged;

  int? get followersnum;

  bool? get isVerified;

  String? get userCategory;

  BuiltList<DocumentReference>? get following;

  int? get followingNum;

  BuiltList<DocumentReference>? get socialPostsFlagged;

  bool? get usernameIsSet;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..password = ''
    ..category = ''
    ..interests = ListBuilder()
    ..phoneNumber = ''
    ..repoSeen = ListBuilder()
    ..followers = ListBuilder()
    ..username = ''
    ..userRefs = ListBuilder()
    ..repoLastSeen = 0
    ..userBio = ''
    ..upvotedCommPosts = ListBuilder()
    ..coverPhoto = ''
    ..usernameWIthSymbol = ''
    ..yourReferralCode = ''
    ..isLikedSocial = ListBuilder()
    ..isLikedComments = ListBuilder()
    ..contestRefers = 0
    ..commPostsFlagged = ListBuilder()
    ..followersnum = 0
    ..isVerified = false
    ..userCategory = ''
    ..following = ListBuilder()
    ..followingNum = 0
    ..socialPostsFlagged = ListBuilder()
    ..usernameIsSet = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserRecord._();
  factory UserRecord([void Function(UserRecordBuilder) updates]) = _$UserRecord;

  static UserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? password,
  String? category,
  DateTime? createdTime,
  String? phoneNumber,
  String? username,
  DocumentReference? userRef,
  int? repoLastSeen,
  String? userBio,
  String? coverPhoto,
  String? usernameWIthSymbol,
  String? yourReferralCode,
  int? contestRefers,
  int? followersnum,
  bool? isVerified,
  String? userCategory,
  int? followingNum,
  bool? usernameIsSet,
}) {
  final firestoreData = serializers.toFirestore(
    UserRecord.serializer,
    UserRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..password = password
        ..category = category
        ..interests = null
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..repoSeen = null
        ..followers = null
        ..username = username
        ..userRef = userRef
        ..userRefs = null
        ..repoLastSeen = repoLastSeen
        ..userBio = userBio
        ..upvotedCommPosts = null
        ..coverPhoto = coverPhoto
        ..usernameWIthSymbol = usernameWIthSymbol
        ..yourReferralCode = yourReferralCode
        ..isLikedSocial = null
        ..isLikedComments = null
        ..contestRefers = contestRefers
        ..commPostsFlagged = null
        ..followersnum = followersnum
        ..isVerified = isVerified
        ..userCategory = userCategory
        ..following = null
        ..followingNum = followingNum
        ..socialPostsFlagged = null
        ..usernameIsSet = usernameIsSet,
    ),
  );

  return firestoreData;
}
