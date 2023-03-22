// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_feed_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainFeedRecord> _$mainFeedRecordSerializer =
    new _$MainFeedRecordSerializer();

class _$MainFeedRecordSerializer
    implements StructuredSerializer<MainFeedRecord> {
  @override
  final Iterable<Type> types = const [MainFeedRecord, _$MainFeedRecord];
  @override
  final String wireName = 'MainFeedRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainFeedRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creators;
    if (value != null) {
      result
        ..add('Creators')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('Link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('Thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.viewCount;
    if (value != null) {
      result
        ..add('ViewCount')
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
  MainFeedRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainFeedRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Creators':
          result.creators = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ViewCount':
          result.viewCount = serializers.deserialize(value,
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

class _$MainFeedRecord extends MainFeedRecord {
  @override
  final String? title;
  @override
  final String? creators;
  @override
  final String? description;
  @override
  final String? link;
  @override
  final String? thumbnail;
  @override
  final int? viewCount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MainFeedRecord([void Function(MainFeedRecordBuilder)? updates]) =>
      (new MainFeedRecordBuilder()..update(updates))._build();

  _$MainFeedRecord._(
      {this.title,
      this.creators,
      this.description,
      this.link,
      this.thumbnail,
      this.viewCount,
      this.ffRef})
      : super._();

  @override
  MainFeedRecord rebuild(void Function(MainFeedRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainFeedRecordBuilder toBuilder() =>
      new MainFeedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainFeedRecord &&
        title == other.title &&
        creators == other.creators &&
        description == other.description &&
        link == other.link &&
        thumbnail == other.thumbnail &&
        viewCount == other.viewCount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), creators.hashCode),
                        description.hashCode),
                    link.hashCode),
                thumbnail.hashCode),
            viewCount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainFeedRecord')
          ..add('title', title)
          ..add('creators', creators)
          ..add('description', description)
          ..add('link', link)
          ..add('thumbnail', thumbnail)
          ..add('viewCount', viewCount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MainFeedRecordBuilder
    implements Builder<MainFeedRecord, MainFeedRecordBuilder> {
  _$MainFeedRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _creators;
  String? get creators => _$this._creators;
  set creators(String? creators) => _$this._creators = creators;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  int? _viewCount;
  int? get viewCount => _$this._viewCount;
  set viewCount(int? viewCount) => _$this._viewCount = viewCount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MainFeedRecordBuilder() {
    MainFeedRecord._initializeBuilder(this);
  }

  MainFeedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _creators = $v.creators;
      _description = $v.description;
      _link = $v.link;
      _thumbnail = $v.thumbnail;
      _viewCount = $v.viewCount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainFeedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainFeedRecord;
  }

  @override
  void update(void Function(MainFeedRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainFeedRecord build() => _build();

  _$MainFeedRecord _build() {
    final _$result = _$v ??
        new _$MainFeedRecord._(
            title: title,
            creators: creators,
            description: description,
            link: link,
            thumbnail: thumbnail,
            viewCount: viewCount,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
