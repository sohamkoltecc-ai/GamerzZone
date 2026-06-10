import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF0B0F14),
          Color(0xFF151A23),
          Color(0xFF1E1B4B),
        ],
      ),
    ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 12),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    tabs: const [
                      Tab(text: "Direct Messages"),
                      Tab(text: "Communities"),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [DirectMessagesPage(), CommunitiesPage()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DirectMessagesPage extends StatelessWidget {
  const DirectMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: const Text("Rahul"),
          subtitle: const Text("Let's play BGMI tonight"),
          trailing: const Text("2m"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ChatRoomPage(title: "Rahul"),
              ),
            );
          },
        ),

        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: const Text("Aman"),
          subtitle: const Text("Join voice chat"),
          trailing: const Text("5m"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ChatRoomPage(title: "Aman"),
              ),
            );
          },
        ),

        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: const Text("SniperKing"),
          subtitle: const Text("Rank Push?"),
          trailing: const Text("12m"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ChatRoomPage(title: "SniperKing"),
              ),
            );
          },
        ),
      ],
    );
  }
}

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.groups)),
          title: const Text("Mumbai Warriors"),
          subtitle: const Text("500 Members"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ChatRoomPage(title: "Mumbai Warriors"),
              ),
            );
          },
        ),

        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.groups)),
          title: const Text("Valorant Kings"),
          subtitle: const Text("1.2K Members"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ChatRoomPage(title: "Valorant Kings"),
              ),
            );
          },
        ),

        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.groups)),
          title: const Text("BGMI Legends"),
          subtitle: const Text("850 Members"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ChatRoomPage(title: "BGMI Legends"),
              ),
            );
          },
        ),
      ],
    );
  }
}

class ChatRoomPage extends StatelessWidget {
  final String title;

  const ChatRoomPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text("Messages Here", style: TextStyle(fontSize: 18)),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),

                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
