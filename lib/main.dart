import 'package:flutter/material.dart';

import 'package:cano_drawerpaginas/privacy_policy.dart';
import 'package:cano_drawerpaginas/send_feedback.dart';
import 'package:cano_drawerpaginas/settings.dart';
import 'contacts.dart';
import 'dashboard.dart';
import 'events.dart';
import 'my_drawer_header.dart';
import 'notes.dart';
import 'notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = const DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = const ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = const EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = const NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = const SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = const NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = const PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = const SendFeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd43a47),
        title: const Text(
          "Cano Drawer",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), //change your color here
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Inicio", Icons.house_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Pinturas", Icons.color_lens_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Productos", Icons.format_paint_outlined,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Ofertas", Icons.card_giftcard,
              currentPage == DrawerSections.notes ? true : false),
          const Divider(),
          menuItem(5, "Carrito", Icons.shopping_cart_checkout_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Configuración", Icons.settings_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          const Divider(),
          menuItem(7, "Política de privacidad", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Enviar comentarios", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  // ignore: constant_identifier_names
  privacy_policy,
  // ignore: constant_identifier_names
  send_feedback,
}
