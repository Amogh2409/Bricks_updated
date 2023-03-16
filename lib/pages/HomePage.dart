import 'package:brick/pages/menu.dart';
import 'package:brick/pages/scanPage.dart';
import 'package:brick/pages/settingsPage.dart';
import 'package:brick/pages/sharePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // r
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              DrawerFb1();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        body: Row(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const scanPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                      height: size * 0.43,
                      width: size * 0.228,
                      child: Column(
                        children: [
                          Expanded(
                            child:Container()),
                          const Icon(
                            Icons.fullscreen,
                            color: Colors.orange,
                            size: 70,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Scan", style: TextStyle(fontSize: 25)),
                          Expanded(
                            child:Container()),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const settingsPage()));
                  },
                  child: SizedBox(
                    height: size * 0.43,
                    width: size * 0.228,
                    child: Column(
                        children: [
                          Expanded(
                            child:Container()),
                          const Icon(
                            Icons.settings,
                            color: Colors.lightBlue,
                            size: 70,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Settings", style: TextStyle(fontSize: 25)),
                          Expanded(
                            child:Container()),
                        ],
                      )
                     
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size,
              width: 2,
            ),
            Column(
              children: [
                SizedBox(
                  height: size * 0.43,
                  width: size * 0.23,
                  child: GestureDetector(
                    onTap: () {
                      
                    },
                    child: Column(
                        children: [
                          Expanded(
                            child:Container()),
                          const Icon(
                            Icons.save_outlined,
                            color: Colors.red,
                            size: 70,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("My Mocs", style: TextStyle(fontSize: 25)),
                          Expanded(
                            child:Container()),
                        ],
                      )
                  ),
                ),
                SizedBox(
                  height: size * 0.43,
                  width: size * 0.23,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const sharePage(),
                        ),
                      );
                    },
                    child: Column(
                        children: [
                          Expanded(
                            child:Container()),
                          const Icon(
                            Icons.ios_share_rounded,
                            color: Colors.green,
                            size: 70,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Share", style: TextStyle(fontSize: 25)),
                          Expanded(
                            child:Container()),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



//Drawer
class DrawerFb1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
        child: Material(
          color: const Color(0xff4338CA),
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    const SearchFieldDrawer(),
                    const SizedBox(height: 12),
                    MenuItem(
                      text: 'Friends',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 5),
                    MenuItem(
                      text: 'Liked Photos',
                      icon: Icons.favorite_border,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 5),
                    MenuItem(
                      text: 'Workflow',
                      icon: Icons.workspaces_outline,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 5),
                    MenuItem(
                      text: 'Updates',
                      icon: Icons.update,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 8),
                    const Divider(color: Colors.white70),
                    const SizedBox(height: 8),
                    MenuItem(
                      text: 'Notifications',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    MenuItem(
                      text: 'Settings',
                      icon: Icons.settings,
                      onClicked: () => selectedItem(context, 6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }



  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Scaffold(), // Page 1
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Scaffold(), // Page 2
        ));
        break;
    }
  }
}
class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;
  
  const MenuItem({required this.text,
    required this.icon,
    this.onClicked,Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
class SearchFieldDrawer extends StatelessWidget {
  const SearchFieldDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color,fontSize: 14),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color,size: 20,),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }}