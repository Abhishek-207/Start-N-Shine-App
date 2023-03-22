// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_array_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentArrayStruct> _$contentArrayStructSerializer =
    new _$ContentArrayStructSerializer();

class _$ContentArrayStructSerializer
    implements StructuredSerializer<ContentArrayStruct> {
  @override
  final Iterable<Type> types = const [ContentArrayStruct, _$ContentArrayStruct];
  @override
  final String wireName = 'ContentArrayStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ContentArrayStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.entry;
    if (value != null) {
      result
        ..add('entry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContentArrayStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentArrayStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'entry':
          result.entry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ContentArrayStruct extends ContentArrayStruct {
  @override
  final String? entry;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ContentArrayStruct(
          [void Function(ContentArrayStructBuilder)? updates]) =>
      (new ContentArrayStructBuilder()..update(updates))._build();

  _$ContentArrayStruct._({this.entry, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ContentArrayStruct', 'firestoreUtilData');
  }

  @override
  ContentArrayStruct rebuild(
          void Function(ContentArrayStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentArrayStructBuilder toBuilder() =>
      new ContentArrayStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentArrayStruct &&
        entry == other.entry &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, entry.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContentArrayStruct')
          ..add('entry', entry)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ContentArrayStructBuilder
    implements Builder<ContentArrayStruct, ContentArrayStructBuilder> {
  _$ContentArrayStruct? _$v;

  String? _entry;
  String? get entry => _$this._entry;
  set entry(String? entry) => _$this._entry = entry;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ContentArrayStructBuilder() {
    ContentArrayStruct._initializeBuilder(this);
  }

  ContentArrayStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entry = $v.entry;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentArrayStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContentArrayStruct;
  }

  @override
  void update(void Function(ContentArrayStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContentArrayStruct build() => _build();

  _$ContentArrayStruct _build() {
    final _$result = _$v ??
        new _$ContentArrayStruct._(
            entry: entry,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ContentArrayStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
