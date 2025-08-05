// import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationModel {
  const NotificationModel({required this.message, this.read = false});

  final Map<String, dynamic> message; // RemoteMessage
  final bool read;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        message: json['message'] as Map<String, dynamic>, // RemoteMessage.fromMap(json['message']),
        read: json['read'] as bool,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message, // message.toMap(),
        'read': read,
      };

  NotificationModel copyWith({
    Map<String, dynamic>? message, // RemoteMessage?
    bool? read,
  }) =>
      NotificationModel(
        message: message ?? this.message,
        read: read ?? this.read,
      );
}
