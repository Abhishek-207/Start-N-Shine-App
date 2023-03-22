// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competitions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompetitionsRecord> _$competitionsRecordSerializer =
    new _$CompetitionsRecordSerializer();

class _$CompetitionsRecordSerializer
    implements StructuredSerializer<CompetitionsRecord> {
  @override
  final Iterable<Type> types = const [CompetitionsRecord, _$CompetitionsRecord];
  @override
  final String wireName = 'CompetitionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompetitionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoURL;
    if (value != null) {
      result
        ..add('photoURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.place;
    if (value != null) {
      result
        ..add('place')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placeMaps;
    if (value != null) {
      result
        ..add('placeMaps')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.competitionLink;
    if (value != null) {
      result
        ..add('competitionLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CompetitionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompetitionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photoURL':
          result.photoURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'placeMaps':
          result.placeMaps = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'competitionLink':
          result.competitionLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$CompetitionsRecord extends CompetitionsRecord {
  @override
  final String? title;
  @override
  final String? photoURL;
  @override
  final String? about;
  @override
  final String? place;
  @override
  final String? placeMaps;
  @override
  final String? competitionLink;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompetitionsRecord(
          [void Function(CompetitionsRecordBuilder)? updates]) =>
      (new CompetitionsRecordBuilder()..update(updates))._build();

  _$CompetitionsRecord._(
      {this.title,
      this.photoURL,
      this.about,
      this.place,
      this.placeMaps,
      this.competitionLink,
      this.date,
      this.ffRef})
      : super._();

  @override
  CompetitionsRecord rebuild(
          void Function(CompetitionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompetitionsRecordBuilder toBuilder() =>
      new CompetitionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompetitionsRecord &&
        title == other.title &&
        photoURL == other.photoURL &&
        about == other.about &&
        place == other.place &&
        placeMaps == other.placeMaps &&
        competitionLink == other.competitionLink &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, title.hashCode), photoURL.hashCode),
                            about.hashCode),
                        place.hashCode),
                    placeMaps.hashCode),
                competitionLink.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompetitionsRecord')
          ..add('title', title)
          ..add('photoURL', photoURL)
          ..add('about', about)
          ..add('place', place)
          ..add('placeMaps', placeMaps)
          ..add('competitionLink', competitionLink)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompetitionsRecordBuilder
    implements Builder<CompetitionsRecord, CompetitionsRecordBuilder> {
  _$CompetitionsRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _photoURL;
  String? get photoURL => _$this._photoURL;
  set photoURL(String? photoURL) => _$this._photoURL = photoURL;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  String? _placeMaps;
  String? get placeMaps => _$this._placeMaps;
  set placeMaps(String? placeMaps) => _$this._placeMaps = placeMaps;

  String? _competitionLink;
  String? get competitionLink => _$this._competitionLink;
  set competitionLink(String? competitionLink) =>
      _$this._competitionLink = competitionLink;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompetitionsRecordBuilder() {
    CompetitionsRecord._initializeBuilder(this);
  }

  CompetitionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _photoURL = $v.photoURL;
      _about = $v.about;
      _place = $v.place;
      _placeMaps = $v.placeMaps;
      _competitionLink = $v.competitionLink;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompetitionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompetitionsRecord;
  }

  @override
  void update(void Function(CompetitionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompetitionsRecord build() => _build();

  _$CompetitionsRecord _build() {
    final _$result = _$v ??
        new _$CompetitionsRecord._(
            title: title,
            photoURL: photoURL,
            about: about,
            place: place,
            placeMaps: placeMaps,
            competitionLink: competitionLink,
            date: date,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
