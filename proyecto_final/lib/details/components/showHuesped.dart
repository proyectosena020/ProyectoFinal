import 'package:flutter/material.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

OverlayEntry? entry;

var total = 1;

class ShowHuesped extends StatefulWidget {
  const ShowHuesped({
    super.key,
  });

  @override
  State<ShowHuesped> createState() => _ShowHuespedState();
}

class _ShowHuespedState extends State<ShowHuesped> {
  void hideOverlay() {
    entry?.remove();
  }

  _ShowHuespedState();

  var numAdultos = 1;

  var numNinos = 0;

  var numBebes = 0;

  var numMascotas = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultPadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Adultos",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Edad 13 años o más",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                    if (Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (numAdultos <= 0) {
                                  numAdultos = 0;
                                } else {
                                  numAdultos--;
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(primaryColor)),
                          ),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          Text(numAdultos.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                numAdultos++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(primaryColor)),
                          ),
                        ],
                      ),
                  ],
                ),
                if (Responsive.isMobile(context))
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (numAdultos <= 0) {
                              numAdultos = 0;
                            } else {
                              numAdultos--;
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(primaryColor)),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text(numAdultos.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            numAdultos++;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(primaryColor)),
                      ),
                    ],
                  ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Niños",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "De 2 a 12 años",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                    if(Responsive.isDesktop(context) || Responsive.isTablet(context))
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (numNinos <= 0) {
                                numAdultos = 0;
                              } else {
                                numNinos--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text(numNinos.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              numNinos++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                      ],
                    ),
                  ],
                ),
                if(Responsive.isMobile(context))
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (numNinos <= 0) {
                                numAdultos = 0;
                              } else {
                                numNinos--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text(numNinos.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              numNinos++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                      ],
                    ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bebés",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Menos de 2 años",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                    if(Responsive.isDesktop(context) || Responsive.isTablet(context))
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (numBebes <= 0) {
                                numBebes = 0;
                              } else {
                                numBebes--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text(numBebes.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              numBebes++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                      ],
                    ),
                  ],
                ),
                if(Responsive.isMobile(context))
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (numBebes <= 0) {
                                numBebes = 0;
                              } else {
                                numBebes--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text(numBebes.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              numBebes++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                      ],
                    ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mascotas",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                    if(Responsive.isDesktop(context) || Responsive.isTablet(context))
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (numMascotas <= 0) {
                                numMascotas = 0;
                              } else {
                                numMascotas--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text(numMascotas.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              numMascotas++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                      ],
                    ),
                  ],
                ),
                if(Responsive.isMobile(context))
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (numMascotas <= 0) {
                                numMascotas = 0;
                              } else {
                                numMascotas--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text(numMascotas.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              numMascotas++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                        ),
                      ],
                    ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Center(
                child: TextButton(
                    onPressed: () {
                      hideOverlay();
                    },
                    child: Text(
                      "Cerrar",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ))),
            const SizedBox(
              height: defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}

class CountHuesped extends StatefulWidget {
  const CountHuesped({
    super.key,
  });

  @override
  State<CountHuesped> createState() => _CountHuespedState();
}

class _CountHuespedState extends State<CountHuesped> {
  final layerLink = LayerLink();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    entry = OverlayEntry(
        builder: (context) => Positioned(
            width: size.width,
            child: CompositedTransformFollower(
                link: layerLink,
                showWhenUnlinked: false,
                offset: Offset(0, size.height + 8),
                child: const ShowHuesped())));

    overlay.insert(entry!);
  }

  void hideOverlay() {
    entry?.remove();
    entry = null;
  }

  @override
  Widget build(BuildContext context) => CompositedTransformTarget(
        link: layerLink,
        child: InkWell(
          onTap: () {
            showOverlay();
          },
          onDoubleTap: (){
            hideOverlay();
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 10,
              top: 10,
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                border: Border(
                    top: BorderSide(
                        style: BorderStyle.solid, color: Colors.grey),
                    bottom: BorderSide(
                        style: BorderStyle.solid, color: Colors.grey),
                    right: BorderSide(
                        style: BorderStyle.solid, color: Colors.grey),
                    left: BorderSide(
                        style: BorderStyle.solid, color: Colors.grey))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [const Text("Huéspedes"), Text("$total huésped")],
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      );
}
