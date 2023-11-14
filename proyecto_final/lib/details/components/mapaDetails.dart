import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class MapaDetails extends StatelessWidget {
  const MapaDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String texto = '''
El sitio se encuentra en una zona rural en el sur de Minas Gerais. Es una zona de gran paz y tranquilidad.

No hay supermercados, tiendas y conveniencia cerca. Te recomendamos que traigas los comestibles.

Si lo necesitas, el supermercado está a unos 30 minutos (en la ciudad).
Cómo desplazarse
El sitio se encuentra en una zona rural y para llegar hay unos 3 km de camino de tierra.

En una estación seca, toda la ruta es tranquila. En temporada de lluvias, te recomendamos que utilices un coche 4x4.
Ofrecemos traslado 4x4 (bajo petición y disponibilidad)
    ''';

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "A dónde irás",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 600,
            child: OpenStreetMapSearchAndPick(
                center: const LatLong(4.69592824454456, -74.2156903772746),
                buttonColor: primaryColor,
                buttonText: 'Buscar Ubicación',
                locationPinIconColor: primaryColor,
                locationPinText: "Ubicación",
                locationPinTextStyle: const TextStyle(color: primaryColor),
                onPicked: (pickedData) {}),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SizedBox(
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cambuí, Minas Gerais, Brasil",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    texto,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
