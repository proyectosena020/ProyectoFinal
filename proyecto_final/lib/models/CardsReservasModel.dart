import 'package:flutter/material.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class ReservaInfoModel {
  final String? svgSrc, title, totalReservas;
  final int? percentage;
  final Color? color;

  ReservaInfoModel({
    this.svgSrc,
    this.title,
    this.totalReservas,
    this.percentage,
    this.color,
  });
}

