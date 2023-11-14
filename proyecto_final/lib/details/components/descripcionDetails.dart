import 'package:flutter/material.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class DescripcionDetails extends StatefulWidget {
  const DescripcionDetails({
    super.key,
  });

  @override
  State<DescripcionDetails> createState() => _DescripcionDetailsState();
}

class _DescripcionDetailsState extends State<DescripcionDetails> {
  String texto =
      "Conecta con la naturaleza en esta escapada inolvidable.\nPasa unos días increíbles en un chalet entre montañas y olivares en el sur de Minas Gerais\n(en los circuitos de Gonçalves, Cambuí y Monte Verde). Un espacio súper encantador y acogedor \ncon una de las vistas más hermosas que se pueden ver. Situado en la cima de la montaña en medio de\nun lugar para cultivar olivos.";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          texto,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        TextButton(
            onPressed: () {
              _modalDescripcion(context);
            },
            child: Text(
              "Mostar Más >",
              style: Theme.of(context).textTheme.titleMedium,
            ))
      ],
    );
  }
}

void _modalDescripcion(BuildContext context) {
  String texto = '''
Conecta con la naturaleza en esta escapada inolvidable.
Pasa unos días increíbles en un chalet entre montañas y olivares en el sur de Minas Gerais (en los circuitos de Gonçalves, Cambuí y Monte Verde). Un espacio súper encantador y acogedor
con una de las vistas más hermosas que se pueden ver. Situado en la cima de la montaña en medio de un lugar para cultivar olivos. Un lugar para una experiencia única: amanecer sobre las nubes, chimenea con vino, fogata y hamaca.
El espacio
El chalet se encuentra a solo 180 km de São Paulo, en la ciudad de Cambuí (MG). Para las personas a las que les gusta la tranquilidad y la paz, es un lugar ideal para "desconectarse" del ajetreo y el ajetreo de las grandes ciudades los fines de semana y disfrutar de un espacio con paisajes encantadores.
Además, existe la posibilidad de disfrutar de las bellezas locales, como el almuerzo en las encantadoras ciudades de Monte Verde (MG) o Gonçalves (MG) que están a aproximadamente 1 hora del lugar.
DISTANCIAS PRINCIPALES
São Paulo (SP): 180 km.
Monte Verde (Mg): 61 km.
Gonçalves (MG): 40 km

La cabaña fue construida por una familia que buscaba acercarse a la naturaleza y sus ciclos y, por lo tanto, comenzó la plantación de olivos para la producción de aceite de oliva. Por lo tanto, puedes caminar por la propiedad y conocer los olivares de Sítio Santa Clara.

Cuando te hospedes aquí, te indicaremos una serie de sugerencias de excursiones para conocer el turismo rural de las minas: almuerzo con comida local, visita a Still, plantación de fresas orgánicas, fábrica de queso, fábrica de leche dulce, entre otros espacios.

Para aquellos que gustan caminar y andar en bicicleta, se pueden hacer senderos en las carreteras alrededor del sitio. Sin embargo, es bueno preparar la pierna (¡es la montaña, ¿verdad!).
Por la noche es posible disfrutar de una hamaca junto a la hoguera con un cielo lleno de estrellas. Y para aquellos que les gusta levantarse temprano, es una oportunidad para ver el amanecer del sur por encima de las nubes. Una experiencia única.


El chalet tiene capacidad para 4 personas. Tiene una cama King Size en el dormitorio y un sofá cama doble en la sala de estar. Los espacios están integrados (formato estudio).

SERVICIOS:
- chimenea - chimenea

- hidromasaje con cromoterapia
- ducha con hidromasaje vertical.
- redário
- parrilla uruguaia
- bodega
- Cama tamaño king con colchón Emma, sábanas satinadas y toallas de alambre egipcio gigantes.
- Wifi:
Netflix, Disney y Amazon Prime ( aunque la naturaleza es mucho mejor).

IMPORTANTE SOBRE LA LLEGADA
Para llegar al chalet, viajarás unos 4 KM de camino de tierra. En temporada de lluvias, te recomendamos que utilices un auto más alto o 4X4. Si es necesario, podemos ofrecer el servicio de transporte 4X4 (sujeto a disponibilidad).

NOTAS
La cabaña y el chalet están ubicados en una propiedad rural en la montaña dentro de la cordillera de Mantiqueira. En el sitio hay animales que están sueltos circulando por la propiedad, como vacas, caballos, pollos, gatos...

ATENCIÓN
*Indica el número correcto de huéspedes al momento de reservar.
** Reservación mínima de 2 noches
** * No salimos el sábado. Reservaciones de fin de semana con entrada el viernes y salida el domingo.

PREGUNTAS FRECUENTES
1) ¿El wifi te permite trabajar desde casa?
Sí, nuestra familia utiliza Internet todos los días para videoconferencias (zoom, Meet, etc…). La conexión es rápida y de buena calidad. Sin embargo, es internet rural y puede tener oscilaciones (al igual que todo el Internet…rs). Desde nuestra experiencia aquí, es muy raro estar sin internet.

2) ¿Necesitas traer ropa de cama y baño?
No tienes que hacerlo, tenemos esto.

3) ¿Cuál es la hora de llegada y salida? ¿Es posible cambiar?
El registro es a las 15:00 y el check-out a las 12:00.
Dependiendo de las reservaciones antes y después de la fecha elegida, podemos hacer que los horarios sean más flexibles.

4) ¿Hay un restaurante cerca? ¿Entrega de entrega? ¿Ofreces desayuno?
No tenemos servicio de comidas en el lugar ni servicios de entrega (zona rural). Los restaurantes más cercanos están a unos 25 minutos. Para disfrutar mejor del alojamiento te recomendamos que traigas la comida para cocinar en el propio chalet (cocina completa).
Acceso de los huéspedes
- olivares
- corral (vacas y caballos)
- senderos en el bosque
Otros aspectos a destacar
LLEGADA AL SITIO
El chalet está dentro de una propiedad rural, con acceso a través de 3 km de será de tierra. En la temporada de lluvias, se recomienda el uso de coches 4x4 o superior.
Si es necesario, ofrecemos un servicio de traslado en 4x4 ( sujeto a disponibilidad).
Después de reservar, te enviaremos las indicaciones para llegar.

ACERCA DE MASCOTAS
Tenemos un oro en la propiedad. Sin embargo, hemos elegido (por ahora) no aceptar mascotas. Esto se debe a que algunos a menudo se meten en la cama, hacen pis y esto afecta la comodidad de los próximos huéspedes.
Sin embargo, si es necesario, tenemos una asociación con un hotel de mascotas que tiene el servicio de alojamiento y taxi. Registran la propiedad y la traen de vuelta. El dueño es veterinario.
* Sin embargo, no nos hacemos responsables de ningún evento imprevisto con el alojamiento de la mascota. Es sólo una indicación para hacer la vida más fácil para aquellos que la tienen.

WiFi
Tenemos Wi-Fi en el chalet, pero no es de fibra óptica. Después de todo estamos en medio de la montaña… Funciona muy bien, pero puede tener oscilaciones y fallas.


La cosecha es una vez al año (entre enero y marzo) y nos comunicaremos por adelantado sobre el hospedaje y la experiencia.
''';

  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
              height: 600,
              width: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    "Acerca de este espacio",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Expanded(
                      child: Text(
                    texto,
                    style: const TextStyle(color: Colors.grey),
                  )),
                ],
              ),
            ),
        );
      });
}
