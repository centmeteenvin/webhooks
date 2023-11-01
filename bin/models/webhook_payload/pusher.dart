import 'package:freezed_annotation/freezed_annotation.dart';

part 'pusher.freezed.dart';
part 'pusher.g.dart';

@freezed
class Pusher with _$Pusher {
  factory Pusher({
    String? name,
    String? email,
  }) = _Pusher;

  factory Pusher.fromJson(Map<String, dynamic> json) => _$PusherFromJson(json);
}
