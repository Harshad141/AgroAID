import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chat_messages_record.g.dart';

abstract class ChatMessagesRecord
    implements Built<ChatMessagesRecord, ChatMessagesRecordBuilder> {
  static Serializer<ChatMessagesRecord> get serializer =>
      _$chatMessagesRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  DocumentReference get chat;

  @nullable
  DateTime get timestamp;

  @nullable
  String get text;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ChatMessagesRecordBuilder builder) => builder
    ..text = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages');

  static Stream<ChatMessagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChatMessagesRecord._();
  factory ChatMessagesRecord(
          [void Function(ChatMessagesRecordBuilder) updates]) =
      _$ChatMessagesRecord;

  static ChatMessagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createChatMessagesRecordData({
  DocumentReference user,
  DocumentReference chat,
  DateTime timestamp,
  String text,
  String image,
}) =>
    serializers.toFirestore(
        ChatMessagesRecord.serializer,
        ChatMessagesRecord((c) => c
          ..user = user
          ..chat = chat
          ..timestamp = timestamp
          ..text = text
          ..image = image));
