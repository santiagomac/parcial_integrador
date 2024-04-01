import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                "Menú",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/weight');
            },
            title: const Text("Página Principal"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/temperature');
            },
            title: const Text("Gráficas"),
          ),
        ],
      ),
    );
  }
}
