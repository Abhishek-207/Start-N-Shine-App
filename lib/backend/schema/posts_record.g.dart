// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ts;
    if (value != null) {
      result
        ..add('ts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.authorName;
    if (value != null) {
      result
        ..add('author_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.upvote;
    if (value != null) {
      result
        ..add('upvote')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.upvoteNumber;
    if (value != null) {
      result
        ..add('upvoteNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  PostsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ts':
          result.ts = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'author_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'upvote':
          result.upvote = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'upvoteNumber':
          result.upvoteNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isFlaggedBy':
          result.isFlaggedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$PostsRecord extends PostsRecord {
  @override
  final DocumentReference<Object?>? author;
  @override
  final String? text;
  @override
  final DateTime? ts;
  @override
  final String? authorName;
  @override
  final bool? upvote;
  @override
  final int? upvoteNumber;
  @override
  final BuiltList<DocumentReference<Object?>>? isFlaggedBy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostsRecord([void Function(PostsRecordBuilder)? updates]) =>
      (new PostsRecordBuilder()..update(updates))._build();

  _$PostsRecord._(
      {this.author,
      this.text,
      this.ts,
      this.authorName,
      this.upvote,
      this.upvoteNumber,
      this.isFlaggedBy,
      this.ffRef})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        author == other.author &&
        text == other.text &&
        ts == other.ts &&
        authorName == other.authorName &&
        upvote == other.upvote &&
        upvoteNumber == other.upvoteNumber &&
        isFlaggedBy == other.isFlaggedBy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, author.hashCode), text.hashCode),
                            ts.hashCode),
                        authorName.hashCode),
                    upvote.hashCode),
                upvoteNumber.hashCode),
            isFlaggedBy.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsRecord')
          ..add('author', author)
          ..add('text', text)
          ..add('ts', ts)
          ..add('authorName', authorName)
          ..add('upvote', upvote)
          ..add('upvoteNumber', upvoteNumber)
          ..add('isFlaggedBy', isFlaggedBy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord? _$v;

  DocumentReference<Object?>? _author;
  DocumentReference<Object?>? get author => _$this._author;
  set author(DocumentReference<Object?>? author) => _$this._author = author;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  bool? _upvote;
  bool? get upvote => _$this._upvote;
  set upvote(bool? upvote) => _$this._upvote = upvote;

  int? _upvoteNumber;
  int? get upvoteNumber => _$this._upvoteNumber;
  set upvoteNumber(int? upvoteNumber) => _$this._upvoteNumber = upvoteNumber;

  ListBuilder<DocumentReference<Object?>>? _isFlaggedBy;
  ListBuilder<DocumentReference<Object?>> get isFlaggedBy =>
      _$this._isFlaggedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set isFlaggedBy(ListBuilder<DocumentReference<Object?>>? isFlaggedBy) =>
      _$this._isFlaggedBy = isFlaggedBy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author;
      _text = $v.text;
      _ts = $v.ts;
      _authorName = $v.authorName;
      _upvote = $v.upvote;
      _upvoteNumber = $v.upvoteNumber;
      _isFlaggedBy = $v.isFlaggedBy?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsRecord build() => _build();

  _$PostsRecord _build() {
    _$PostsRecord _$result;
    try {
      _$result = _$v ??
          new _$PostsRecord._(
              author: author,
              text: text,
              ts: ts,
              authorName: authorName,
              upvote: upvote,
              upvoteNumber: upvoteNumber,
              isFlaggedBy: _isFlaggedBy?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'isFlaggedBy';
        _isFlaggedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
