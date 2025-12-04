import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: ListView(
        children: const [
          ListTile(leading: Icon(Icons.person), title: Text("Account")),
          ListTile(leading: Icon(Icons.color_lens), title: Text("Theme")),
          ListTile(leading: Icon(Icons.info), title: Text("About")),
        ],
      ),
    );
  }
}
