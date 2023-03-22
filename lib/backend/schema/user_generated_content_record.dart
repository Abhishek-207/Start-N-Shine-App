import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_generated_content_record.g.dart';

abstract class UserGeneratedContentRecord
    implements
        Built<UserGeneratedContentRecord, UserGeneratedContentRecordBuilder> {
  static Serializer<UserGeneratedContentRecord> get serializer =>
      _$userGeneratedContentRecordSerializer;

  DocumentReference? get createdBy;

  String? get postText;

  String? get postImage;

  BuiltList<DocumentReference>? get likedBy;

  DateTime? get timePosted;

  BuiltList<DocumentReference>? get isFlaggedBy;

  int? get likenum;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserGeneratedContentRecordBuilder builder) =>
      builder
        ..postText = ''
        ..postImage = ''
        ..likedBy = ListBuilder()
        ..isFlaggedBy = ListBuilder()
        ..likenum = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userGeneratedContent');

  static Stream<UserGeneratedContentRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserGeneratedContentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserGeneratedContentRecord._();
  factory UserGeneratedContentRecord(
          [void Function(UserGeneratedContentRecordBuilder) updates]) =
      _$UserGeneratedContentRecord;

  static UserGeneratedContentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserGeneratedContentRecordData({
  DocumentReference? createdBy,
  String? postText,
  String? postImage,
  DateTime? timePosted,
  int? likenum,
}) {
  final firestoreData = serializers.toFirestore(
    UserGeneratedContentRecord.serializer,
    UserGeneratedContentRecord(
      (u) => u
        ..createdBy = createdBy
        ..postText = postText
        ..postImage = postImage
        ..likedBy = null
        ..timePosted = timePosted
        ..isFlaggedBy = null
        ..likenum = likenum,
    ),
  );

  return firestoreData;
}
