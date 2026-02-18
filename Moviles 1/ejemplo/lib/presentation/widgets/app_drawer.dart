import 'package:flutter/material.dart';
import 'drawer_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF1877F2)),
            accountName: Text(
              'Usuario',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('usuario@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Color(0xFF1877F2)),
            ),
          ),
          DrawerItem(icon: Icons.home, title: 'Home'),
          DrawerItem(icon: Icons.people, title: 'Friends'),
          DrawerItem(icon: Icons.chat, title: 'Messages'),
          DrawerItem(icon: Icons.notifications, title: 'Notifications'),
          DrawerItem(icon: Icons.settings, title: 'Settings'),
          Spacer(),
          Divider(),
          DrawerItem(icon: Icons.logout, title: 'Logout'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
