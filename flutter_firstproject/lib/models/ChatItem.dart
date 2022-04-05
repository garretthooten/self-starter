/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ChatItem type in your schema. */
@immutable
class ChatItem extends Model {
  static const classType = const _ChatItemModelType();
  final String id;
  final String? _senderId;
  final String? _receiverId;
  final String? _message;
  final String? _imageUrl;
  final ChatItemType? _itemType;
  final TemporalDateTime? _createdOn;
  final String? _chatID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get senderId {
    return _senderId;
  }
  
  String? get receiverId {
    return _receiverId;
  }
  
  String? get message {
    return _message;
  }
  
  String? get imageUrl {
    return _imageUrl;
  }
  
  ChatItemType? get itemType {
    return _itemType;
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  String get chatID {
    try {
      return _chatID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const ChatItem._internal({required this.id, senderId, receiverId, message, imageUrl, itemType, createdOn, required chatID}): _senderId = senderId, _receiverId = receiverId, _message = message, _imageUrl = imageUrl, _itemType = itemType, _createdOn = createdOn, _chatID = chatID;
  
  factory ChatItem({String? id, String? senderId, String? receiverId, String? message, String? imageUrl, ChatItemType? itemType, TemporalDateTime? createdOn, required String chatID}) {
    return ChatItem._internal(
      id: id == null ? UUID.getUUID() : id,
      senderId: senderId,
      receiverId: receiverId,
      message: message,
      imageUrl: imageUrl,
      itemType: itemType,
      createdOn: createdOn,
      chatID: chatID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatItem &&
      id == other.id &&
      _senderId == other._senderId &&
      _receiverId == other._receiverId &&
      _message == other._message &&
      _imageUrl == other._imageUrl &&
      _itemType == other._itemType &&
      _createdOn == other._createdOn &&
      _chatID == other._chatID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ChatItem {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("senderId=" + "$_senderId" + ", ");
    buffer.write("receiverId=" + "$_receiverId" + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("imageUrl=" + "$_imageUrl" + ", ");
    buffer.write("itemType=" + (_itemType != null ? enumToString(_itemType)! : "null") + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("chatID=" + "$_chatID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ChatItem copyWith({String? id, String? senderId, String? receiverId, String? message, String? imageUrl, ChatItemType? itemType, TemporalDateTime? createdOn, String? chatID}) {
    return ChatItem(
      id: id ?? this.id,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
      message: message ?? this.message,
      imageUrl: imageUrl ?? this.imageUrl,
      itemType: itemType ?? this.itemType,
      createdOn: createdOn ?? this.createdOn,
      chatID: chatID ?? this.chatID);
  }
  
  ChatItem.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _senderId = json['senderId'],
      _receiverId = json['receiverId'],
      _message = json['message'],
      _imageUrl = json['imageUrl'],
      _itemType = enumFromString<ChatItemType>(json['itemType'], ChatItemType.values),
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _chatID = json['chatID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'senderId': _senderId, 'receiverId': _receiverId, 'message': _message, 'imageUrl': _imageUrl, 'itemType': enumToString(_itemType), 'createdOn': _createdOn?.format(), 'chatID': _chatID
  };

  static final QueryField ID = QueryField(fieldName: "chatItem.id");
  static final QueryField SENDERID = QueryField(fieldName: "senderId");
  static final QueryField RECEIVERID = QueryField(fieldName: "receiverId");
  static final QueryField MESSAGE = QueryField(fieldName: "message");
  static final QueryField IMAGEURL = QueryField(fieldName: "imageUrl");
  static final QueryField ITEMTYPE = QueryField(fieldName: "itemType");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField CHATID = QueryField(fieldName: "chatID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ChatItem";
    modelSchemaDefinition.pluralName = "ChatItems";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.SENDERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.RECEIVERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.MESSAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.IMAGEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.ITEMTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.CHATID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ChatItemModelType extends ModelType<ChatItem> {
  const _ChatItemModelType();
  
  @override
  ChatItem fromJson(Map<String, dynamic> jsonData) {
    return ChatItem.fromJson(jsonData);
  }
}