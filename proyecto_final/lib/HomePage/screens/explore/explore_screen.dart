import 'package:flutter/material.dart';
import 'package:proyecto_final/theme/theme_manager.dart';
import '../../../generated/translations.g.dart';
import '../explore/components/search_app_bar.dart';
import '../res/sites.dart';
import 'components/card.dart';
import 'package:proyecto_final/HomePage/colors/colors.dart';

class ExploreScreen extends StatefulWidget {

  final ThemeManager themeManager;

  const ExploreScreen({super.key, required this.themeManager});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState(themeManager);
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {

  final ThemeManager themeManager;
    
  late TabController _tabControllerCat;

  _ExploreScreenState(this.themeManager);

  @override
  void initState() {
    super.initState();
    _tabControllerCat = TabController(length: 5, vsync: this, initialIndex: 0);
  }
  // lista de las cabañas 
  final List<Sites> listCardsCab = [

    Sites(
      nombre: texts.home_sites.listCardsCab.siteOne.name,
      ubicacion: texts.home_sites.listCardsCab.siteOne.ubication,
      calificacion: 3.2,
      imagen1:
          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
      imagen2:
          "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg",
      imagen3:
          "https://media.istockphoto.com/id/457982209/es/foto/hay-toallas-en-cama-en-dormitorio.jpg?s=1024x1024&w=is&k=20&c=RAIO8ZOo6uEMWIFQl3Leltid79CFpLDsSN8ufyl9QPk=",
      precio: 52500,
      comoLlegar: texts.home_sites.listCardsCab.siteOne.howToGet,
      fechaDisp: '16-17 Oct',
    ),
    Sites(
      nombre: texts.home_sites.listCardsCab.siteTwo.name,
      ubicacion: texts.home_sites.listCardsCab.siteTwo.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2016/12/06/14/33/log-cabin-1886620_1280.jpg",
      imagen2:
          "https://media.istockphoto.com/id/508729277/es/foto/balc%C3%B3n-exterior-de-la-cabina.webp?s=1024x1024&w=is&k=20&c=JFJvEq7LVQLda9_vP7T6AIHGqzUefqNBVzQuwYODB6s=",
      imagen3:
          "https://media.istockphoto.com/id/157433616/es/foto/tenga-cuidado-con-las-sillas-mecedoras-y-una-ba%C3%B1era-de-hidromasaje.webp?s=1024x1024&w=is&k=20&c=egJ6Ny_XtXg1YG5ZpXY1jS9hu9RUkh2o8_L_v6869bQ=",
      precio: 175000,
      comoLlegar: texts.home_sites.listCardsCab.siteTwo.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsCab.siteThree.name,
      ubicacion: texts.home_sites.listCardsCab.siteThree.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_1280.jpg",
          imagen2:
          "https://media.istockphoto.com/id/172765785/es/foto/sillas-reclinables-espera-con-una-vista-nival.jpg?s=1024x1024&w=is&k=20&c=xKUfu9-RNquUROa49ZfQ3m0F-wUVmMS7aVb8RkuVCzM=",
          imagen3:
          "https://media.istockphoto.com/id/1200983629/es/foto/balc%C3%B3n-de-un-moderno-chalet-de-madera-con-tres-sillas-cubiertas-de-nieve-fresca.jpg?s=1024x1024&w=is&k=20&c=LyY3PZsCLGf3-2A_geNFYwPSR_8VdUG5Lk4WVmf8Qyk=",
      precio: 550000,
      comoLlegar: texts.home_sites.listCardsCab.siteThree.howToGet,
      fechaDisp: '10-12 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsCab.siteFour.name,
      ubicacion: texts.home_sites.listCardsCab.siteFour.ubication,
      calificacion: 4.9,
      imagen1:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
          imagen2:
          "https://media.istockphoto.com/id/1441992934/es/foto/feliz-familia-extendida-pasar-un-d%C3%ADa-de-primavera-juntos-en-una-terraza.jpg?s=1024x1024&w=is&k=20&c=dEE1X5KdTYSneY_GFiL13KfC-FSrMd_QvFQ4WR9U9cU=",
          imagen3:
          "https://media.istockphoto.com/id/997910616/es/foto/mesa-de-vac%C3%ADo.jpg?s=1024x1024&w=is&k=20&c=LbqUz7pnQhSl8Ii9QUjvUq5TC0Plbqqr9sDSJh97V4A=",
      precio: 50000,
      comoLlegar: texts.home_sites.listCardsCab.siteFour.howToGet,
      fechaDisp: '15-20 Nov',
    ),
  ];
  // Lista de Vista al mar
  final List<Sites> listCardsMar = [
    Sites(
      nombre: texts.home_sites.listCardsMar.siteOne.name,
      ubicacion: texts.home_sites.listCardsMar.siteOne.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2017/06/16/11/43/santorini-2408868_1280.jpg",
      imagen2:
          "https://cdn.pixabay.com/photo/2014/07/10/17/17/architectural-389253_1280.jpg",
      imagen3:
          "https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMar.siteOne.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsMar.siteTwo.name,
      ubicacion: texts.home_sites.listCardsMar.siteTwo.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2021/06/01/12/39/beach-6301597_1280.jpg",
      imagen2:
          "https://cdn.pixabay.com/photo/2016/11/23/13/48/beach-1852945_1280.jpg",
      imagen3:
          "https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMar.siteTwo.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsMar.siteThree.name,
      ubicacion: texts.home_sites.listCardsMar.siteThree.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2015/04/27/01/27/punta-cana-741296_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMar.siteThree.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsMar.siteThree.name,
      ubicacion: texts.home_sites.listCardsMar.siteThree.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMar.siteFour.howToGet,
      fechaDisp: '16-17 Dic',
    ),
  ];
  // Lista de sitios unicos 
  final List<Sites> listCardsUnic = [
    Sites(
      nombre: texts.home_sites.listCardsUnic.siteOne.name,
      ubicacion: texts.home_sites.listCardsUnic.siteOne.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2017/06/25/17/11/castle-2441302_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2017/06/25/17/11/castle-2441302_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2017/01/21/22/40/castle-1998435_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsUnic.siteOne.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsUnic.siteTwo.name,
      ubicacion: texts.home_sites.listCardsUnic.siteTwo.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsUnic.siteTwo.howToGet,
      fechaDisp: '16-17 Dic',
    ),
    Sites(
      nombre: texts.home_sites.listCardsUnic.siteThree.name,
      ubicacion: texts.home_sites.listCardsUnic.siteThree.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_1280.jpg",
          imagen2:
          "https://media.istockphoto.com/id/172765785/es/foto/sillas-reclinables-espera-con-una-vista-nival.jpg?s=1024x1024&w=is&k=20&c=xKUfu9-RNquUROa49ZfQ3m0F-wUVmMS7aVb8RkuVCzM=",
          imagen3:
          "https://media.istockphoto.com/id/1200983629/es/foto/balc%C3%B3n-de-un-moderno-chalet-de-madera-con-tres-sillas-cubiertas-de-nieve-fresca.jpg?s=1024x1024&w=is&k=20&c=LyY3PZsCLGf3-2A_geNFYwPSR_8VdUG5Lk4WVmf8Qyk=",
      precio: 550000,
      comoLlegar: texts.home_sites.listCardsUnic.siteThree.howToGet,
      fechaDisp: '10-12 Nov',
    ),
  ];
  // Lista Castillos 
  final List<Sites> listCardsCast = [
    Sites(
      nombre: texts.home_sites.listCardsCast.siteOne.name,
      ubicacion: texts.home_sites.listCardsCast.siteOne.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2017/03/10/06/15/quebec-2131892_1280.jpg",
      imagen2:
          "https://cdn.pixabay.com/photo/2014/12/27/14/37/living-room-581073_1280.jpg",
      imagen3:
          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsCast.siteOne.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsCast.siteTwo.name,
      ubicacion: texts.home_sites.listCardsCast.siteTwo.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2015/04/20/06/46/office-730681_1280.jpg",
      imagen2:
          "https://cdn.pixabay.com/photo/2016/03/21/19/58/empress-hotel-1271401_1280.jpg",
      imagen3:
          "https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsCast.siteTwo.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsCast.siteThree.name,
      ubicacion: texts.home_sites.listCardsCast.siteThree.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2017/06/25/17/11/castle-2441302_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2017/06/25/17/11/castle-2441302_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2017/01/21/22/40/castle-1998435_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsCast.siteThree.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsCast.siteFour.name,
      ubicacion: texts.home_sites.listCardsCast.siteFour.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2018/02/24/15/22/waters-3178363_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2021/07/19/05/04/fairmont-chateau-lake-louise-6477246_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2017/01/07/17/48/interior-1961070_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsCast.siteFour.howToGet,
      fechaDisp: '15-20 Nov',
    ),
  ];
  // Lista de
  final List<Sites> listCardsHab = [
    Sites(
      nombre: texts.home_sites.listCardsMab.siteOne.name,
      ubicacion: texts.home_sites.listCardsMab.siteOne.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2015/04/10/17/03/pots-716579_1280.jpg",
      imagen2:
          "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_1280.jpg",
      imagen3:
          "https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMab.siteOne.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsMab.siteTwo.name,
      ubicacion: texts.home_sites.listCardsMab.siteTwo.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_1280.jpg",
      imagen2:
          "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_1280.jpg",
      imagen3:
          "https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMab.siteTwo.howToGet,
      fechaDisp: '15-25 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsMab.siteThree.name,
      ubicacion: texts.home_sites.listCardsMab.siteThree.ubication,
      calificacion: 4.0,
      imagen1:
          "https://cdn.pixabay.com/photo/2018/01/24/15/08/live-3104077_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2015/04/10/17/03/pots-716579_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMab.siteThree.howToGet,
      fechaDisp: '15-20 Nov',
    ),
    Sites(
      nombre: texts.home_sites.listCardsMab.siteFour.name,
      ubicacion: texts.home_sites.listCardsMab.siteFour.ubication,
      calificacion: 4.5,
      imagen1:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
          imagen2:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
          imagen3:
          "https://cdn.pixabay.com/photo/2019/09/18/17/22/mountain-lake-4487292_1280.jpg",
      precio: 100000,
      comoLlegar: texts.home_sites.listCardsMab.siteFour.howToGet,
      fechaDisp: '15-20 Nov',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SearchComponent(themeManager: themeManager,),
            listViewCategory(),
            tabViewCategory(context),
          ],
        ),
      ),
    );
  }

// metodo que retorna la lista de categorias ( locales sin lista )
  listViewCategory() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TabBar(
        tabAlignment: TabAlignment.center,
        labelColor: goldlight,
        controller: _tabControllerCat,
        indicatorColor: goldlight,
        isScrollable: true,
        tabs: [
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 4, top: 4),
            child: Column(
              children: [
                Icon(Icons.cabin),
                Text(
                  texts.home_sites.categories.categoriesOne,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 4, top: 4),
            child: Column(
              children: [
                Icon(Icons.beach_access),
                Text(
                  texts.home_sites.categories.categoriesTwo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 4, top: 4),
            child: Column(
              children: [
                Icon(Icons.verified_user_outlined),
                Text(
                  texts.home_sites.categories.categoriesThree,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 4, top: 4),
            child: Column(
              children: [
                Icon(Icons.castle),
                Text(
                  texts.home_sites.categories.categoriesFour,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 4, top: 4),
            child: Column(
              children: [
                Icon(Icons.hotel_rounded),
                Text(
                  texts.home_sites.categories.categoriesFive,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // metodo que retorna el contenido de las categorias, misma lista para todo
  tabViewCategory(BuildContext context) {

    // variable que hace la funcion de responsive para todo tipo de pantallas
    int gridColumns = (MediaQuery.of(context).size.width / 290).floor();
    return Expanded(
      child: TabBarView(
        controller: _tabControllerCat,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: LayoutBuilder(
              builder: (context, responsive){
                if (responsive.maxWidth <= 500){
                  return GridView.builder(
                    itemCount: listCardsCab.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: 1,
                      childAspectRatio: 0.83,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsCab[index],
                      );
                    },
                  );
                }else{
                  return GridView.builder(
                    itemCount: listCardsCab.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: responsive.maxWidth >= 900 ? 4:2,
                      childAspectRatio: responsive.maxWidth >= 900? 0.65:0.87,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsCab[index],
                      );
                    },
                  );
                }
              },
            )
          ),

          Container(
            padding: const EdgeInsets.all(15),
            child: LayoutBuilder(
              builder: (context, responsive){
                if (responsive.maxWidth <= 500){
                  return GridView.builder(
                    itemCount: listCardsMar.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: 1,
                      childAspectRatio: 0.83,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsMar[index],
                      );
                    },
                  );
                }else{
                  return GridView.builder(
                    itemCount: listCardsMar.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: responsive.maxWidth >= 800 ? 4:2,
                      childAspectRatio: 0.67,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsMar[index],
                      );
                    },
                  );
                }
              },
            )
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: LayoutBuilder(
              builder: (context, responsive){
                if (responsive.maxWidth <= 500){
                  return GridView.builder(
                    itemCount: listCardsUnic.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: 1,
                      childAspectRatio: 0.83,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsUnic[index],
                      );
                    },
                  );
                }else{
                  return GridView.builder(
                    itemCount: listCardsUnic.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: responsive.maxWidth >= 900 ? 4:2,
                      childAspectRatio: responsive.maxWidth >= 900? 0.65:0.87,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsUnic[index],
                      );
                    },
                  );
                }
              },
            )
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: LayoutBuilder(
              builder: (context, responsive){
                if (responsive.maxWidth <= 500){
                  return GridView.builder(
                    itemCount: listCardsCast.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: 1,
                      childAspectRatio: 0.83,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsCast[index],
                      );
                    },
                  );
                }else{
                  return GridView.builder(
                    itemCount: listCardsCast.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: responsive.maxWidth >= 900 ? 4:2,
                      childAspectRatio: responsive.maxWidth >= 900? 0.65:0.87,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsCast[index],
                      );
                    },
                  );
                }
              },
            )
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: LayoutBuilder(
              builder: (context, responsive){
                if (responsive.maxWidth <= 500){
                  return GridView.builder(
                    itemCount: listCardsHab.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: 1,
                      childAspectRatio: 0.83,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsHab[index],
                      );
                    },
                  );
                }else{
                  return GridView.builder(
                    itemCount: listCardsHab.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // esto cambia a medida que el tamaño de la  pantalla cambia.
                      crossAxisCount: responsive.maxWidth >= 900 ? 4:2,
                      childAspectRatio: responsive.maxWidth >= 900? 0.65:0.87,
                    ),
                    itemBuilder: (context, index) {
                      return CardSite(
                        data: listCardsHab[index],
                      );
                    },
                  );
                }
              },
            )
          ),
        ],
      ),
    );
  }

  bool _isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 480;
  }
}
