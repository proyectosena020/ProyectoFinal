import 'package:flutter/material.dart';
import 'package:proyecto_final/HomePage/colors/colors.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/login/Login/LoginAndRegister.dart';
import 'package:proyecto_final/theme/theme_manager.dart';

class SearchComponent extends StatefulWidget {
  final ThemeManager themeManager;

  const SearchComponent({super.key, required this.themeManager});

  @override
  State<SearchComponent> createState() => _SearchComponentState(themeManager);
}

class _SearchComponentState extends State<SearchComponent> {
  final ThemeManager themeManager;

  _SearchComponentState(this.themeManager);

  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage('assets/diego/assets/logo.png'),
                width: 100,
                height: 70,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                    top: 8,
                    left: 16,
                    right: 16,
                    bottom: 2,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: goldlight,
                        offset: Offset(0.0, 1.1),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: texts.home_sites.text_search,
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.account_circle,
                  size: 45,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage(themeManager: themeManager,)));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
