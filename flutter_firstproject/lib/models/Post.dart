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


/** This is an auto generated class representing the Post type in your schema. */
@immutable
class Post extends Model {
  static const classType = const _PostModelType();
  final String id;
  final String? _content;
  final String? _postImageUrl;
  final PostStatus? _status;
  final TemporalDateTime? _createdOn;
  final TemporalDateTime? _updatedOn;
  final PostType? _type;
  final String? _userID;
  final List<Comment>? _Comments;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get content {
    return _content;
  }
  
  String? get postImageUrl {
    return _postImageUrl;
  }
  
  PostStatus? get status {
    return _status;
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  TemporalDateTime? get updatedOn {
    return _updatedOn;
  }
  
  PostType? get type {
    return _type;
  }
  
  String get userID {
    try {
      return _userID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Comment>? get Comments {
    return _Comments;
  }
  
  const Post._internal({required this.id, content, postImageUrl, status, createdOn, updatedOn, type, required userID, Comments}): _content = content, _postImageUrl = postImageUrl, _status = status, _createdOn = createdOn, _updatedOn = updatedOn, _type = type, _userID = userID, _Comments = Comments;
  
  factory Post({String? id, String? content, String? postImageUrl, PostStatus? status, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, PostType? type, required String userID, List<Comment>? Comments}) {
    return Post._internal(
      id: id == null ? UUID.getUUID() : id,
      content: content,
      postImageUrl: postImageUrl,
      status: status,
      createdOn: createdOn,
      updatedOn: updatedOn,
      type: type,
      userID: userID,
      Comments: Comments != null ? List<Comment>.unmodifiable(Comments) : Comments);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
      id == other.id &&
      _content == other._content &&
      _postImageUrl == other._postImageUrl &&
      _status == other._status &&
      _createdOn == other._createdOn &&
      _updatedOn == other._updatedOn &&
      _type == other._type &&
      _userID == other._userID &&
      DeepCollectionEquality().equals(_Comments, other._Comments);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Post {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("content=" + "$_content" + ", ");
    buffer.write("postImageUrl=" + "$_postImageUrl" + ", ");
    buffer.write("status=" + (_status != null ? enumToString(_status)! : "null") + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("updatedOn=" + (_updatedOn != null ? _updatedOn!.format() : "null") + ", ");
    buffer.write("type=" + (_type != null ? enumToString(_type)! : "null") + ", ");
    buffer.write("userID=" + "$_userID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Post copyWith({String? id, String? content, String? postImageUrl, PostStatus? status, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, PostType? type, String? userID, List<Comment>? Comments}) {
    return Post(
      id: id ?? this.id,
      content: content ?? this.content,
      postImageUrl: postImageUrl ?? this.postImageUrl,
      status: status ?? this.status,
      createdOn: createdOn ?? this.createdOn,
      updatedOn: updatedOn ?? this.updatedOn,
      type: type ?? this.type,
      userID: userID ?? this.userID,
      Comments: Comments ?? this.Comments);
  }
  
  Post.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _content = json['content'],
      _postImageUrl = json['postImageUrl'],
      _status = enumFromString<PostStatus>(json['status'], PostStatus.values),
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _updatedOn = json['updatedOn'] != null ? TemporalDateTime.fromString(json['updatedOn']) : null,
      _type = enumFromString<PostType>(json['type'], PostType.values),
      _userID = json['userID'],
      _Comments = json['Comments'] is List
        ? (json['Comments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'content': _content, 'postImageUrl': _postImageUrl, 'status': enumToString(_status), 'createdOn': _createdOn?.format(), 'updatedOn': _updatedOn?.format(), 'type': enumToString(_type), 'userID': _userID, 'Comments': _Comments?.map((Comment? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "post.id");
  static final QueryField CONTENT = QueryField(fieldName: "content");
  static final QueryField POSTIMAGEURL = QueryField(fieldName: "postImageUrl");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField UPDATEDON = QueryField(fieldName: "updatedOn");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField USERID = QueryField(fieldName: "userID");
  static final QueryField COMMENTS = QueryField(
    fieldName: "Comments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Comment).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Post";
    modelSchemaDefinition.pluralName = "Posts";
    
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
      key: Post.CONTENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.POSTIMAGEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.UPDATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.USERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Post.COMMENTS,
      isRequired: false,
      ofModelName: (Comment).toString(),
      associatedKey: Comment.POSTID
    ));
  });
}

class _PostModelType extends ModelType<Post> {
  const _PostModelType();
  
  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}