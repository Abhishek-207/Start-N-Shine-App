// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usernames_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsernamesCollectionRecord> _$usernamesCollectionRecordSerializer =
    new _$UsernamesCollectionRecordSerializer();

class _$UsernamesCollectionRecordSerializer
    implements StructuredSerializer<UsernamesCollectionRecord> {
  @override
  final Iterable<Type> types = const [
    UsernamesCollectionRecord,
    _$UsernamesCollectionRecord
  ];
  @override
  final String wireName = 'UsernamesCollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsernamesCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.takenUsernames;
    if (value != null) {
      result
        ..add('taken_usernames')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  UsernamesCollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsernamesCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'taken_usernames':
          result.takenUsernames.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$UsernamesCollectionRecord extends UsernamesCollectionRecord {
  @override
  final BuiltList<String>? takenUsernames;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsernamesCollectionRecord(
          [void Function(UsernamesCollectionRecordBuilder)? updates]) =>
      (new UsernamesCollectionRecordBuilder()..update(updates))._build();

  _$UsernamesCollectionRecord._({this.takenUsernames, this.ffRef}) : super._();

  @override
  UsernamesCollectionRecord rebuild(
          void Function(UsernamesCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsernamesCollectionRecordBuilder toBuilder() =>
      new UsernamesCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsernamesCollectionRecord &&
        takenUsernames == other.takenUsernames &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, takenUsernames.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsernamesCollectionRecord')
          ..add('takenUsernames', takenUsernames)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsernamesCollectionRecordBuilder
    implements
        Builder<UsernamesCollectionRecord, UsernamesCollectionRecordBuilder> {
  _$UsernamesCollectionRecord? _$v;

  ListBuilder<String>? _takenUsernames;
  ListBuilder<String> get takenUsernames =>
      _$this._takenUsernames ??= new ListBuilder<String>();
  set takenUsernames(ListBuilder<String>? takenUsernames) =>
      _$this._takenUsernames = takenUsernames;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsernamesCollectionRecordBuilder() {
    UsernamesCollectionRecord._initializeBuilder(this);
  }

  UsernamesCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _takenUsernames = $v.takenUsernames?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsernamesCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsernamesCollectionRecord;
  }

  @override
  void update(void Function(UsernamesCollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsernamesCollectionRecord build() => _build();

  _$UsernamesCollectionRecord _build() {
    _$UsernamesCollectionRecord _$result;
    try {
      _$result = _$v ??
          new _$UsernamesCollectionRecord._(
              takenUsernames: _takenUsernames?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'takenUsernames';
        _takenUsernames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsernamesCollectionRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
