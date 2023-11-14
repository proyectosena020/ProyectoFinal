import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/models/ComentarioModels.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class ComentarioDetails extends StatelessWidget {
  const ComentarioDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    "assets/images/olivo1.png",
                    width: 100,
                    height: 200,
                  )),
                  Text(
                    "4.99",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                      child: Image.asset(
                    "assets/images/olivo2.png",
                    width: 100,
                    height: 200,
                  )),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Limpieza",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "5.0",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          const Icon(
                            Icons.cleaning_services_outlined,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Comunicación",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "5.0",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          const Icon(
                            Icons.message_outlined,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Llegada",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "5.0",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          const Icon(
                            Icons.key_outlined,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fiabilidad",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "5.0",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          const Icon(
                            Icons.check_circle_outline,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ubicación",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "5.0",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          const Icon(
                            Icons.map_outlined,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Precio",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "4.9",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          const Icon(
                            Icons.monetization_on_outlined,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 450,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Responsive.isDesktop(context) ||
                            Responsive.isTablet(context)
                        ? 4
                        : 1),
                itemCount: comentarioList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50.0),
                                        child: Image.network(
                                          comentarioList[index].imagen!,
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: defaultPadding,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            comentarioList[index].nombre!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            comentarioList[index].lugar!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(color: Colors.grey),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: defaultPadding,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      RatingBar.builder(
                                        itemSize: 20,
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: primaryColor,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      const Text(" . "),
                                      Text(
                                        comentarioList[index].fecha!,
                                        style: const TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: defaultPadding,
                                ),
                                Text(comentarioList[index].comentario!, style: const TextStyle(color: Colors.grey),),
                              ],
                            ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
