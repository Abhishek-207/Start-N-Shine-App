// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenges_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChallengesRecord> _$challengesRecordSerializer =
    new _$ChallengesRecordSerializer();

class _$ChallengesRecordSerializer
    implements StructuredSerializer<ChallengesRecord> {
  @override
  final Iterable<Type> types = const [ChallengesRecord, _$ChallengesRecord];
  @override
  final String wireName = 'ChallengesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChallengesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.challengeImage;
    if (value != null) {
      result
        ..add('challengeImage')
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
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
  ChallengesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChallengesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'challengeImage':
          result.challengeImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
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

class _$ChallengesRecord extends ChallengesRecord {
  @override
  final String? challengeImage;
  @override
  final String? name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChallengesRecord(
          [void Function(ChallengesRecordBuilder)? updates]) =>
      (new ChallengesRecordBuilder()..update(updates))._build();

  _$ChallengesRecord._(
      {this.challengeImage,
      this.name,
      this.startDate,
      this.endDate,
      this.status,
      this.ffRef})
      : super._();

  @override
  ChallengesRecord rebuild(void Function(ChallengesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChallengesRecordBuilder toBuilder() =>
      new ChallengesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChallengesRecord &&
        challengeImage == other.challengeImage &&
        name == other.name &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, challengeImage.hashCode), name.hashCode),
                    startDate.hashCode),
                endDate.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChallengesRecord')
          ..add('challengeImage', challengeImage)
          ..add('name', name)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChallengesRecordBuilder
    implements Builder<ChallengesRecord, ChallengesRecordBuilder> {
  _$ChallengesRecord? _$v;

  String? _challengeImage;
  String? get challengeImage => _$this._challengeImage;
  set challengeImage(String? challengeImage) =>
      _$this._challengeImage = challengeImage;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChallengesRecordBuilder() {
    ChallengesRecord._initializeBuilder(this);
  }

  ChallengesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _challengeImage = $v.challengeImage;
      _name = $v.name;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChallengesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChallengesRecord;
  }

  @override
  void update(void Function(ChallengesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChallengesRecord build() => _build();

  _$ChallengesRecord _build() {
    final _$result = _$v ??
        new _$ChallengesRecord._(
            challengeImage: challengeImage,
            name: name,
            startDate: startDate,
            endDate: endDate,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
