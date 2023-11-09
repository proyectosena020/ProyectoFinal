import 'package:flutter/material.dart';
import 'package:proyecto_final/models/CategoriaModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

import '../../generated/translations.g.dart';


// diseño de la Card la cual contendra la información de cada una de las categorías y los botones para actualizar y eliminar

class CategoryCard extends StatefulWidget {

  final CategoriaModel categoria;

  const CategoryCard({Key? key, required this.categoria}) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState(categoria: categoria);
}

class _CategoryCardState extends State<CategoryCard> {
  final CategoriaModel categoria;

  _CategoryCardState({required this.categoria});


  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.6),
            offset: const Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: NetworkImage(categoria.imagen),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                categoria.titulo,
                style: const TextStyle(
                    fontSize: 19,
                    color: Colors.white
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){

                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){

                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
