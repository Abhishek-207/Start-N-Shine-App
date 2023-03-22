import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'main_feed_record.g.dart';

abstract class MainFeedRecord
    implements Built<MainFeedRecord, MainFeedRecordBuilder> {
  static Serializer<MainFeedRecord> get serializer =>
      _$mainFeedRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Creators')
  String? get creators;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Link')
  String? get link;

  @BuiltValueField(wireName: 'Thumbnail')
  String? get thumbnail;

  @BuiltValueField(wireName: 'ViewCount')
  int? get viewCount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MainFeedRecordBuilder builder) => builder
    ..title = ''
    ..creators = ''
    ..description = ''
    ..link = ''
    ..thumbnail = ''
    ..viewCount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MainFeed');

  static Stream<MainFeedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MainFeedRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MainFeedRecord._();
  factory MainFeedRecord([void Function(MainFeedRecordBuilder) updates]) =
      _$MainFeedRecord;

  static MainFeedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMainFeedRecordData({
  String? title,
  String? creators,
  String? description,
  String? link,
  String? thumbnail,
  int? viewCount,
}) {
  final firestoreData = serializers.toFirestore(
    MainFeedRecord.serializer,
    MainFeedRecord(
      (m) => m
        ..title = title
        ..creators = creators
        ..description = description
        ..link = link
        ..thumbnail = thumbnail
        ..viewCount = viewCount,
    ),
  );

  return firestoreData;
}
