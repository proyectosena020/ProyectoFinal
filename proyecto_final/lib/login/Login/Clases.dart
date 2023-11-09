import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/controllers/MenuAppController.dart';
import 'package:proyecto_final/dashboard/screens/main/main_screen.dart';
import 'package:proyecto_final/theme/theme_manager.dart';

import '../../generated/translations.g.dart';
import '../prueba.dart';

class Login extends StatefulWidget {
  final ThemeManager themeManager;
  late TabController tabController;
  Login({Key? key, required this.tabController, required this.themeManager})
      : super(key: key);

  @override
  State<Login> createState() =>
      _LoginState(tabController: tabController, themeManager);
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  final ThemeManager themeManager;
  late TabController tabController;
  _LoginState(this.themeManager, {required this.tabController});

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);
    return LayoutBuilder(builder: (context, responsive) {
      //Aqui al igual ya es responsive atravez de los condicionales
      if (responsive.maxWidth <= 410) {
        return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 15.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0x20D2D2D2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    PreferredSize(
                        preferredSize: const Size.fromHeight(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  TabBar(
                                    controller: tabController,
                                    isScrollable: true,
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.white,
                                    indicatorColor: Colors.white,
                                    labelStyle: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                    tabs: [
                                      Tab(
                                        text: texts.login.signIn,
                                      ),
                                      Tab(
                                        text: texts.login.checkUp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    /*
                    Las vistas tanto del registro como del inicio de sesion estan dentro de un expanded
                    porque me daba un error entonce la unica forma de que encontre de que funcionara fue con un exoanded
                    donde le di un tamaño con el flex
                    * */
                    Expanded(
                      flex: 5,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          //Primera vista del tab que es el login
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      texts.login.login,
                                      style: const TextStyle(
                                          fontSize: 33,
                                          fontFamily: 'DelaGothicOne',
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 30),
                                    child: Text(
                                      texts.login.textOne,
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.white
                                          //fontFamily: 'DelaGothicOne'
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2.0, right: 2.0),
                                    child: TextField(
                                      //controller: _emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        hintText: texts.login.email,
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.0, right: 2.0),
                                    child: TextField(
                                      //controller: _passwordController,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                            icon: Icon(_isObscure
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            }),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        border: InputBorder.none,
                                        hintText: texts.login.password,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        texts.login.forgot,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => MultiProvider(
                                                  providers: [
                                                    ChangeNotifierProvider(
                                                      create: (context) =>
                                                          MenuAppController(),
                                                    ),
                                                  ],
                                                  child: MainScreenTodo(
                                                      themeManager:
                                                          themeManager),
                                                )));
                                  },
                                  child: Container(
                                    width: 200,
                                    height: 50,
                                    padding: const EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        texts.login.logInButtom,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      texts.login.Continue,
                                      style: const TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: const Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/google.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/face.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                          //El register se realizo en una clase diferente
                          Register(
                            themeManager: themeManager,
                          )
                        ],
                      ),
                    ),
                  ],
                )));
      } else if (responsive.maxWidth <= 350) {
        return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Container(
                decoration: BoxDecoration(
                  color: //Colors.black,
                      Color(0x20D2D2D2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    PreferredSize(
                        preferredSize: const Size.fromHeight(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /*const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'StayAway',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'DelaGothicOne'
                              ),
                            ),
                          ),*/
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  TabBar(
                                    controller: tabController,
                                    isScrollable: true,
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.white,
                                    indicatorColor: Colors.white,
                                    labelStyle: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                    tabs: [
                                      Tab(
                                        text: texts.login.signIn,
                                      ),
                                      Tab(
                                        text: texts.login.checkUp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      texts.login.login,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'DelaGothicOne',
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 30),
                                    child: Text(
                                      texts.login.textOne,
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white
                                          //fontFamily: 'DelaGothicOne'
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  //height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.0, right: 1.0),
                                    child: TextField(
                                      //controller: _emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        labelStyle: const TextStyle(
                                            fontSize: 13, color: Colors.purple),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        hintText: texts.login.email,
                                        fillColor: Colors.grey[200],
                                        filled: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  //height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.0, right: 1.0),
                                    child: TextField(
                                      //controller: _passwordController,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                            icon: Icon(
                                                _isObscure
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                size: 17),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            }),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        border: InputBorder.none,
                                        hintText: texts.login.password,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        texts.login.forgot,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => MultiProvider(
                                                  providers: [
                                                    ChangeNotifierProvider(
                                                      create: (context) =>
                                                          MenuAppController(),
                                                    ),
                                                  ],
                                                  child: MainScreenTodo(
                                                      themeManager:
                                                          themeManager),
                                                )));
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 45,
                                    padding: EdgeInsets.all(13.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        texts.login.logInButtom,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      texts.login.Continue,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: const Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/google.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/face.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40)
                            ],
                          ),
                          Register(
                            themeManager: themeManager,
                          )
                        ],
                      ),
                    ),
                  ],
                )));
      } else if (responsive.maxWidth <= 500) {
        return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 15.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0x20D2D2D2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    PreferredSize(
                        preferredSize: const Size.fromHeight(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  TabBar(
                                    controller: tabController,
                                    isScrollable: true,
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.white,
                                    indicatorColor: Colors.white,
                                    labelStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                    tabs: [
                                      Tab(
                                        text: texts.login.signIn,
                                      ),
                                      Tab(
                                        text: texts.login.checkUp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 5,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      texts.login.login,
                                      style: TextStyle(
                                          fontSize: 33,
                                          fontFamily: 'DelaGothicOne',
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 30),
                                    child: Text(
                                      texts.login.textOne,
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white
                                          //fontFamily: 'DelaGothicOne'
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2.0, right: 2.0),
                                    child: TextField(
                                      //controller: _emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        hintText: texts.login.email,
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.0, right: 2.0),
                                    child: TextField(
                                      //controller: _passwordController,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                            icon: Icon(_isObscure
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            }),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        border: InputBorder.none,
                                        hintText: texts.login.password,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        texts.login.forgot,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MultiProvider(
                                                    providers: [
                                                      ChangeNotifierProvider(
                                                        create: (context) =>
                                                            MenuAppController(),
                                                      ),
                                                    ],
                                                    child: MainScreenTodo(
                                                        themeManager:
                                                            themeManager),
                                                  )));
                                    },
                                    child: Container(
                                      width: 200,
                                      height: 50,
                                      padding: const EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Text(
                                          texts.login.logInButtom,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      'Continuar con',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: const Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/google.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/face.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40)
                            ],
                          ),
                          Register(
                            themeManager: themeManager,
                          )
                        ],
                      ),
                    ),
                  ],
                )));
      } else if (responsive.maxWidth >= 1000) {
        return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'StayAway',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                              fontFamily: 'CroissantOne'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            texts.login.textTwo,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'CroissantOne'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(
                    flex: 3,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0x20D2D2D2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PreferredSize(
                                preferredSize: const Size.fromHeight(30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Row(
                                        children: [
                                          TabBar(
                                            controller: tabController,
                                            isScrollable: true,
                                            labelColor: Colors.white,
                                            unselectedLabelColor: Colors.white,
                                            indicatorColor: Colors.white,
                                            labelStyle: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            tabs: [
                                              Tab(
                                                text: texts.login.signIn,
                                              ),
                                              Tab(
                                                text: texts.login.checkUp,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(
                              flex: 6,
                              child: TabBarView(
                                controller: tabController,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 25),
                                            child: Text(
                                              texts.login.login,
                                              style: TextStyle(
                                                  fontSize: 35,
                                                  fontFamily: 'DelaGothicOne',
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 25, right: 30),
                                            child: Text(
                                              texts.login.textOne,
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white
                                                  //fontFamily: 'DelaGothicOne'
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 2.0, right: 2.0),
                                            child: TextField(
                                              //controller: _emailController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                hintText: texts.login.email,
                                                fillColor: Colors.grey[200],
                                                filled: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 2.0, right: 2.0),
                                            child: TextField(
                                              //controller: _passwordController,
                                              obscureText: _isObscure,
                                              decoration: InputDecoration(
                                                suffixIcon: IconButton(
                                                    icon: Icon(_isObscure
                                                        ? Icons.visibility_off
                                                        : Icons.visibility),
                                                    onPressed: () {
                                                      setState(() {
                                                        _isObscure =
                                                            !_isObscure;
                                                      });
                                                    }),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                border: InputBorder.none,
                                                hintText: texts.login.password,
                                                filled: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                texts.login.forgot,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30.0),
                                        child: GestureDetector(
                                          onDoubleTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MultiProvider(
                                                          providers: [
                                                            ChangeNotifierProvider(
                                                              create: (context) =>
                                                                  MenuAppController(),
                                                            ),
                                                          ],
                                                          child: MainScreenTodo(
                                                              themeManager:
                                                                  themeManager),
                                                        )));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(15.0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Center(
                                              child: Text(
                                                texts.login.logInButtom,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text(
                                              texts.login.Continue,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: const Offset(
                                                          3.0,
                                                          3.0,
                                                        ),
                                                        blurRadius: 4.0,
                                                        spreadRadius: 2.0,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'assets/Sebas/images/google.png'),
                                                        fit: BoxFit.cover)),
                                              ),
                                              const SizedBox(width: 20),
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: Offset(
                                                          3.0,
                                                          3.0,
                                                        ),
                                                        blurRadius: 4.0,
                                                        spreadRadius: 2.0,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'assets/Sebas/images/face.png'),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20)
                                    ],
                                  ),
                                  Register(
                                    themeManager: themeManager,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )))
              ],
            ));
      } else {
        return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 15.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0x20D2D2D2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    PreferredSize(
                        preferredSize: const Size.fromHeight(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  TabBar(
                                    controller: tabController,
                                    isScrollable: true,
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.white,
                                    indicatorColor: Colors.white,
                                    labelStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                    tabs: [
                                      Tab(
                                        text: texts.login.signIn,
                                      ),
                                      Tab(
                                        text: texts.login.checkUp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 5,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      texts.login.login,
                                      style: TextStyle(
                                          fontSize: 33,
                                          fontFamily: 'DelaGothicOne',
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 30),
                                    child: Text(
                                      texts.login.textOne,
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white
                                          //fontFamily: 'DelaGothicOne'
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2.0, right: 2.0),
                                    child: TextField(
                                      //controller: _emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        hintText: texts.login.email,
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.0, right: 2.0),
                                    child: TextField(
                                      //controller: _passwordController,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                            icon: Icon(_isObscure
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            }),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        border: InputBorder.none,
                                        hintText: texts.login.password,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        texts.login.forgot,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MultiProvider(
                                                    providers: [
                                                      ChangeNotifierProvider(
                                                        create: (context) =>
                                                            MenuAppController(),
                                                      ),
                                                    ],
                                                    child: MainScreenTodo(
                                                        themeManager:
                                                            themeManager),
                                                  )));
                                    },
                                    child: Container(
                                      width: 200,
                                      height: 50,
                                      padding: const EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Text(
                                          texts.login.logInButtom,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      texts.login.Continue,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: const Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/google.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(
                                                  3.0,
                                                  3.0,
                                                ),
                                                blurRadius: 4.0,
                                                spreadRadius: 2.0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/Sebas/images/face.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40)
                            ],
                          ),
                          Register(
                            themeManager: themeManager,
                          )
                        ],
                      ),
                    ),
                  ],
                )));
      }
    });
  }
}

//Clase del registro
class Register extends StatefulWidget {
  final ThemeManager themeManager;
  const Register({Key? key, required this.themeManager}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState(themeManager);
}

class _RegisterState extends State<Register> {
  final ThemeManager themeManager;

  PageController? controller; // controlador

  int currentIndex = 0; //inicializacion de la lista

  double porcentaje = 0.20; //porcentaje del circulo de progreso de las vistas

  _RegisterState(this.themeManager);

  final List<String> options = [
    texts.registerMain.citizenshipCard,
    texts.registerMain.foreignerID,
  ];
  String? cedula;

  List<Vistas> listaVistas = <Vistas>[];

  final List<String> items = [
    texts.registerMain.banks.bbva,
    texts.registerMain.banks.bankOfBogota,
    texts.registerMain.banks.banColombia
  ];

  String? selectedValue;

  late bool validacionColor =
      true; //variable del color del circulo de progreso de las vistas

  //funcion void de las vistas que estan en la lista
  @override
  void initState() {
    // TODO: implement initState
    controller = PageController(initialPage: 0);
    super.initState();
    _vistasregister();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller!.dispose();
    super.dispose();
  }

  TextEditingController nombreCompleto = TextEditingController();
  TextEditingController tipoDocumento = TextEditingController();
  TextEditingController numeroDocumento = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController idioma = TextEditingController();
  TextEditingController descripcion = TextEditingController();
  TextEditingController tipoBanco = TextEditingController();
  TextEditingController cuentaBancaria = TextEditingController();
  TextEditingController numeroDaviplata = TextEditingController();
  TextEditingController celularController = TextEditingController();
  TextEditingController imagenController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController contrasenha = TextEditingController();
  TextEditingController confirmacionContasenha = TextEditingController();

  //Esta variable es para la validacion de los formularios
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //Variable para establecer la cantidad de numeros que van en el textfield del numero de la  tajeta
  var cardMask = MaskTextInputFormatter(
      mask: "#### #### #### ####", filter: {"#": RegExp(r'[0-9]')});

  var documento = MaskTextInputFormatter(
      mask: "# ### ### ###", filter: {"#": RegExp(r'[0-9]')});

  var inputtelefono = MaskTextInputFormatter(
      mask: "### ### ####", filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);

    return Column(children: [
      Expanded(
        flex: 6, //tamaño de la vista
        child: PageView.builder(
            controller: controller,
            itemCount: listaVistas.length, //recorre la longitud de la lista
            onPageChanged: (int index) {
              //condicional para el aumento del porcentaje del progreso en el circulo
              if (index >= currentIndex) {
                setState(() {
                  currentIndex = index;
                  porcentaje += 0.20;
                });
              } else {
                setState(() {
                  currentIndex = index;
                  porcentaje -= 0.20;
                });
              }
            },
            itemBuilder: (context, index) {
              return Container(
                child: listaVistas[index].vista1, //Llmado de las vistas
              );
            }),
      ),
      //Aqui va el boton
      Expanded(
          flex: 1,
          child: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 55,
                    width: 55,
                    child: CircularProgressIndicator(
                      value: porcentaje,
                      backgroundColor: Colors.grey,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(porcentaje <= 0.20
                              ? Colors.yellow
                              : porcentaje <= 0.60
                                  ? Colors.lightGreen
                                  : porcentaje > 0.60
                                      ? Colors.green
                                      : Colors.white),
                      //Aqui evalua el color del boton dependiendo el porcentaje
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor:
                        validacionColor ? Colors.white : Colors.green,
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  //condicional que evalua los textfield si esta correcto puede avanzar a la siguiente pagina
                  if (currentIndex == listaVistas.length - 1) {
                    //condiiconal de las vistas
                    validacionColor; //color
                    if (porcentaje == 1) {
                      //condicional que cuando llegue a 1 podra avanzar al homepage
                      //datos almacenados en un  map
                      Map<String, dynamic> datos = {
                        "nombreCompleto": nombreCompleto.text,
                        "TipoDocumento": tipoDocumento.text,
                        "numeroDocumento": numeroDocumento.text,
                        "Telefono": telefono.text,
                        "Idioma": idioma.text,
                        "Descripcion": descripcion.text,
                        "Banco": tipoBanco.text,
                        "CuentaBancaria": cuentaBancaria.text,
                        "NumeroDaviplata": numeroDaviplata.text,
                        "Celular": celularController.text,
                        "Imagen": imagenController.text,
                        "Email": email.text,
                        "Password": contrasenha.text,
                        "ConfirmacionPassowrd": confirmacionContasenha.text
                      };
                      print(datos);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MultiProvider(
                                providers: [
                                  ChangeNotifierProvider(
                                    create: (context) => MenuAppController(),
                                  ),
                                ],
                                child:
                                    MainScreenTodo(themeManager: themeManager),
                              )));
                    }
                  }
                  //animacion al pasar la pagina
                  controller!.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              }))
    ]);
  }

  //Lista dentro de la funcion void
  void _vistasregister() {
    var lista = <Vistas>[
      //Primera vista
      Vistas(
        vista1: Form(
            key: formKey, //Variable para la validacion del formulario
            //Lo hice en una clase diferente
            child: Expanded(
              child: Prueba2(
                  //Paso de parametros
                  nombreCompleto: nombreCompleto,
                  tipoDocumento: tipoDocumento,
                  numeroDocumento: numeroDocumento),
            )),
      ),
      //segunda vista
      Vistas(
          vista1: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Prueba(
                descripcion: descripcion,
                telefono: telefono,
                idioma: idioma,
              ),
            )
          ],
        ),
      )),
      //Tercera vista
      Vistas(
        vista1: Form(
            key: formKey,
            child: Expanded(
              child: Prueba3(
                  tipoBanco: tipoBanco,
                  cuentaBancaria: cuentaBancaria,
                  numeroDaviplata: numeroDaviplata),
            )),
      ),
      //Cuarta vista
      Vistas(
          vista1: Form(
        key: formKey,
        child: Expanded(
          child: Prueba5(
              celularController: celularController,
              imagenController: imagenController),
        ),
      )),
      //Quinta Vista
      Vistas(
          vista1: Form(
        key: formKey,
        child: Expanded(
            child: Prueba4(
                email: email,
                contrasenha: contrasenha,
                confirmacionContasenha: confirmacionContasenha)),
      )),
    ];
    setState(() {
      listaVistas = lista;
    });
  }
}

class Vistas {
  Widget vista1;

  Vistas({required this.vista1});
}
