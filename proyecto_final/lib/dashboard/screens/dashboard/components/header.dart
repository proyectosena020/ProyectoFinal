import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:proyecto_final/controllers/MenuAppController.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:provider/provider.dart';

// Header el cual tendra el buscador y una card identificativa del usuario que este usando el aplicativo

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final text = Translations.of(context);
    //final appState = context.findAncestorStateOfType<MyAppState>();
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: context.read<MenuAppController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "StayAway",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard(),
        const SizedBox(width: 30),
                DropdownButton(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          dropdownColor: isDark?secondaryColor:const Color(0xFFFF2F0F2),
          value: TranslationProvider.of(context).locale,
          items: [
            DropdownMenuItem(
              value: AppLocale.en,
              child: Text(texts.lenguage.english),
            ),
            DropdownMenuItem(
              value: AppLocale.es,
              child: Text(texts.lenguage.spanish),
            ),
          ],
          onChanged: (locale){
            if(locale != null){
              LocaleSettings.setLocale(locale);
              if(locale.countryCode?.isNotEmpty ?? false){
                Intl.defaultLocale = '${locale.languageCode}_${locale.countryCode}';
              }else{
              Intl.defaultLocale = locale.languageCode;
            }
            }
          },
        ),
      ],
    );
  }
}

// Card donde estara el avatar y el nombre del usuario que este haciendo la sesión

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: isDark?secondaryColor:const Color(0xFFFF2F0F2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Angelina Jolie"),
            ),
        ],
      ),
    );
  }
}

// Buscador de sitios

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return TextField(
      decoration: InputDecoration(
        hintText: Translations.of(context).search,
        fillColor: isDark?secondaryColor:const Color(0xFFFF2F0F2),
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
