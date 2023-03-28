class ChatModel {
  final String msg;
  final int chatIndex;
  final String role;

  ChatModel({required this.role, required this.msg, required this.chatIndex, });

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        msg: json["msg"],
        chatIndex: json["chatIndex"],
        role: json["role"]
      );
}
