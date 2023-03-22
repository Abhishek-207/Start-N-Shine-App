import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'topics_record.g.dart';

abstract class TopicsRecord
    implements Built<TopicsRecord, TopicsRecordBuilder> {
  static Serializer<TopicsRecord> get serializer => _$topicsRecordSerializer;

  String? get category;

  String? get name;

  @BuiltValueField(wireName: 'last_post')
  DateTime? get lastPost;

  DocumentReference? get owner;

  String? get photo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TopicsRecordBuilder builder) => builder
    ..category = ''
    ..name = ''
    ..photo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('topics');

  static Stream<TopicsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TopicsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TopicsRecord._();
  factory TopicsRecord([void Function(TopicsRecordBuilder) updates]) =
      _$TopicsRecord;

  static TopicsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTopicsRecordData({
  String? category,
  String? name,
  DateTime? lastPost,
  DocumentReference? owner,
  String? photo,
}) {
  final firestoreData = serializers.toFirestore(
    TopicsRecord.serializer,
    TopicsRecord(
      (t) => t
        ..category = category
        ..name = name
        ..lastPost = lastPost
        ..owner = owner
        ..photo = photo,
    ),
  );

  return firestoreData;
}
