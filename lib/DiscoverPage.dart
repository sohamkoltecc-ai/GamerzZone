import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

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
                const Text(
                  "Discover 🔍",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 6),

                Text(
                  "Find gamers and tournaments",
                  style: TextStyle(color: Colors.grey.shade400),
                ),

                const SizedBox(height: 20),

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

                const Text(
                  "Popular Games 🎮",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _GameCard(title: "BGMI", imagePath: "assets/bgmi.jpg"),
                      _GameCard(
                        title: "Valorant",
                        imagePath: "assets/Valorant.jpg",
                      ),
                      _GameCard(title: "GTA V", imagePath: "assets/gtav.jpg"),
                      _GameCard(
                        title: "Minecraft",
                        imagePath: "assets/minecraft.jpg",
                      ),
                      _GameCard(title: "CS2", imagePath: "assets/CS2.jpg"),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  "Trending Players 🔥",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                const Card(
                  child: Column(
                    children: const [
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text("ShadowHunter"),
                        subtitle: Text("Level 92"),
                        trailing: Icon(
                          Icons.person_add,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text("SniperKing"),
                        subtitle: Text("Level 88"),
                        trailing: Icon(
                          Icons.person_add,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text("DarkWolf"),
                        subtitle: Text("Level 75"),
                        trailing: Icon(
                          Icons.person_add,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  "Trending Tournaments 🏆",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                const Card(
                  child: ListTile(
                    leading: Icon(Icons.military_tech, color: Colors.amber),
                    title: Text("Mumbai Warriors"),
                    subtitle: Text("500 Members"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const Card(
                  child: ListTile(
                    leading: Icon(Icons.military_tech, color: Colors.amber),
                    title: Text("Valorant Kings"),
                    subtitle: Text("1.2K Members"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const Card(
                  child: ListTile(
                    leading: Icon(Icons.military_tech, color: Colors.amber),
                    title: Text("BGMI Legends"),
                    subtitle: Text("850 Members"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  "Upcoming Tournaments ⚔️",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                const Card(
                  child: ListTile(
                    leading: Icon(Icons.emoji_events, color: Colors.orange),
                    title: Text("BGMI Championship"),
                    subtitle: Text("Starts in 2 Days"),
                  ),
                ),

                const Card(
                  child: ListTile(
                    leading: Icon(Icons.emoji_events, color: Colors.orange),
                    title: Text("Valorant Open Cup"),
                    subtitle: Text("Starts Tomorrow"),
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

class _GameCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const _GameCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            /// Background Image
            Image.asset(imagePath, fit: BoxFit.cover),

            /// Dark Overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                ),
              ),
            ),

            /// Game Name
            Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  shadows: [Shadow(blurRadius: 5, color: Colors.black)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
