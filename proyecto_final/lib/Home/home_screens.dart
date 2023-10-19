import 'package:flutter/material.dart';
import 'package:proyecto_final/login/Screen/LoginAndRegister.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:proyecto_final/theme/theme_manager.dart';
import 'explore/explore_screen.dart';
import 'save/save_screen.dart';

class HomeScreenPage extends StatefulWidget {

  final ThemeManager themeManager;

  HomeScreenPage({super.key, required this.themeManager});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState(themeManager);
}

class _HomeScreenPageState extends State<HomeScreenPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final ThemeManager themeManager;

  _HomeScreenPageState(this.themeManager);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            ExploreScreen(),
            SaveScreen(),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Debes iniciar sesión para ver el panel",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage(themeManager: themeManager,)),
                          );
                        },
                        child: Text("Iniciar Sesión")),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          controller: _tabController,
          labelColor: primaryColor,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
          unselectedLabelColor: Colors.grey[400],
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          indicatorColor: Colors.transparent,
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              text: "HOME",
            ),
            Tab(
              icon: Icon(
                Icons.explore,
                size: 25,
              ),
              text: "EXPLORAR",
            ),
            Tab(
              icon: Icon(
                Icons.person_2_outlined,
                size: 25,
              ),
              text: "PANEL",
            ),
          ],
        ),
      ),
    );
  }
}
