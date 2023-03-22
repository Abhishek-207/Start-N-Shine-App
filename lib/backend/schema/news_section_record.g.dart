// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_section_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsSectionRecord> _$newsSectionRecordSerializer =
    new _$NewsSectionRecordSerializer();

class _$NewsSectionRecordSerializer
    implements StructuredSerializer<NewsSectionRecord> {
  @override
  final Iterable<Type> types = const [NewsSectionRecord, _$NewsSectionRecord];
  @override
  final String wireName = 'NewsSectionRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewsSectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.heading;
    if (value != null) {
      result
        ..add('heading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newsText;
    if (value != null) {
      result
        ..add('newsText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.courtesyLink;
    if (value != null) {
      result
        ..add('courtesyLink')
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
  NewsSectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsSectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'heading':
          result.heading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'newsText':
          result.newsText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'courtesyLink':
          result.courtesyLink = serializers.deserialize(value,
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

class _$NewsSectionRecord extends NewsSectionRecord {
  @override
  final String? heading;
  @override
  final String? thumbnail;
  @override
  final String? newsText;
  @override
  final DateTime? createdTime;
  @override
  final String? courtesyLink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NewsSectionRecord(
          [void Function(NewsSectionRecordBuilder)? updates]) =>
      (new NewsSectionRecordBuilder()..update(updates))._build();

  _$NewsSectionRecord._(
      {this.heading,
      this.thumbnail,
      this.newsText,
      this.createdTime,
      this.courtesyLink,
      this.ffRef})
      : super._();

  @override
  NewsSectionRecord rebuild(void Function(NewsSectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsSectionRecordBuilder toBuilder() =>
      new NewsSectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsSectionRecord &&
        heading == other.heading &&
        thumbnail == other.thumbnail &&
        newsText == other.newsText &&
        createdTime == other.createdTime &&
        courtesyLink == other.courtesyLink &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, heading.hashCode), thumbnail.hashCode),
                    newsText.hashCode),
                createdTime.hashCode),
            courtesyLink.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsSectionRecord')
          ..add('heading', heading)
          ..add('thumbnail', thumbnail)
          ..add('newsText', newsText)
          ..add('createdTime', createdTime)
          ..add('courtesyLink', courtesyLink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NewsSectionRecordBuilder
    implements Builder<NewsSectionRecord, NewsSectionRecordBuilder> {
  _$NewsSectionRecord? _$v;

  String? _heading;
  String? get heading => _$this._heading;
  set heading(String? heading) => _$this._heading = heading;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _newsText;
  String? get newsText => _$this._newsText;
  set newsText(String? newsText) => _$this._newsText = newsText;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _courtesyLink;
  String? get courtesyLink => _$this._courtesyLink;
  set courtesyLink(String? courtesyLink) => _$this._courtesyLink = courtesyLink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NewsSectionRecordBuilder() {
    NewsSectionRecord._initializeBuilder(this);
  }

  NewsSectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _heading = $v.heading;
      _thumbnail = $v.thumbnail;
      _newsText = $v.newsText;
      _createdTime = $v.createdTime;
      _courtesyLink = $v.courtesyLink;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsSectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsSectionRecord;
  }

  @override
  void update(void Function(NewsSectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsSectionRecord build() => _build();

  _$NewsSectionRecord _build() {
    final _$result = _$v ??
        new _$NewsSectionRecord._(
            heading: heading,
            thumbnail: thumbnail,
            newsText: newsText,
            createdTime: createdTime,
            courtesyLink: courtesyLink,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
