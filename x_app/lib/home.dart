import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildMenuItem(context, 'Navigate', Icons.navigation, () {
            // Handle Navigate action
          }),
          _buildMenuItem(context, 'Offline Maps', Icons.map, () {
            // Handle Offline Maps action
          }),
          _buildMenuItem(context, 'Voice Guidance', Icons.volume_up, () {
            // Handle Voice Guidance action
          }),
          _buildMenuItem(context, 'Favourites', Icons.favorite, () {
            // Handle Favourites action
          }),
          _buildMenuItem(context, 'Settings', Icons.settings, () {
            // Handle Settings action
          }),
          _buildMenuItem(context, 'Upgrade to Premium', Icons.star, () {
            // Handle Upgrade to Premium action
          }),
          _buildMenuItem(context, 'About', Icons.info, () {
            // Handle About action
          }),
          _buildMenuItem(context, 'Exit Logout', Icons.exit_to_app, () {
            // Handle Exit Logout action
          }),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData icon, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 16.0),
                Text(title),
              ],
            ),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
