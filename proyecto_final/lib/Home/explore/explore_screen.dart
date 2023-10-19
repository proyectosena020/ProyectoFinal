import 'package:flutter/material.dart';
import '../res/sites.dart';
import 'card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabControllerCat;

  @override
  void initState() {
    super.initState();
    _tabControllerCat = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  final List<Sites> listCards = [
    Sites(
      nombre: "Hotel Cinco estrellas",
      ubicacion: "Bogota",
      calificacion: 4.0,
      imagen:
          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
    ),
    Sites(
      nombre: "Casa",
      ubicacion: "Arcabuco-Colombia",
      calificacion: 4.5,
      imagen:
          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
    ),
    Sites(
      nombre: "Hotel Cinco estrellas",
      ubicacion: "Bogota",
      calificacion: 4.0,
      imagen:
          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
    ),
    Sites(
      nombre: "Casa",
      ubicacion: "Arcabuco-Colombia",
      calificacion: 4.5,
      imagen:
          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: <Widget>[
            searchAppBarWidget(),
            listViewCategory(),
            tabViewCategory(context),
          ],
        ),
      ),
    );
  }

  searchAppBarWidget() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 2),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 1.1),
              blurRadius: 4,
            )
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: "Try \"JohannesBurg\"",
            alignLabelWithHint: true,
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
    );
  }

// metodo que retorna la lista de categorias ( locales sin lista )
  listViewCategory() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TabBar(
        controller: _tabControllerCat,
        indicatorColor: Colors.blue[900],
        isScrollable: true,
        tabs: [
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 4, top: 4),
            child: const Column(
              children: [
                Icon(Icons.cabin),
                Text(
                  "Cabañas",
                  style: TextStyle(
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
            child: const Column(
              children: [
                Icon(Icons.beach_access),
                Text(
                  "Vista al mar",
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
            child: const Column(
              children: [
                Icon(Icons.verified_user_outlined),
                Text(
                  "Unicos",
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
            child: const Column(
              children: [
                Icon(Icons.castle),
                Text(
                  "Castillos",
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
            child: const Column(
              children: [
                Icon(Icons.hotel_rounded),
                Text(
                  "Habitaciones",
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
    int gridColumns = (MediaQuery.of(context).size.width / 310).floor();
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: TabBarView(
          controller: _tabControllerCat,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: listCards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // esto cambia a medida que el tamaño de la  pantalla cambia.
                  crossAxisCount: gridColumns,
                  childAspectRatio: .95,
                ),
                itemBuilder: (context, index) {
                  return CardSite(
                    data: listCards[index],
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: listCards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridColumns,
                  childAspectRatio: .95,
                ),
                itemBuilder: (context, index) {
                  return CardSite(
                    data: listCards[index],
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: listCards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridColumns,
                  childAspectRatio: .95,
                ),
                itemBuilder: (context, index) {
                  return CardSite(
                    data: listCards[index],
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: listCards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridColumns,
                  childAspectRatio: .95,
                ),
                itemBuilder: (context, index) {
                  return CardSite(
                    data: listCards[index],
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: listCards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridColumns,
                  childAspectRatio: .95,
                ),
                itemBuilder: (context, index) {
                  return CardSite(
                    data: listCards[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
