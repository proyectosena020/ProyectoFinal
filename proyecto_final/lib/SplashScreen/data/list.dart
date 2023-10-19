import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class Components{
  String image;
  String titulo;
  String descripcion;
  Widget backgroundColor;
  String imagen2;
  Color background;

  Components({
    required this.image,
    required this.titulo,
    required this.descripcion,
    required this.backgroundColor,
    required this.imagen2,
    required this.background
  });
}


List<Components> listaComponents = [
  Components(
      image: 'assets/images/imgn1.svg',
      titulo: 'Explora el Mundo',
      descripcion: "Descubre destinos inexplorados, "
          "vive experiencias únicas y crea recuerdos que "
          "durarán toda la vida. ¡Únete a la comunidad viajera "
          "y haz realidad tus sueños de viaje!",
      backgroundColor: LottieBuilder.asset("assets/images/animationa3.json", fit: BoxFit.cover,),
    imagen2: 'assets/images/img1.jpg',
    background: Colors.black
  ),
  Components(
      image: 'assets/images/imgn2.svg',
      titulo: 'Viaja con Estilo',
      descripcion: 'Desde playas paradisíacas '
          'hasta metrópolis emocionantes, '
          'encuentra inspiración para tu '
          'próximo viaje y descubre '
          'ofertas exclusivas que harán que tu viaje sea inolvidable.',
      backgroundColor: Padding(
        padding: EdgeInsets.only(top: 180),
        child: LottieBuilder.asset(
          "assets/images/animationa3.json",
          fit: BoxFit.cover,
        ),
      ),
      imagen2: 'assets/images/img2.jpg',
      background: Colors.white
  ),
  Components(
      image: 'assets/images/imgn3.svg',
      titulo: 'Rutas Secretas',
      descripcion: '¿Buscas aventuras auténticas? Navega por '
          'nuestras rutas secretas y desentraña los tesoros '
          'ocultos que solo los viajeros más intrépidos conocen.',
      backgroundColor: LottieBuilder.asset("assets/images/animationa3.json", fit: BoxFit.cover),
      imagen2: 'assets/images/img3.jpg',
      background: Colors.black
  ),
  Components(
      image: 'assets/images/imgn4.svg',
      titulo: 'Planifica Tu Escape',
      descripcion: 'Ya sea una escapada de fin de semana o '
          'un viaje de ensueño, nuestra app te ayudará a planificar '
          'el escape perfecto. ¡Deja que la aventura comience!',
      backgroundColor: Padding(
        padding: EdgeInsets.only(top: 180),
        child: LottieBuilder.asset(
            "assets/images/animationa3.json",
          fit: BoxFit.cover,
        ),
      ),
      imagen2: 'assets/images/img4.jpg',
      background: Colors.white
  ),
  Components(
      image: 'assets/images/imgn5.svg',
      titulo: 'Viajar Transforma',
      descripcion: 'El viaje no solo cambia tus destinos, '
          'también cambia tu perspectiva. Únete a nuestra '
          'comunidad global de ''viajeros y descubre cómo viajar puede transformar tu vida.',
      backgroundColor: LottieBuilder.asset("assets/images/animationa3.json", fit: BoxFit.cover),
      imagen2: 'assets/images/img5.jpg',
      background: Colors.black
  ),
];