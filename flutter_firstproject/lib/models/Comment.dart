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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Comment type in your schema. */
@immutable
class Comment extends Model {
  static const classType = const _CommentModelType();
  final String id;
  final TemporalDateTime? _createdOn;
  final TemporalDateTime? _updatedOn;
  final String? _userId;
  final String? _postID;
  final String? _commentText;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  TemporalDateTime? get updatedOn {
    return _updatedOn;
  }
  
  String? get userId {
    return _userId;
  }
  
  String get postID {
    try {
      return _postID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get commentText {
    return _commentText;
  }
  
  const Comment._internal({required this.id, createdOn, updatedOn, userId, required postID, commentText}): _createdOn = createdOn, _updatedOn = updatedOn, _userId = userId, _postID = postID, _commentText = commentText;
  
  factory Comment({String? id, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, String? userId, required String postID, String? commentText}) {
    return Comment._internal(
      id: id == null ? UUID.getUUID() : id,
      createdOn: createdOn,
      updatedOn: updatedOn,
      userId: userId,
      postID: postID,
      commentText: commentText);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
      id == other.id &&
      _createdOn == other._createdOn &&
      _updatedOn == other._updatedOn &&
      _userId == other._userId &&
      _postID == other._postID &&
      _commentText == other._commentText;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("updatedOn=" + (_updatedOn != null ? _updatedOn!.format() : "null") + ", ");
    buffer.write("userId=" + "$_userId" + ", ");
    buffer.write("postID=" + "$_postID" + ", ");
    buffer.write("commentText=" + "$_commentText");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Comment copyWith({String? id, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, String? userId, String? postID, String? commentText}) {
    return Comment(
      id: id ?? this.id,
      createdOn: createdOn ?? this.createdOn,
      updatedOn: updatedOn ?? this.updatedOn,
      userId: userId ?? this.userId,
      postID: postID ?? this.postID,
      commentText: commentText ?? this.commentText);
  }
  
  Comment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _updatedOn = json['updatedOn'] != null ? TemporalDateTime.fromString(json['updatedOn']) : null,
      _userId = json['userId'],
      _postID = json['postID'],
      _commentText = json['commentText'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'createdOn': _createdOn?.format(), 'updatedOn': _updatedOn?.format(), 'userId': _userId, 'postID': _postID, 'commentText': _commentText
  };

  static final QueryField ID = QueryField(fieldName: "comment.id");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField UPDATEDON = QueryField(fieldName: "updatedOn");
  static final QueryField USERID = QueryField(fieldName: "userId");
  static final QueryField POSTID = QueryField(fieldName: "postID");
  static final QueryField COMMENTTEXT = QueryField(fieldName: "commentText");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";
    
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
      key: Comment.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.UPDATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.USERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.POSTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.COMMENTTEXT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CommentModelType extends ModelType<Comment> {
  const _CommentModelType();
  
  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
}