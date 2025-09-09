import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  final Map<String, String> chat;

  const ChatDetailPage({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chat["nama"] ?? "Chat Detail"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          chat["pesan"] ?? "Tidak ada pesan",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
