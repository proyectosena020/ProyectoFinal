import 'package:flutter/material.dart';
import 'package:proyecto_final/details/components/showHuesped.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({super.key});
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Text(
                  "\$732,795 COP noche",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Container(),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 10,
                        top: 10,
                      ),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                          ),
                          border: Border(
                              top: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                              bottom: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                              right: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                              left: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.grey))),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("Llegada"), Text("14/11/2023")],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 10,
                        top: 10,
                      ),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                          ),
                          border: Border(
                              top: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                              bottom: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                              right: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                              left: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.grey))),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("Salida"), Text("14/11/2023")],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const CountHuesped(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: primaryColor),
                      child: Center(
                          child: Text(
                        "Reservar",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$733,337 COP x 4 noches",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                  Text(
                    "\$2,933,346 COP",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey),
                  ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tarifa de limpieza",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                  Text(
                    "\$156,116 COP",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey),
                  ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tarifa por servicio de StayAway",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                  Text(
                    "\$519,036 COP",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total sin incluir impuestos",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                  Text(
                    "\$3,608,498 COP",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
