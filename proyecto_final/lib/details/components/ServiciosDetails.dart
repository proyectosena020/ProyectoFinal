import 'package:flutter/material.dart';
import 'package:proyecto_final/models/ServicioModels.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class ServiciosDetails extends StatelessWidget {
  const ServiciosDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 270,
                  width: 300,
                  child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  servicioList[index].icon,
                                  color: primaryColor,
                                ),
                                const SizedBox(
                                  width: defaultPadding,
                                ),
                                Text(
                                  servicioList[index].titulo,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: defaultPadding,
                            ),
                          ],
                        );
                      }),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                ElevatedButton(
                  onPressed: () {
                    _modalServicio(context);
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    foregroundColor: MaterialStatePropertyAll(primaryColor),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
                  ),
                  child: const Text("Mostrar los 56 servicios"),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void _modalServicio(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 600,
            width: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "Lo que este lugar ofrece",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Expanded(
                  child: SizedBox(
                    height: 495,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: servicioList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: defaultPadding,
                              ),
                              ListTile(
                                leading: Icon(
                                  servicioList[index].icon,
                                  color: primaryColor,
                                ),
                                title: Text(
                                  servicioList[index].titulo,
                                  style: const TextStyle(color: primaryColor),
                                ),
                                subtitle: servicioList[index]
                                            .descripcion
                                            ?.isNotEmpty ==
                                        true
                                    ? Text(servicioList[index].descripcion!,
                                        style:
                                            const TextStyle(color: Colors.grey))
                                    : Container(),
                              ),
                              const Divider(
                                height: 1,
                              ),
                              const SizedBox(
                                height: defaultPadding,
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

class ServiciosSection extends StatelessWidget {
  const ServiciosSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 60.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Lo que este lugar ofrece",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              const ServiciosDetails(),
              const SizedBox(
                height: defaultPadding,
              ),
            ]),
      ),
    );
  }
}