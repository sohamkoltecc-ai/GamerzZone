import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'DiscoverPage.dart';
import 'ChatScreen.dart';
import 'ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    DiscoverScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black54,

        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'GAMERZ ',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextSpan(
                text: 'ZONE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ],
      ),

      body: Expanded(child: _pages[_selectedIndex]),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            );
          }

          return const TextStyle(color: Colors.grey);
        }),

        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.sports_esports_outlined,
              color: Colors.deepPurpleAccent,
            ),
            selectedIcon: Icon(Icons.sports_esports, color: Colors.white),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.travel_explore_outlined,
              color: Colors.deepPurpleAccent,
            ),
            selectedIcon: Icon(Icons.travel_explore, color: Colors.white),
            label: 'Discover',
          ),
          NavigationDestination(
            icon: Icon(Icons.forum_outlined, color: Colors.deepPurpleAccent),
            selectedIcon: Icon(Icons.forum, color: Colors.white),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.deepPurpleAccent,
            ),
            selectedIcon: Icon(Icons.account_circle, color: Colors.white),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
