// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentsRecord> _$commentsRecordSerializer =
    new _$CommentsRecordSerializer();

class _$CommentsRecordSerializer
    implements StructuredSerializer<CommentsRecord> {
  @override
  final Iterable<Type> types = const [CommentsRecord, _$CommentsRecord];
  @override
  final String wireName = 'CommentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.commentText;
    if (value != null) {
      result
        ..add('commentText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentedBy;
    if (value != null) {
      result
        ..add('commentedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.isLikedBy;
    if (value != null) {
      result
        ..add('isLikedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.commentTime;
    if (value != null) {
      result
        ..add('commentTime')
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
    value = object.pageLink;
    if (value != null) {
      result
        ..add('pageLink')
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
  CommentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'commentText':
          result.commentText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commentedBy':
          result.commentedBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'isLikedBy':
          result.isLikedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'commentTime':
          result.commentTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isFlaggedBy':
          result.isFlaggedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'pageLink':
          result.pageLink = serializers.deserialize(value,
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

class _$CommentsRecord extends CommentsRecord {
  @override
  final String? commentText;
  @override
  final DocumentReference<Object?>? commentedBy;
  @override
  final BuiltList<DocumentReference<Object?>>? isLikedBy;
  @override
  final DateTime? commentTime;
  @override
  final BuiltList<DocumentReference<Object?>>? isFlaggedBy;
  @override
  final String? pageLink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommentsRecord([void Function(CommentsRecordBuilder)? updates]) =>
      (new CommentsRecordBuilder()..update(updates))._build();

  _$CommentsRecord._(
      {this.commentText,
      this.commentedBy,
      this.isLikedBy,
      this.commentTime,
      this.isFlaggedBy,
      this.pageLink,
      this.ffRef})
      : super._();

  @override
  CommentsRecord rebuild(void Function(CommentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsRecordBuilder toBuilder() =>
      new CommentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsRecord &&
        commentText == other.commentText &&
        commentedBy == other.commentedBy &&
        isLikedBy == other.isLikedBy &&
        commentTime == other.commentTime &&
        isFlaggedBy == other.isFlaggedBy &&
        pageLink == other.pageLink &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, commentText.hashCode), commentedBy.hashCode),
                        isLikedBy.hashCode),
                    commentTime.hashCode),
                isFlaggedBy.hashCode),
            pageLink.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentsRecord')
          ..add('commentText', commentText)
          ..add('commentedBy', commentedBy)
          ..add('isLikedBy', isLikedBy)
          ..add('commentTime', commentTime)
          ..add('isFlaggedBy', isFlaggedBy)
          ..add('pageLink', pageLink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommentsRecordBuilder
    implements Builder<CommentsRecord, CommentsRecordBuilder> {
  _$CommentsRecord? _$v;

  String? _commentText;
  String? get commentText => _$this._commentText;
  set commentText(String? commentText) => _$this._commentText = commentText;

  DocumentReference<Object?>? _commentedBy;
  DocumentReference<Object?>? get commentedBy => _$this._commentedBy;
  set commentedBy(DocumentReference<Object?>? commentedBy) =>
      _$this._commentedBy = commentedBy;

  ListBuilder<DocumentReference<Object?>>? _isLikedBy;
  ListBuilder<DocumentReference<Object?>> get isLikedBy =>
      _$this._isLikedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set isLikedBy(ListBuilder<DocumentReference<Object?>>? isLikedBy) =>
      _$this._isLikedBy = isLikedBy;

  DateTime? _commentTime;
  DateTime? get commentTime => _$this._commentTime;
  set commentTime(DateTime? commentTime) => _$this._commentTime = commentTime;

  ListBuilder<DocumentReference<Object?>>? _isFlaggedBy;
  ListBuilder<DocumentReference<Object?>> get isFlaggedBy =>
      _$this._isFlaggedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set isFlaggedBy(ListBuilder<DocumentReference<Object?>>? isFlaggedBy) =>
      _$this._isFlaggedBy = isFlaggedBy;

  String? _pageLink;
  String? get pageLink => _$this._pageLink;
  set pageLink(String? pageLink) => _$this._pageLink = pageLink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommentsRecordBuilder() {
    CommentsRecord._initializeBuilder(this);
  }

  CommentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commentText = $v.commentText;
      _commentedBy = $v.commentedBy;
      _isLikedBy = $v.isLikedBy?.toBuilder();
      _commentTime = $v.commentTime;
      _isFlaggedBy = $v.isFlaggedBy?.toBuilder();
      _pageLink = $v.pageLink;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentsRecord;
  }

  @override
  void update(void Function(CommentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentsRecord build() => _build();

  _$CommentsRecord _build() {
    _$CommentsRecord _$result;
    try {
      _$result = _$v ??
          new _$CommentsRecord._(
              commentText: commentText,
              commentedBy: commentedBy,
              isLikedBy: _isLikedBy?.build(),
              commentTime: commentTime,
              isFlaggedBy: _isFlaggedBy?.build(),
              pageLink: pageLink,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'isLikedBy';
        _isLikedBy?.build();

        _$failedField = 'isFlaggedBy';
        _isFlaggedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
