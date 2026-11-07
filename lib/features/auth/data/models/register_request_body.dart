import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable(createFactory: false)
abstract class RegisterRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String locale;
  const RegisterRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.locale,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}

// {
//   "name": "Youssef Hadwa",
//   "email": "yous@loqma.app",
//   "password": "Test@1262003",
//   "phone": "+201140710571",
//   "locale": "ar"
// }
