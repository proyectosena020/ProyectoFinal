import 'package:flutter/material.dart';
import 'package:proyecto_final/controllers/MenuAppController.dart';
import 'package:proyecto_final/dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

// División por partes de los elementos principales del dashboard

class MainScreenTodo extends StatefulWidget {

  final ThemeManager themeManager;

  const MainScreenTodo({super.key, required this.themeManager});

  @override
  State<MainScreenTodo> createState() => _MainScreenTodoState(themeManager: themeManager);
}

class _MainScreenTodoState extends State<MainScreenTodo> {

  final ThemeManager themeManager;

  _MainScreenTodoState({required this.themeManager});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(themeManager: themeManager,),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(themeManager: themeManager,),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
