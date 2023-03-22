import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'content_array_struct.g.dart';

abstract class ContentArrayStruct
    implements Built<ContentArrayStruct, ContentArrayStructBuilder> {
  static Serializer<ContentArrayStruct> get serializer =>
      _$contentArrayStructSerializer;

  String? get entry;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ContentArrayStructBuilder builder) => builder
    ..entry = ''
    ..firestoreUtilData = FirestoreUtilData();

  ContentArrayStruct._();
  factory ContentArrayStruct(
          [void Function(ContentArrayStructBuilder) updates]) =
      _$ContentArrayStruct;
}

ContentArrayStruct createContentArrayStruct({
  String? entry,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ContentArrayStruct(
      (c) => c
        ..entry = entry
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ContentArrayStruct? updateContentArrayStruct(
  ContentArrayStruct? contentArray, {
  bool clearUnsetFields = true,
}) =>
    contentArray != null
        ? (contentArray.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addContentArrayStructData(
  Map<String, dynamic> firestoreData,
  ContentArrayStruct? contentArray,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (contentArray == null) {
    return;
  }
  if (contentArray.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && contentArray.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final contentArrayData =
      getContentArrayFirestoreData(contentArray, forFieldValue);
  final nestedData =
      contentArrayData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = contentArray.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getContentArrayFirestoreData(
  ContentArrayStruct? contentArray, [
  bool forFieldValue = false,
]) {
  if (contentArray == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ContentArrayStruct.serializer, contentArray);

  // Add any Firestore field values
  contentArray.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getContentArrayListFirestoreData(
  List<ContentArrayStruct>? contentArrays,
) =>
    contentArrays?.map((c) => getContentArrayFirestoreData(c, true)).toList() ??
    [];
