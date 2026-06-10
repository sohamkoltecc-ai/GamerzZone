import 'package:flutter/material.dart';
import 'LoginPage.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              children: [
                /// PROFILE CARD
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                    ),
                  ),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: Icon(Icons.person, size: 45),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "Soham#5421",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text("Level 72 Gamer", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// XP CARD
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "XP Progress",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("7200 / 10000"),
                          ],
                        ),

                        const SizedBox(height: 12),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const LinearProgressIndicator(
                            value: 0.72,
                            minHeight: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// STATS
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Gaming Stats",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 12),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _StatCard(
                      icon: Icons.chat,
                      title: "Messages",
                      value: "2.4K",
                    ),

                    _StatCard(
                      icon: Icons.groups,
                      title: "Friends",
                      value: "152",
                    ),

                    _StatCard(
                      icon: Icons.military_tech,
                      title: "Clans",
                      value: "8",
                    ),

                    _StatCard(
                      icon: Icons.headset_mic,
                      title: "Voice Hours",
                      value: "89",
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                /// ACHIEVEMENTS
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Achievements 🏆",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 12),

                const Card(
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.emoji_events, color: Colors.amber),
                        title: Text("First Victory"),
                        subtitle: Text("Won your first match"),
                      ),

                      Divider(height: 1),

                      ListTile(
                        leading: Icon(Icons.emoji_events, color: Colors.amber),
                        title: Text("Clan Master"),
                        subtitle: Text("Joined 5 clans"),
                      ),

                      Divider(height: 1),

                      ListTile(
                        leading: Icon(Icons.emoji_events, color: Colors.amber),
                        title: Text("Social Gamer"),
                        subtitle: Text("100 friends reached"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                /// SETTINGS
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 12),

                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.edit),
                        title: const Text("Edit Profile"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),

                      const Divider(height: 1),

                      ListTile(
                        leading: const Icon(Icons.notifications),
                        title: const Text("Notifications"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),

                      const Divider(height: 1),

                      ListTile(
                        leading: const Icon(Icons.lock),
                        title: const Text("Privacy"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),

                      const Divider(height: 1),

                      ListTile(
                        leading: const Icon(
                          Icons.logout,
                          color: Colors.redAccent,
                        ),
                        title: const Text(
                          "Logout",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.redAccent,
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Loginpage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _StatCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.deepPurpleAccent),

            const SizedBox(height: 6),

            Text(
              value,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(title),
          ],
        ),
      ),
    );
  }
}
