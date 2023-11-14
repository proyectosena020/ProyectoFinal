import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyecto_final/categories/screens/categoryPage.dart';
import 'package:proyecto_final/comentarios/screen/comentarioPage.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:proyecto_final/theme/theme_manager.dart';

class SideMenu extends StatefulWidget {
  final ThemeManager themeManager;

  const SideMenu({
    Key? key,
    required this.themeManager,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo2.png",),
          ),
          DrawerListTile(
            title: texts.main.home,
            svgSrc: "assets/icons/home.svg",
            press: () {},
          ),
          DrawerListTile(
            title: texts.main.myProfile,
            svgSrc: "assets/icons/persona.svg",
            press: () {
            },
          ),
          DrawerListTile(
            title: texts.main.categories,
            svgSrc: "assets/icons/hotel.svg",
            press: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoryPage()),
            );
            },
          ),
          DrawerListTile(
            title: texts.main.comments,
            svgSrc: "assets/icons/comentarios.svg",
            press: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ComentarioPage()),
            );
            },
          ),
          DrawerListTile(
            title: texts.main.myChats,
            svgSrc: "assets/icons/chat.svg",
            press: () {
            },
          ),
          DrawerListTile(
            title: texts.main.newSite,
            svgSrc: "assets/icons/addsitio.svg",
            press: () {},
          ),
          DrawerListTile(
            title: texts.main.toExplore,
            svgSrc: "assets/icons/explorar.svg",
            press: () {},
          ),
          DrawerListTile(
            title: isDark ? texts.main.clearmode : texts.main.darkmode,
            svgSrc: isDark ? "assets/icons/Light.svg" : "assets/icons/dark.svg",
            press: () {
              var newValue = ThemeMode.dark;

              setState(() {
                if (newValue == ThemeMode.dark) {
                  newValue = ThemeMode.light;
                  widget.themeManager
                      .toggleTheme(widget.themeManager.themeMode == newValue);
                } else {
                  newValue = ThemeMode.dark;
                  widget.themeManager
                      .toggleTheme(widget.themeManager.themeMode == newValue);
                }
              });
            },
          ),
          DrawerListTile(
            title: texts.main.logout,
            svgSrc: "assets/icons/logout.svg",
            press: () {
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: isDark
            ? const ColorFilter.mode(Colors.white54, BlendMode.srcIn)
            : const ColorFilter.mode(primaryColor, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: isDark
            ? const TextStyle(color: Colors.white54)
            : const TextStyle(color: primaryColor),
      ),
    );
  }
}
