import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'news_section_record.g.dart';

abstract class NewsSectionRecord
    implements Built<NewsSectionRecord, NewsSectionRecordBuilder> {
  static Serializer<NewsSectionRecord> get serializer =>
      _$newsSectionRecordSerializer;

  String? get heading;

  String? get thumbnail;

  String? get newsText;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get courtesyLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewsSectionRecordBuilder builder) => builder
    ..heading = ''
    ..thumbnail = ''
    ..newsText = ''
    ..courtesyLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newsSection');

  static Stream<NewsSectionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewsSectionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewsSectionRecord._();
  factory NewsSectionRecord([void Function(NewsSectionRecordBuilder) updates]) =
      _$NewsSectionRecord;

  static NewsSectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewsSectionRecordData({
  String? heading,
  String? thumbnail,
  String? newsText,
  DateTime? createdTime,
  String? courtesyLink,
}) {
  final firestoreData = serializers.toFirestore(
    NewsSectionRecord.serializer,
    NewsSectionRecord(
      (n) => n
        ..heading = heading
        ..thumbnail = thumbnail
        ..newsText = newsText
        ..createdTime = createdTime
        ..courtesyLink = courtesyLink,
    ),
  );

  return firestoreData;
}
