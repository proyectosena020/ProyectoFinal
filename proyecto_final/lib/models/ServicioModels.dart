import 'package:flutter/material.dart';

class ServiciosModels {
  IconData icon;
  String titulo;
  String? descripcion;

  ServiciosModels({required this.icon, required this.titulo, this.descripcion});
}

List servicioList = [
  ServiciosModels(icon: Icons.local_florist_outlined, titulo: "Vista al jardín"),
  ServiciosModels(icon: Icons.image_outlined, titulo: "Vista a las montañas"),
  ServiciosModels(icon: Icons.kitchen_outlined, titulo: "Cocina"),
  ServiciosModels(icon: Icons.wifi_outlined, titulo: "Wifi"),
  ServiciosModels(icon: Icons.desk_outlined, titulo: "Zona de trabajo"),
  ServiciosModels(icon: Icons.directions_car_outlined, titulo: "Estacionamiento gratuito en \nlas instalaciones"),
  ServiciosModels(icon: Icons.bathroom_outlined, titulo: "Jacuzzi privado"),
  ServiciosModels(icon: Icons.tv_outlined, titulo: "Televisor de alta definición\n con Video de Amazon Prime,\n Disney+, Netflix"),
  ServiciosModels(icon: Icons.image_outlined, titulo: "Vista al valle"),
  ServiciosModels(icon: Icons.location_city_outlined, titulo: "Vista al horizonte de la ciudad"),
  ServiciosModels(icon: Icons.water_damage_outlined, titulo: "Agua caliente"),
  ServiciosModels(icon: Icons.book_outlined, titulo: "Libros y material de lectura"),
  ServiciosModels(icon: Icons.calendar_month_outlined, titulo: "Disponible para estadías largas", descripcion: "Permite estadías de 28 días o más"),
  ServiciosModels(icon: Icons.key_outlined, titulo: "Llegada autónoma"),
];