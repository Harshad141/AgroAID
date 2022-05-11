import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agroaid_record.g.dart';

abstract class AgroaidRecord
    implements Built<AgroaidRecord, AgroaidRecordBuilder> {
  static Serializer<AgroaidRecord> get serializer => _$agroaidRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  BuiltList<String> get name;

  @nullable
  @BuiltValueField(wireName: 'District')
  String get district;

  @nullable
  @BuiltValueField(wireName: 'Address')
  BuiltList<String> get address;

  @nullable
  @BuiltValueField(wireName: 'Pincode')
  BuiltList<int> get pincode;

  @nullable
  @BuiltValueField(wireName: 'AadharNumber')
  BuiltList<int> get aadharNumber;

  @nullable
  @BuiltValueField(wireName: 'State')
  String get state;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AgroaidRecordBuilder builder) => builder
    ..name = ListBuilder()
    ..district = ''
    ..address = ListBuilder()
    ..pincode = ListBuilder()
    ..aadharNumber = ListBuilder()
    ..state = '';

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

Map<String, dynamic> createAgroaidRecordData({
  String district,
  String state,
}) =>
    serializers.toFirestore(
        AgroaidRecord.serializer,
        AgroaidRecord((a) => a
          ..name = null
          ..district = district
          ..address = null
          ..pincode = null
          ..aadharNumber = null
          ..state = state));
