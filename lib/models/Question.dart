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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Question type in your schema. */
class Question extends amplify_core.Model {
  static const classType = const _QuestionModelType();
  final String id;
  final String? _description;
  final String? _title;
  final QuestionType? _type;
  final int? _score;
  final String? _imageKey;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  QuestionModelIdentifier get modelIdentifier {
      return QuestionModelIdentifier(
        id: id
      );
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  QuestionType get type {
    try {
      return _type!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get score {
    try {
      return _score!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get imageKey {
    return _imageKey;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Question._internal({required this.id, required description, required title, required type, required score, imageKey, createdAt, updatedAt}): _description = description, _title = title, _type = type, _score = score, _imageKey = imageKey, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Question({String? id, required String description, required String title, required QuestionType type, required int score, String? imageKey}) {
    return Question._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      description: description,
      title: title,
      type: type,
      score: score,
      imageKey: imageKey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
      id == other.id &&
      _description == other._description &&
      _title == other._title &&
      _type == other._type &&
      _score == other._score &&
      _imageKey == other._imageKey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Question {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("type=" + (_type != null ? amplify_core.enumToString(_type)! : "null") + ", ");
    buffer.write("score=" + (_score != null ? _score!.toString() : "null") + ", ");
    buffer.write("imageKey=" + "$_imageKey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Question copyWith({String? description, String? title, QuestionType? type, int? score, String? imageKey}) {
    return Question._internal(
      id: id,
      description: description ?? this.description,
      title: title ?? this.title,
      type: type ?? this.type,
      score: score ?? this.score,
      imageKey: imageKey ?? this.imageKey);
  }
  
  Question copyWithModelFieldValues({
    ModelFieldValue<String>? description,
    ModelFieldValue<String>? title,
    ModelFieldValue<QuestionType>? type,
    ModelFieldValue<int>? score,
    ModelFieldValue<String?>? imageKey
  }) {
    return Question._internal(
      id: id,
      description: description == null ? this.description : description.value,
      title: title == null ? this.title : title.value,
      type: type == null ? this.type : type.value,
      score: score == null ? this.score : score.value,
      imageKey: imageKey == null ? this.imageKey : imageKey.value
    );
  }
  
  Question.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _description = json['description'],
      _title = json['title'],
      _type = amplify_core.enumFromString<QuestionType>(json['type'], QuestionType.values),
      _score = (json['score'] as num?)?.toInt(),
      _imageKey = json['imageKey'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'description': _description, 'title': _title, 'type': amplify_core.enumToString(_type), 'score': _score, 'imageKey': _imageKey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'description': _description,
    'title': _title,
    'type': _type,
    'score': _score,
    'imageKey': _imageKey,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<QuestionModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<QuestionModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final TYPE = amplify_core.QueryField(fieldName: "type");
  static final SCORE = amplify_core.QueryField(fieldName: "score");
  static final IMAGEKEY = amplify_core.QueryField(fieldName: "imageKey");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Question";
    modelSchemaDefinition.pluralName = "Questions";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.DESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.TYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.SCORE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.IMAGEKEY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _QuestionModelType extends amplify_core.ModelType<Question> {
  const _QuestionModelType();
  
  @override
  Question fromJson(Map<String, dynamic> jsonData) {
    return Question.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Question';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Question] in your schema.
 */
class QuestionModelIdentifier implements amplify_core.ModelIdentifier<Question> {
  final String id;

  /** Create an instance of QuestionModelIdentifier using [id] the primary key. */
  const QuestionModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'QuestionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is QuestionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}