import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0B0F14), Color(0xFF151A23), Color(0xFF1E1B4B)],
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Welcome
                const Text(
                  "Welcome Back 👋",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 6),

                Text(
                  "Find friends, join Tournaments and chat.",
                  style: TextStyle(color: Colors.grey.shade400),
                ),

                const SizedBox(height: 20),

                /// Search
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search players, tournaments...",
                    hintStyle: TextStyle(color: Colors.grey.shade400),

                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.deepPurpleAccent,
                    ),

                    filled: true,
                    fillColor: const Color(0xFF151A23),

                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 16,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xFF2A3140),
                        width: 1.5,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Colors.deepPurpleAccent,
                        width: 2,
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                /// Quick Actions
                const Text(
                  "Quick Actions",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                const Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.group_add,
                                size: 40,
                                color: Colors.deepPurpleAccent,
                              ),
                              SizedBox(height: 10),
                              Text("Add Friend"),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.military_tech,
                                size: 40,
                                color: Colors.amber,
                              ),
                              SizedBox(height: 10),
                              Text("Join Tournament"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                /// Online Friends
                const Text(
                  "Online Friends",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _friend("Rahul"),
                      _friend("Aman"),
                      _friend("Rohan"),
                      _friend("Ajay"),
                      _friend("omkar"),
                      _friend("ak"),
                      _friend("Mahesh"),
                      _friend("Suraj"),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                /// Recent Chats
                const Text(
                  "Recent Chats",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                const Card(
                  child: Column(
                    children: const [
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text("Rahul"),
                        subtitle: Text("Let's play BGMI tonight"),
                        trailing: Text("2m"),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text("Aman"),
                        subtitle: Text("Join voice chat"),
                        trailing: Text("5m"),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.group)),
                        title: Text("BGMI Championship"),
                        subtitle: Text("Tournament starts soon"),
                        trailing: Text("12m"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                /// Trending Games
                const Text(
                  "Trending Games 🔥",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                    ),
                    title: Text("Mumbai Warriors"),
                    subtitle: Text("500 Members"),
                  ),
                ),

                const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                    ),
                    title: Text("Valorant Kings"),
                    subtitle: Text("1.2K Members"),
                  ),
                ),

                const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                    ),
                    title: Text("BGMI Legends"),
                    subtitle: Text("850 Members"),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _friend(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Stack(
            children: [
              const CircleAvatar(radius: 28, child: Icon(Icons.person)),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(name),
        ],
      ),
    );
  }
}
