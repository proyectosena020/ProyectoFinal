import 'package:flutter/material.dart';
import 'package:proyecto_final/details/components/entradaCard.dart';
import 'package:proyecto_final/details/components/reservationCard.dart';
import 'package:proyecto_final/details/components/salidaCard.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class RightDetails extends StatelessWidget {
  const RightDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReservationCard(),
              SizedBox(height: defaultPadding,),
              EntradaCard(),
              SizedBox(height: defaultPadding,),
              SalidaCard(),
              SizedBox(height: defaultPadding,),
            ],
          ),
        );
  }
}

