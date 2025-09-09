import 'package:flutter/material.dart';

void main() {
  runApp(const MiniWhatsapp());
}

class MiniWhatsapp extends StatelessWidget {
  const MiniWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsappHome(),
    );
  }
}

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({super.key});

  @override
  State<WhatsappHome> createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> {
  // Dummy data untuk chat
  final List<Map<String, String>> chats = [
    {"nama": "Kadutt", "pesan": "HEY LIATTT", "waktu": "2:11 PM"},
    {"nama": "Bintang", "pesan": "Lagi ngoding 🚀", "waktu": "1:45 PM"},
    {"nama": "Sari", "pesan": "Besok jadi kan?", "waktu": "12:10 PM"},
    {"nama": "Rudi", "pesan": "Gas nongkrong cuy!", "waktu": "11:30 AM"},
    {"nama": "Wawan", "pesan": "Pinjam catatan dong", "waktu": "10:05 AM"},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // ada 3 tab: Chat, Status, Calls
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Mini WhatsApp"),
          backgroundColor: Colors.green,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.chat), text: "Chats"),
              Tab(icon: Icon(Icons.circle), text: "Status"),
              Tab(icon: Icon(Icons.call), text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab CHATS
            ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(chat["nama"] ?? ""),
                  subtitle: Text(chat["pesan"] ?? ""),
                  trailing: Text(chat["waktu"] ?? ""),
                );
              },
            ),

            // Tab STATUS
            ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text('Status Saya'),
                    subtitle: Text('Ketuk untuk menambahkan status'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text('Status terkini',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('KM DEV'),
                    subtitle: Text('30 menit yang lalu'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Sarah Johnson'),
                    subtitle: Text('1 jam yang lalu'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Budi Santoso'),
                    subtitle: Text('2 jam yang lalu'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Lisa Wijaya'),
                    subtitle: Text('5 jam yang lalu'),
                  ),
                ],
              ),

            // Tab CALLS
           ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.link, color: Colors.white),
                    ),
                    title: Text('Buat link panggilan'),
                    subtitle: Text('Bagikan link untuk panggilan WhatsApp'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('KM DEV'),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_made, color: Colors.green, size: 16),
                        SizedBox(width: 4),
                        Text('Hari ini 2:30 PM'),
                      ],
                    ),
                    trailing: Icon(Icons.call, color: Colors.green),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Sarah Johnson'),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received, color: Colors.red, size: 16),
                        SizedBox(width: 4),
                        Text('Kemarin 1:45 PM'),
                      ],
                    ),
                    trailing: Icon(Icons.videocam, color: Colors.green),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Budi Santoso'),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_made, color: Colors.green, size: 16),
                        SizedBox(width: 4),
                        Text('Kemarin 12:20 PM'),
                      ],
                    ),
                    trailing: Icon(Icons.call, color: Colors.green),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Lisa Wijaya'),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received, color: Colors.red, size: 16),
                        SizedBox(width: 4),
                        Text('2 hari yang lalu'),
                      ],
                    ),
                    trailing: Icon(Icons.videocam, color: Colors.green),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
