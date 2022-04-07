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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Chat type in your schema. */
@immutable
class Chat extends Model {
  static const classType = const _ChatModelType();
  final String id;
  final String? _receiverId;
  final String? _senderId;
  final TemporalDateTime? _createdOn;
  final TemporalDateTime? _updatedOn;
  final List<ChatUser>? _chatUsers;
  final List<ChatItem>? _ChatItems;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get receiverId {
    return _receiverId;
  }
  
  String? get senderId {
    return _senderId;
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  TemporalDateTime? get updatedOn {
    return _updatedOn;
  }
  
  List<ChatUser>? get chatUsers {
    return _chatUsers;
  }
  
  List<ChatItem>? get ChatItems {
    return _ChatItems;
  }
  
  const Chat._internal({required this.id, receiverId, senderId, createdOn, updatedOn, chatUsers, ChatItems}): _receiverId = receiverId, _senderId = senderId, _createdOn = createdOn, _updatedOn = updatedOn, _chatUsers = chatUsers, _ChatItems = ChatItems;
  
  factory Chat({String? id, String? receiverId, String? senderId, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, List<ChatUser>? chatUsers, List<ChatItem>? ChatItems}) {
    return Chat._internal(
      id: id == null ? UUID.getUUID() : id,
      receiverId: receiverId,
      senderId: senderId,
      createdOn: createdOn,
      updatedOn: updatedOn,
      chatUsers: chatUsers != null ? List<ChatUser>.unmodifiable(chatUsers) : chatUsers,
      ChatItems: ChatItems != null ? List<ChatItem>.unmodifiable(ChatItems) : ChatItems);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chat &&
      id == other.id &&
      _receiverId == other._receiverId &&
      _senderId == other._senderId &&
      _createdOn == other._createdOn &&
      _updatedOn == other._updatedOn &&
      DeepCollectionEquality().equals(_chatUsers, other._chatUsers) &&
      DeepCollectionEquality().equals(_ChatItems, other._ChatItems);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Chat {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("receiverId=" + "$_receiverId" + ", ");
    buffer.write("senderId=" + "$_senderId" + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("updatedOn=" + (_updatedOn != null ? _updatedOn!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Chat copyWith({String? id, String? receiverId, String? senderId, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, List<ChatUser>? chatUsers, List<ChatItem>? ChatItems}) {
    return Chat(
      id: id ?? this.id,
      receiverId: receiverId ?? this.receiverId,
      senderId: senderId ?? this.senderId,
      createdOn: createdOn ?? this.createdOn,
      updatedOn: updatedOn ?? this.updatedOn,
      chatUsers: chatUsers ?? this.chatUsers,
      ChatItems: ChatItems ?? this.ChatItems);
  }
  
  Chat.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _receiverId = json['receiverId'],
      _senderId = json['senderId'],
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _updatedOn = json['updatedOn'] != null ? TemporalDateTime.fromString(json['updatedOn']) : null,
      _chatUsers = json['chatUsers'] is List
        ? (json['chatUsers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _ChatItems = json['ChatItems'] is List
        ? (json['ChatItems'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatItem.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'receiverId': _receiverId, 'senderId': _senderId, 'createdOn': _createdOn?.format(), 'updatedOn': _updatedOn?.format(), 'chatUsers': _chatUsers?.map((ChatUser? e) => e?.toJson()).toList(), 'ChatItems': _ChatItems?.map((ChatItem? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "chat.id");
  static final QueryField RECEIVERID = QueryField(fieldName: "receiverId");
  static final QueryField SENDERID = QueryField(fieldName: "senderId");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField UPDATEDON = QueryField(fieldName: "updatedOn");
  static final QueryField CHATUSERS = QueryField(
    fieldName: "chatUsers",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ChatUser).toString()));
  static final QueryField CHATITEMS = QueryField(
    fieldName: "ChatItems",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ChatItem).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Chat";
    modelSchemaDefinition.pluralName = "Chats";
    
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
      key: Chat.RECEIVERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Chat.SENDERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Chat.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Chat.UPDATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Chat.CHATUSERS,
      isRequired: false,
      ofModelName: (ChatUser).toString(),
      associatedKey: ChatUser.CHAT
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Chat.CHATITEMS,
      isRequired: false,
      ofModelName: (ChatItem).toString(),
      associatedKey: ChatItem.CHATID
    ));
  });
}

class _ChatModelType extends ModelType<Chat> {
  const _ChatModelType();
  
  @override
  Chat fromJson(Map<String, dynamic> jsonData) {
    return Chat.fromJson(jsonData);
  }
}