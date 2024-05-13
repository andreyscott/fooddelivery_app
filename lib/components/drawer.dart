import 'package:flutter/material.dart';
import 'package:fooddelivery_app/components/my_drawer_tile.dart';
import 'package:fooddelivery_app/pages/settings.dart';
import 'package:fooddelivery_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    //logout user
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // APP ICON
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
              text: "H O M E"),
          MyDrawerTile(
              icon: Icons.settings,
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings())),
              text: "S E T T I N G S"),
          MyDrawerTile(icon: Icons.menu, onTap: () {}, text: "M E N U"),

          const Spacer(),
          MyDrawerTile(
              icon: Icons.logout,
              onTap: () {
                logout();
                Navigator.pop(context);
              },
              text: "L O G O U T"),
        ],
      ),
    );
  }
}
