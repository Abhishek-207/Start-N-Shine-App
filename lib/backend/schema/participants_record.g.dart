// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParticipantsRecord> _$participantsRecordSerializer =
    new _$ParticipantsRecordSerializer();

class _$ParticipantsRecordSerializer
    implements StructuredSerializer<ParticipantsRecord> {
  @override
  final Iterable<Type> types = const [ParticipantsRecord, _$ParticipantsRecord];
  @override
  final String wireName = 'ParticipantsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParticipantsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.referralCount;
    if (value != null) {
      result
        ..add('referralCount')
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
  ParticipantsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParticipantsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'referralCount':
          result.referralCount = serializers.deserialize(value,
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

class _$ParticipantsRecord extends ParticipantsRecord {
  @override
  final DocumentReference<Object?>? userID;
  @override
  final int? referralCount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ParticipantsRecord(
          [void Function(ParticipantsRecordBuilder)? updates]) =>
      (new ParticipantsRecordBuilder()..update(updates))._build();

  _$ParticipantsRecord._({this.userID, this.referralCount, this.ffRef})
      : super._();

  @override
  ParticipantsRecord rebuild(
          void Function(ParticipantsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParticipantsRecordBuilder toBuilder() =>
      new ParticipantsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParticipantsRecord &&
        userID == other.userID &&
        referralCount == other.referralCount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, userID.hashCode), referralCount.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParticipantsRecord')
          ..add('userID', userID)
          ..add('referralCount', referralCount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ParticipantsRecordBuilder
    implements Builder<ParticipantsRecord, ParticipantsRecordBuilder> {
  _$ParticipantsRecord? _$v;

  DocumentReference<Object?>? _userID;
  DocumentReference<Object?>? get userID => _$this._userID;
  set userID(DocumentReference<Object?>? userID) => _$this._userID = userID;

  int? _referralCount;
  int? get referralCount => _$this._referralCount;
  set referralCount(int? referralCount) =>
      _$this._referralCount = referralCount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ParticipantsRecordBuilder() {
    ParticipantsRecord._initializeBuilder(this);
  }

  ParticipantsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _referralCount = $v.referralCount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParticipantsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParticipantsRecord;
  }

  @override
  void update(void Function(ParticipantsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParticipantsRecord build() => _build();

  _$ParticipantsRecord _build() {
    final _$result = _$v ??
        new _$ParticipantsRecord._(
            userID: userID, referralCount: referralCount, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
