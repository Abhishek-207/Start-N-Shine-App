// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRecord> _$userRecordSerializer = new _$UserRecordSerializer();

class _$UserRecordSerializer implements StructuredSerializer<UserRecord> {
  @override
  final Iterable<Type> types = const [UserRecord, _$UserRecord];
  @override
  final String wireName = 'UserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interests;
    if (value != null) {
      result
        ..add('interests')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.repoSeen;
    if (value != null) {
      result
        ..add('RepoSeen')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.followers;
    if (value != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userRefs;
    if (value != null) {
      result
        ..add('userRefs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.repoLastSeen;
    if (value != null) {
      result
        ..add('RepoLastSeen')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userBio;
    if (value != null) {
      result
        ..add('userBio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.upvotedCommPosts;
    if (value != null) {
      result
        ..add('UpvotedCommPosts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.coverPhoto;
    if (value != null) {
      result
        ..add('coverPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usernameWIthSymbol;
    if (value != null) {
      result
        ..add('usernameWIthSymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.yourReferralCode;
    if (value != null) {
      result
        ..add('yourReferralCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isLikedSocial;
    if (value != null) {
      result
        ..add('isLikedSocial')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.isLikedComments;
    if (value != null) {
      result
        ..add('isLikedComments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.contestRefers;
    if (value != null) {
      result
        ..add('contestRefers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.commPostsFlagged;
    if (value != null) {
      result
        ..add('commPostsFlagged')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.followersnum;
    if (value != null) {
      result
        ..add('followersnum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('isVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userCategory;
    if (value != null) {
      result
        ..add('userCategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.following;
    if (value != null) {
      result
        ..add('following')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.followingNum;
    if (value != null) {
      result
        ..add('followingNum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.socialPostsFlagged;
    if (value != null) {
      result
        ..add('socialPostsFlagged')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.usernameIsSet;
    if (value != null) {
      result
        ..add('usernameIsSet')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UserRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interests':
          result.interests.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'RepoSeen':
          result.repoSeen.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'followers':
          result.followers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'userRefs':
          result.userRefs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'RepoLastSeen':
          result.repoLastSeen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userBio':
          result.userBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UpvotedCommPosts':
          result.upvotedCommPosts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'coverPhoto':
          result.coverPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'usernameWIthSymbol':
          result.usernameWIthSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'yourReferralCode':
          result.yourReferralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isLikedSocial':
          result.isLikedSocial.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'isLikedComments':
          result.isLikedComments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'contestRefers':
          result.contestRefers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'commPostsFlagged':
          result.commPostsFlagged.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'followersnum':
          result.followersnum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isVerified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userCategory':
          result.userCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'following':
          result.following.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'followingNum':
          result.followingNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'socialPostsFlagged':
          result.socialPostsFlagged.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'usernameIsSet':
          result.usernameIsSet = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserRecord extends UserRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final String? password;
  @override
  final String? category;
  @override
  final BuiltList<String>? interests;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final BuiltList<String>? repoSeen;
  @override
  final BuiltList<DocumentReference<Object?>>? followers;
  @override
  final String? username;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final BuiltList<DocumentReference<Object?>>? userRefs;
  @override
  final int? repoLastSeen;
  @override
  final String? userBio;
  @override
  final BuiltList<DocumentReference<Object?>>? upvotedCommPosts;
  @override
  final String? coverPhoto;
  @override
  final String? usernameWIthSymbol;
  @override
  final String? yourReferralCode;
  @override
  final BuiltList<DocumentReference<Object?>>? isLikedSocial;
  @override
  final BuiltList<DocumentReference<Object?>>? isLikedComments;
  @override
  final int? contestRefers;
  @override
  final BuiltList<DocumentReference<Object?>>? commPostsFlagged;
  @override
  final int? followersnum;
  @override
  final bool? isVerified;
  @override
  final String? userCategory;
  @override
  final BuiltList<DocumentReference<Object?>>? following;
  @override
  final int? followingNum;
  @override
  final BuiltList<DocumentReference<Object?>>? socialPostsFlagged;
  @override
  final bool? usernameIsSet;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserRecord([void Function(UserRecordBuilder)? updates]) =>
      (new UserRecordBuilder()..update(updates))._build();

  _$UserRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.password,
      this.category,
      this.interests,
      this.createdTime,
      this.phoneNumber,
      this.repoSeen,
      this.followers,
      this.username,
      this.userRef,
      this.userRefs,
      this.repoLastSeen,
      this.userBio,
      this.upvotedCommPosts,
      this.coverPhoto,
      this.usernameWIthSymbol,
      this.yourReferralCode,
      this.isLikedSocial,
      this.isLikedComments,
      this.contestRefers,
      this.commPostsFlagged,
      this.followersnum,
      this.isVerified,
      this.userCategory,
      this.following,
      this.followingNum,
      this.socialPostsFlagged,
      this.usernameIsSet,
      this.ffRef})
      : super._();

  @override
  UserRecord rebuild(void Function(UserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRecordBuilder toBuilder() => new UserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        password == other.password &&
        category == other.category &&
        interests == other.interests &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        repoSeen == other.repoSeen &&
        followers == other.followers &&
        username == other.username &&
        userRef == other.userRef &&
        userRefs == other.userRefs &&
        repoLastSeen == other.repoLastSeen &&
        userBio == other.userBio &&
        upvotedCommPosts == other.upvotedCommPosts &&
        coverPhoto == other.coverPhoto &&
        usernameWIthSymbol == other.usernameWIthSymbol &&
        yourReferralCode == other.yourReferralCode &&
        isLikedSocial == other.isLikedSocial &&
        isLikedComments == other.isLikedComments &&
        contestRefers == other.contestRefers &&
        commPostsFlagged == other.commPostsFlagged &&
        followersnum == other.followersnum &&
        isVerified == other.isVerified &&
        userCategory == other.userCategory &&
        following == other.following &&
        followingNum == other.followingNum &&
        socialPostsFlagged == other.socialPostsFlagged &&
        usernameIsSet == other.usernameIsSet &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, email.hashCode), displayName.hashCode), photoUrl.hashCode), uid.hashCode), password.hashCode), category.hashCode), interests.hashCode), createdTime.hashCode), phoneNumber.hashCode), repoSeen.hashCode), followers.hashCode), username.hashCode), userRef.hashCode),
                                                                                userRefs.hashCode),
                                                                            repoLastSeen.hashCode),
                                                                        userBio.hashCode),
                                                                    upvotedCommPosts.hashCode),
                                                                coverPhoto.hashCode),
                                                            usernameWIthSymbol.hashCode),
                                                        yourReferralCode.hashCode),
                                                    isLikedSocial.hashCode),
                                                isLikedComments.hashCode),
                                            contestRefers.hashCode),
                                        commPostsFlagged.hashCode),
                                    followersnum.hashCode),
                                isVerified.hashCode),
                            userCategory.hashCode),
                        following.hashCode),
                    followingNum.hashCode),
                socialPostsFlagged.hashCode),
            usernameIsSet.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('password', password)
          ..add('category', category)
          ..add('interests', interests)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('repoSeen', repoSeen)
          ..add('followers', followers)
          ..add('username', username)
          ..add('userRef', userRef)
          ..add('userRefs', userRefs)
          ..add('repoLastSeen', repoLastSeen)
          ..add('userBio', userBio)
          ..add('upvotedCommPosts', upvotedCommPosts)
          ..add('coverPhoto', coverPhoto)
          ..add('usernameWIthSymbol', usernameWIthSymbol)
          ..add('yourReferralCode', yourReferralCode)
          ..add('isLikedSocial', isLikedSocial)
          ..add('isLikedComments', isLikedComments)
          ..add('contestRefers', contestRefers)
          ..add('commPostsFlagged', commPostsFlagged)
          ..add('followersnum', followersnum)
          ..add('isVerified', isVerified)
          ..add('userCategory', userCategory)
          ..add('following', following)
          ..add('followingNum', followingNum)
          ..add('socialPostsFlagged', socialPostsFlagged)
          ..add('usernameIsSet', usernameIsSet)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserRecordBuilder implements Builder<UserRecord, UserRecordBuilder> {
  _$UserRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  ListBuilder<String>? _interests;
  ListBuilder<String> get interests =>
      _$this._interests ??= new ListBuilder<String>();
  set interests(ListBuilder<String>? interests) =>
      _$this._interests = interests;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  ListBuilder<String>? _repoSeen;
  ListBuilder<String> get repoSeen =>
      _$this._repoSeen ??= new ListBuilder<String>();
  set repoSeen(ListBuilder<String>? repoSeen) => _$this._repoSeen = repoSeen;

  ListBuilder<DocumentReference<Object?>>? _followers;
  ListBuilder<DocumentReference<Object?>> get followers =>
      _$this._followers ??= new ListBuilder<DocumentReference<Object?>>();
  set followers(ListBuilder<DocumentReference<Object?>>? followers) =>
      _$this._followers = followers;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  ListBuilder<DocumentReference<Object?>>? _userRefs;
  ListBuilder<DocumentReference<Object?>> get userRefs =>
      _$this._userRefs ??= new ListBuilder<DocumentReference<Object?>>();
  set userRefs(ListBuilder<DocumentReference<Object?>>? userRefs) =>
      _$this._userRefs = userRefs;

  int? _repoLastSeen;
  int? get repoLastSeen => _$this._repoLastSeen;
  set repoLastSeen(int? repoLastSeen) => _$this._repoLastSeen = repoLastSeen;

  String? _userBio;
  String? get userBio => _$this._userBio;
  set userBio(String? userBio) => _$this._userBio = userBio;

  ListBuilder<DocumentReference<Object?>>? _upvotedCommPosts;
  ListBuilder<DocumentReference<Object?>> get upvotedCommPosts =>
      _$this._upvotedCommPosts ??=
          new ListBuilder<DocumentReference<Object?>>();
  set upvotedCommPosts(
          ListBuilder<DocumentReference<Object?>>? upvotedCommPosts) =>
      _$this._upvotedCommPosts = upvotedCommPosts;

  String? _coverPhoto;
  String? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(String? coverPhoto) => _$this._coverPhoto = coverPhoto;

  String? _usernameWIthSymbol;
  String? get usernameWIthSymbol => _$this._usernameWIthSymbol;
  set usernameWIthSymbol(String? usernameWIthSymbol) =>
      _$this._usernameWIthSymbol = usernameWIthSymbol;

  String? _yourReferralCode;
  String? get yourReferralCode => _$this._yourReferralCode;
  set yourReferralCode(String? yourReferralCode) =>
      _$this._yourReferralCode = yourReferralCode;

  ListBuilder<DocumentReference<Object?>>? _isLikedSocial;
  ListBuilder<DocumentReference<Object?>> get isLikedSocial =>
      _$this._isLikedSocial ??= new ListBuilder<DocumentReference<Object?>>();
  set isLikedSocial(ListBuilder<DocumentReference<Object?>>? isLikedSocial) =>
      _$this._isLikedSocial = isLikedSocial;

  ListBuilder<DocumentReference<Object?>>? _isLikedComments;
  ListBuilder<DocumentReference<Object?>> get isLikedComments =>
      _$this._isLikedComments ??= new ListBuilder<DocumentReference<Object?>>();
  set isLikedComments(
          ListBuilder<DocumentReference<Object?>>? isLikedComments) =>
      _$this._isLikedComments = isLikedComments;

  int? _contestRefers;
  int? get contestRefers => _$this._contestRefers;
  set contestRefers(int? contestRefers) =>
      _$this._contestRefers = contestRefers;

  ListBuilder<DocumentReference<Object?>>? _commPostsFlagged;
  ListBuilder<DocumentReference<Object?>> get commPostsFlagged =>
      _$this._commPostsFlagged ??=
          new ListBuilder<DocumentReference<Object?>>();
  set commPostsFlagged(
          ListBuilder<DocumentReference<Object?>>? commPostsFlagged) =>
      _$this._commPostsFlagged = commPostsFlagged;

  int? _followersnum;
  int? get followersnum => _$this._followersnum;
  set followersnum(int? followersnum) => _$this._followersnum = followersnum;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  String? _userCategory;
  String? get userCategory => _$this._userCategory;
  set userCategory(String? userCategory) => _$this._userCategory = userCategory;

  ListBuilder<DocumentReference<Object?>>? _following;
  ListBuilder<DocumentReference<Object?>> get following =>
      _$this._following ??= new ListBuilder<DocumentReference<Object?>>();
  set following(ListBuilder<DocumentReference<Object?>>? following) =>
      _$this._following = following;

  int? _followingNum;
  int? get followingNum => _$this._followingNum;
  set followingNum(int? followingNum) => _$this._followingNum = followingNum;

  ListBuilder<DocumentReference<Object?>>? _socialPostsFlagged;
  ListBuilder<DocumentReference<Object?>> get socialPostsFlagged =>
      _$this._socialPostsFlagged ??=
          new ListBuilder<DocumentReference<Object?>>();
  set socialPostsFlagged(
          ListBuilder<DocumentReference<Object?>>? socialPostsFlagged) =>
      _$this._socialPostsFlagged = socialPostsFlagged;

  bool? _usernameIsSet;
  bool? get usernameIsSet => _$this._usernameIsSet;
  set usernameIsSet(bool? usernameIsSet) =>
      _$this._usernameIsSet = usernameIsSet;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserRecordBuilder() {
    UserRecord._initializeBuilder(this);
  }

  UserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _password = $v.password;
      _category = $v.category;
      _interests = $v.interests?.toBuilder();
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _repoSeen = $v.repoSeen?.toBuilder();
      _followers = $v.followers?.toBuilder();
      _username = $v.username;
      _userRef = $v.userRef;
      _userRefs = $v.userRefs?.toBuilder();
      _repoLastSeen = $v.repoLastSeen;
      _userBio = $v.userBio;
      _upvotedCommPosts = $v.upvotedCommPosts?.toBuilder();
      _coverPhoto = $v.coverPhoto;
      _usernameWIthSymbol = $v.usernameWIthSymbol;
      _yourReferralCode = $v.yourReferralCode;
      _isLikedSocial = $v.isLikedSocial?.toBuilder();
      _isLikedComments = $v.isLikedComments?.toBuilder();
      _contestRefers = $v.contestRefers;
      _commPostsFlagged = $v.commPostsFlagged?.toBuilder();
      _followersnum = $v.followersnum;
      _isVerified = $v.isVerified;
      _userCategory = $v.userCategory;
      _following = $v.following?.toBuilder();
      _followingNum = $v.followingNum;
      _socialPostsFlagged = $v.socialPostsFlagged?.toBuilder();
      _usernameIsSet = $v.usernameIsSet;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRecord;
  }

  @override
  void update(void Function(UserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRecord build() => _build();

  _$UserRecord _build() {
    _$UserRecord _$result;
    try {
      _$result = _$v ??
          new _$UserRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              password: password,
              category: category,
              interests: _interests?.build(),
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              repoSeen: _repoSeen?.build(),
              followers: _followers?.build(),
              username: username,
              userRef: userRef,
              userRefs: _userRefs?.build(),
              repoLastSeen: repoLastSeen,
              userBio: userBio,
              upvotedCommPosts: _upvotedCommPosts?.build(),
              coverPhoto: coverPhoto,
              usernameWIthSymbol: usernameWIthSymbol,
              yourReferralCode: yourReferralCode,
              isLikedSocial: _isLikedSocial?.build(),
              isLikedComments: _isLikedComments?.build(),
              contestRefers: contestRefers,
              commPostsFlagged: _commPostsFlagged?.build(),
              followersnum: followersnum,
              isVerified: isVerified,
              userCategory: userCategory,
              following: _following?.build(),
              followingNum: followingNum,
              socialPostsFlagged: _socialPostsFlagged?.build(),
              usernameIsSet: usernameIsSet,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interests';
        _interests?.build();

        _$failedField = 'repoSeen';
        _repoSeen?.build();
        _$failedField = 'followers';
        _followers?.build();

        _$failedField = 'userRefs';
        _userRefs?.build();

        _$failedField = 'upvotedCommPosts';
        _upvotedCommPosts?.build();

        _$failedField = 'isLikedSocial';
        _isLikedSocial?.build();
        _$failedField = 'isLikedComments';
        _isLikedComments?.build();

        _$failedField = 'commPostsFlagged';
        _commPostsFlagged?.build();

        _$failedField = 'following';
        _following?.build();

        _$failedField = 'socialPostsFlagged';
        _socialPostsFlagged?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
