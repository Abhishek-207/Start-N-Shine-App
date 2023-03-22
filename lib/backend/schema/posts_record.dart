import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  DocumentReference? get author;

  String? get text;

  DateTime? get ts;

  @BuiltValueField(wireName: 'author_name')
  String? get authorName;

  bool? get upvote;

  int? get upvoteNumber;

  BuiltList<DocumentReference>? get isFlaggedBy;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..text = ''
    ..authorName = ''
    ..upvote = false
    ..upvoteNumber = 0
    ..isFlaggedBy = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('posts')
          : FirebaseFirestore.instance.collectionGroup('posts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('posts').doc();

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostsRecordData({
  DocumentReference? author,
  String? text,
  DateTime? ts,
  String? authorName,
  bool? upvote,
  int? upvoteNumber,
}) {
  final firestoreData = serializers.toFirestore(
    PostsRecord.serializer,
    PostsRecord(
      (p) => p
        ..author = author
        ..text = text
        ..ts = ts
        ..authorName = authorName
        ..upvote = upvote
        ..upvoteNumber = upvoteNumber
        ..isFlaggedBy = null,
    ),
  );

  return firestoreData;
}
