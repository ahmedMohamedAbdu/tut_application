import 'package:json_annotation/json_annotation.dart';


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
}

@JsonSerializable()
class ContactsResponse{
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;
}

class AuthenticationResponse extends BaseResponse{
  @JsonKey(name: "user")
  UserResponse? user;
  @JsonKey(name: "contacts")
  ContactsResponse? contacts;
}