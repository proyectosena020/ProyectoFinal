import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/HomePage/colors/colors.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import '../../res/sites.dart';

class CardSite extends StatefulWidget {
  final Sites data;
  const CardSite({
    super.key,
    required this.data,
  });

  @override
  State<CardSite> createState() => _CardSiteState();
}

class _CardSiteState extends State<CardSite> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  PageController? controller;
  int currentIndex = 0;

  @override
  void initState(){
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose(){
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    List listaImages = [
      widget.data.imagen1,
      widget.data.imagen2,
      widget.data.imagen3,
    ];

    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: goldlight.withOpacity(.7),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                PageView.builder(
                  controller: controller,
                    itemCount: listaImages.length,
                    onPageChanged: (int index){
                      if (index >= currentIndex){
                        setState(() {
                          currentIndex = index;
                        });
                      }else{
                        setState(() {
                          currentIndex = index;
                        });
                      }
                    },
                    itemBuilder: (context, index){
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              listaImages[index],
                            ),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Expanded(
                          child:
                          Stack(
                            children: [
                              Positioned(
                                top: 10,
                                right: 5,
                                child: IconButton(
                                  icon: Icon(
                                    isFavorite ? Icons.favorite : Icons.favorite_border,
                                    color: isFavorite ? primaryColor : Colors.white,
                                  ),
                                  onPressed: toggleFavorite,
                                  iconSize: 25.0,
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 5,
                                child: Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.white, size: 17,),
                                    const SizedBox(width: 4),
                                    Text(
                                      widget.data.calificacion.toString(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: List.generate(
                                            listaImages.length,
                                                (index) => buildDot(index, context)
                                        ),
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      );
                    }
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.data.ubicacion,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 2),
                  child: Text(
                    widget.data.nombre,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child:
                    Text(
                      widget.data.comoLlegar,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2, left: 10),
                  child:
                  Text(
                    widget.data.fechaDisp,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2, left: 10),
                  child:
                  Text(
                    " \$  ${widget.data.precio.toString()}    ${Translations.of(context).site.nights}",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      height: 8,
      width: currentIndex == index ? 14 : 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentIndex == index ? Colors.white : Colors.grey
      ),
    );
  }

}
