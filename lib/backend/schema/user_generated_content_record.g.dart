// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_generated_content_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserGeneratedContentRecord> _$userGeneratedContentRecordSerializer =
    new _$UserGeneratedContentRecordSerializer();

class _$UserGeneratedContentRecordSerializer
    implements StructuredSerializer<UserGeneratedContentRecord> {
  @override
  final Iterable<Type> types = const [
    UserGeneratedContentRecord,
    _$UserGeneratedContentRecord
  ];
  @override
  final String wireName = 'UserGeneratedContentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserGeneratedContentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.postText;
    if (value != null) {
      result
        ..add('postText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postImage;
    if (value != null) {
      result
        ..add('postImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likedBy;
    if (value != null) {
      result
        ..add('likedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.timePosted;
    if (value != null) {
      result
        ..add('timePosted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isFlaggedBy;
    if (value != null) {
      result
        ..add('isFlaggedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.likenum;
    if (value != null) {
      result
        ..add('likenum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UserGeneratedContentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserGeneratedContentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'postText':
          result.postText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postImage':
          result.postImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'likedBy':
          result.likedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'timePosted':
          result.timePosted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isFlaggedBy':
          result.isFlaggedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'likenum':
          result.likenum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UserGeneratedContentRecord extends UserGeneratedContentRecord {
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final String? postText;
  @override
  final String? postImage;
  @override
  final BuiltList<DocumentReference<Object?>>? likedBy;
  @override
  final DateTime? timePosted;
  @override
  final BuiltList<DocumentReference<Object?>>? isFlaggedBy;
  @override
  final int? likenum;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserGeneratedContentRecord(
          [void Function(UserGeneratedContentRecordBuilder)? updates]) =>
      (new UserGeneratedContentRecordBuilder()..update(updates))._build();

  _$UserGeneratedContentRecord._(
      {this.createdBy,
      this.postText,
      this.postImage,
      this.likedBy,
      this.timePosted,
      this.isFlaggedBy,
      this.likenum,
      this.ffRef})
      : super._();

  @override
  UserGeneratedContentRecord rebuild(
          void Function(UserGeneratedContentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserGeneratedContentRecordBuilder toBuilder() =>
      new UserGeneratedContentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserGeneratedContentRecord &&
        createdBy == other.createdBy &&
        postText == other.postText &&
        postImage == other.postImage &&
        likedBy == other.likedBy &&
        timePosted == other.timePosted &&
        isFlaggedBy == other.isFlaggedBy &&
        likenum == other.likenum &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, createdBy.hashCode), postText.hashCode),
                            postImage.hashCode),
                        likedBy.hashCode),
                    timePosted.hashCode),
                isFlaggedBy.hashCode),
            likenum.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserGeneratedContentRecord')
          ..add('createdBy', createdBy)
          ..add('postText', postText)
          ..add('postImage', postImage)
          ..add('likedBy', likedBy)
          ..add('timePosted', timePosted)
          ..add('isFlaggedBy', isFlaggedBy)
          ..add('likenum', likenum)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserGeneratedContentRecordBuilder
    implements
        Builder<UserGeneratedContentRecord, UserGeneratedContentRecordBuilder> {
  _$UserGeneratedContentRecord? _$v;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  String? _postText;
  String? get postText => _$this._postText;
  set postText(String? postText) => _$this._postText = postText;

  String? _postImage;
  String? get postImage => _$this._postImage;
  set postImage(String? postImage) => _$this._postImage = postImage;

  ListBuilder<DocumentReference<Object?>>? _likedBy;
  ListBuilder<DocumentReference<Object?>> get likedBy =>
      _$this._likedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set likedBy(ListBuilder<DocumentReference<Object?>>? likedBy) =>
      _$this._likedBy = likedBy;

  DateTime? _timePosted;
  DateTime? get timePosted => _$this._timePosted;
  set timePosted(DateTime? timePosted) => _$this._timePosted = timePosted;

  ListBuilder<DocumentReference<Object?>>? _isFlaggedBy;
  ListBuilder<DocumentReference<Object?>> get isFlaggedBy =>
      _$this._isFlaggedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set isFlaggedBy(ListBuilder<DocumentReference<Object?>>? isFlaggedBy) =>
      _$this._isFlaggedBy = isFlaggedBy;

  int? _likenum;
  int? get likenum => _$this._likenum;
  set likenum(int? likenum) => _$this._likenum = likenum;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserGeneratedContentRecordBuilder() {
    UserGeneratedContentRecord._initializeBuilder(this);
  }

  UserGeneratedContentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdBy = $v.createdBy;
      _postText = $v.postText;
      _postImage = $v.postImage;
      _likedBy = $v.likedBy?.toBuilder();
      _timePosted = $v.timePosted;
      _isFlaggedBy = $v.isFlaggedBy?.toBuilder();
      _likenum = $v.likenum;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserGeneratedContentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserGeneratedContentRecord;
  }

  @override
  void update(void Function(UserGeneratedContentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserGeneratedContentRecord build() => _build();

  _$UserGeneratedContentRecord _build() {
    _$UserGeneratedContentRecord _$result;
    try {
      _$result = _$v ??
          new _$UserGeneratedContentRecord._(
              createdBy: createdBy,
              postText: postText,
              postImage: postImage,
              likedBy: _likedBy?.build(),
              timePosted: timePosted,
              isFlaggedBy: _isFlaggedBy?.build(),
              likenum: likenum,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likedBy';
        _likedBy?.build();

        _$failedField = 'isFlaggedBy';
        _isFlaggedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserGeneratedContentRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
