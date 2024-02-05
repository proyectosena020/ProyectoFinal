import 'dart:math';

import 'package:flutter/material.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

// diseño de la Card animada donde va a estar la información de cada comentario del aplicativo

class ComentarioCardTodo extends StatefulWidget {
  const ComentarioCardTodo({super.key});

  @override
  State<ComentarioCardTodo> createState() => _ComentarioCardTodoState();
}

class _ComentarioCardTodoState extends State<ComentarioCardTodo> {
  bool isBack = true;
  double angle = 0;

  String comment =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit ultricies integer proin suscipit, eleifend nunc taciti habitant mi fames justo suspendisse accumsan penatibus, facilisis senectus molestie nascetur litora tristique vulputate parturient habitasse dictum. Fringilla vestibulum odio tincidunt commodo porttitor gravida posuere, suspendisse dictumst nulla maecenas taciti per diam ut, enim leo vivamus sodales libero porta. Cubilia sem augue neque tortor cras odio proin molestie habitasse magna iaculis ultrices, lobortis mattis arcu lacus metus eu ullamcorper aliquet etiam curae magnis.";

  @override
  Widget build(BuildContext context) {
    void _flip() {
      setState(() {
        angle = (angle + pi) % (2 * pi);
      });
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: _flip,
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: angle),
            duration: const Duration(seconds: 1),
            builder: (BuildContext context, double val, __) {
              //here we will change the isBack val so we can change the content of the card
              if (val >= (pi / 2)) {
                isBack = false;
              } else {
                isBack = true;
              }
              return (Transform(
                //let's make the card flip by it's center
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(val),
                child: Container(
                    width: 309,
                    height: 474,
                    child: isBack
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/back.png"),
                              ),
                            ),
                          ) //if it's back we will display here
                        : Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..rotateY(
                                  pi), // it will flip horizontally the container
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/face.png"),
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  width: 190,
                                  height: 350,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(height: defaultPadding),
                                        Text(
                                          "Sitio: Cabaña la niña",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Usuario:",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Eduardo Manzanares",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Limpieza: 4.2",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Comucicación: 3.2",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Llegada: 4.2",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Fiabilidad: 3.2",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Ubicación: 4.2",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        const Text(
                                          "Precio: 3.2",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        Text(
                                          "Comentario:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(color: primaryColor),
                                        ),
                                        const SizedBox(height: defaultPadding),
                                        Text(
                                          comment,
                                          style: const TextStyle(color: primaryColor),
                                        ),
                                        const SizedBox(
                                          height: defaultPadding,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: primaryColor,
                                                    offset: Offset(
                                                      2.0,
                                                      2.0,
                                                    ),
                                                    blurRadius: 3.0,
                                                    spreadRadius: 1.0,
                                                  ), //BoxShadow
                                                  BoxShadow(
                                                    color: primaryColor,
                                                    offset: Offset(0.0, 0.0),
                                                    blurRadius: 0.0,
                                                    spreadRadius: 0.0,
                                                  ), //BoxShadow
                                                ],
                                                color: Colors.white,
                                              ),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(Icons.delete,
                                                      size: 25,
                                                      color: Colors.black)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: defaultPadding,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ) //else we will display it here,
                    ),
              ));
            }),
      ),
    );
  }
}