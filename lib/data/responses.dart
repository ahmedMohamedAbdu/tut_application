import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';



@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class UserResponse{
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  int? numOfNotifications;
  UserResponse(this.id,this.name,this.numOfNotifications);

  //from json
  factory UserResponse.fromJson(Map<String,dynamic>json)=> _$UserResponseFromJson(json);
  //to json
  Map<String,dynamic> toJson()=> _$UserResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse{
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;
  ContactsResponse(this.phone,this.email,this.link);

  //from json
  factory ContactsResponse.fromJson(Map<String,dynamic>json)=> _$ContactsResponseFromJson(json);
  //to json
  Map<String,dynamic> toJson()=> _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse{
  @JsonKey(name: "user")
  UserResponse? user;
  @JsonKey(name: "contacts")
  ContactsResponse? contacts;
  AuthenticationResponse(this.user,this.contacts);

  //from json
factory AuthenticationResponse.fromJson(Map<String,dynamic>json)=> _$AuthenticationResponseFromJson(json);
 //to json
Map<String,dynamic> toJson()=> _$AuthenticationResponseToJson(this);
}