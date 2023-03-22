// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopicsRecord> _$topicsRecordSerializer =
    new _$TopicsRecordSerializer();

class _$TopicsRecordSerializer implements StructuredSerializer<TopicsRecord> {
  @override
  final Iterable<Type> types = const [TopicsRecord, _$TopicsRecord];
  @override
  final String wireName = 'TopicsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TopicsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastPost;
    if (value != null) {
      result
        ..add('last_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  TopicsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_post':
          result.lastPost = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$TopicsRecord extends TopicsRecord {
  @override
  final String? category;
  @override
  final String? name;
  @override
  final DateTime? lastPost;
  @override
  final DocumentReference<Object?>? owner;
  @override
  final String? photo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TopicsRecord([void Function(TopicsRecordBuilder)? updates]) =>
      (new TopicsRecordBuilder()..update(updates))._build();

  _$TopicsRecord._(
      {this.category,
      this.name,
      this.lastPost,
      this.owner,
      this.photo,
      this.ffRef})
      : super._();

  @override
  TopicsRecord rebuild(void Function(TopicsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicsRecordBuilder toBuilder() => new TopicsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopicsRecord &&
        category == other.category &&
        name == other.name &&
        lastPost == other.lastPost &&
        owner == other.owner &&
        photo == other.photo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, category.hashCode), name.hashCode),
                    lastPost.hashCode),
                owner.hashCode),
            photo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TopicsRecord')
          ..add('category', category)
          ..add('name', name)
          ..add('lastPost', lastPost)
          ..add('owner', owner)
          ..add('photo', photo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TopicsRecordBuilder
    implements Builder<TopicsRecord, TopicsRecordBuilder> {
  _$TopicsRecord? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _lastPost;
  DateTime? get lastPost => _$this._lastPost;
  set lastPost(DateTime? lastPost) => _$this._lastPost = lastPost;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TopicsRecordBuilder() {
    TopicsRecord._initializeBuilder(this);
  }

  TopicsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _name = $v.name;
      _lastPost = $v.lastPost;
      _owner = $v.owner;
      _photo = $v.photo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopicsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TopicsRecord;
  }

  @override
  void update(void Function(TopicsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TopicsRecord build() => _build();

  _$TopicsRecord _build() {
    final _$result = _$v ??
        new _$TopicsRecord._(
            category: category,
            name: name,
            lastPost: lastPost,
            owner: owner,
            photo: photo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
