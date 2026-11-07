class UserEntity {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String? avatarUrl;
  final String locale;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
    this.avatarUrl,
    required this.locale,
  });
  
}