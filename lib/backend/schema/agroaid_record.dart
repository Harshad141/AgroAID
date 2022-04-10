import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agroaid_record.g.dart';

abstract class AgroaidRecord
    implements Built<AgroaidRecord, AgroaidRecordBuilder> {
  static Serializer<AgroaidRecord> get serializer => _$agroaidRecordSerializer;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AgroaidRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agroaid');

  static Stream<AgroaidRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AgroaidRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AgroaidRecord._();
  factory AgroaidRecord([void Function(AgroaidRecordBuilder) updates]) =
      _$AgroaidRecord;

  static AgroaidRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAgroaidRecordData() =>
    serializers.toFirestore(AgroaidRecord.serializer, AgroaidRecord((a) => a));
