import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_final/Details/Card.dart';
import 'package:proyecto_final/Details/DataModels.dart';
import 'package:proyecto_final/Details/prueba.dart';
import 'package:proyecto_final/Details/utils/data_list.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var itemList = data;
  var listScrollController = ScrollController();
  var scrollDirection = ScrollDirection.idle;

  @override
  void initState() {
    super.initState();

    listScrollController.addListener(() {
      setState(() {
        scrollDirection = listScrollController.position.userScrollDirection;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  bool _scrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      setState(() {
        scrollDirection = ScrollDirection.idle;
      });
    }
    return true;
  }

  bool isListViewVisible = false;

  void toggleListViewVisibility() {
    setState(() {
      isListViewVisible = !isListViewVisible;
    });
  }

  bool selected = false;
  final ValueNotifier<bool> isSelected = ValueNotifier<bool>(false);

  void toggleSelected() {
    isSelected.value = !isSelected.value;
  }

  double screenHeight = 0;
  double screenWidth = 0;
  bool startAnimation = false;

  final imageUrls = [
    'https://images.pexels.com/photos/7031619/pexels-photo-7031619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/8143677/pexels-photo-8143677.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
        'https://images.pexels.com/photos/8082332/pexels-photo-8082332.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/14603496/pexels-photo-14603496.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3101547/pexels-photo-3101547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];

  List<String> title = [
    "Baño",
    "Dormitorio y lavadero",
    "Entretenimiento",
    "Familia",
    "Calefaccion y refrigeracion",
    "Internet y oficina",
    "Utensilios y vajilla",
    "Caracteristicas de la ubicacion",
    "Servicios",
  ];
  List<DateTime> selectedDates =
      []; // Lista para almacenar las fechas seleccionadas
  String buttonText = "Comprobar disponibilidad";
  bool showClearButton = false;

  showDateTimeRangePicker() async {
    List<DateTime>? dateTimeList = await showOmniDateTimeRangePicker(
      context: context,
      startInitialDate: DateTime.now(),
      startFirstDate: DateTime(2000).subtract(const Duration(days: 3652)),
      startLastDate: DateTime.now().add(
        const Duration(days: 3652),
      ),
      endInitialDate: DateTime.now(),
      endFirstDate: DateTime(1600).subtract(const Duration(days: 3652)),
      endLastDate: DateTime.now().add(
        const Duration(days: 3652),
      ),
      is24HourMode: false,
      isShowSeconds: false,
      minutesInterval: 1,
      secondsInterval: 1,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      constraints: const BoxConstraints(
        maxWidth: 350,
        maxHeight: 650,
      ),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1.drive(
            Tween(
              begin: 0,
              end: 1,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      selectableDayPredicate: (dateTime) {
        // Disable 25th Feb 2023
        if (dateTime == DateTime(2023, 2, 25)) {
          return false;
        } else {
          return true;
        }
      },
    );

    // Si se seleccionan fechas, actualiza la lista y el texto del botón

    if (dateTimeList != null) {
      setState(() {
        selectedDates = dateTimeList;
        buttonText = "Reservar";
        showClearButton = true;
      });
    }

    print("Fecha llegada: ${dateTimeList?[0]}");
    print("Fecha salida: ${dateTimeList?[1]}");
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios))
              ],
            ),
            Container(
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                      height: screenHeight * 0.4, viewportFraction: 1.0),
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = imageUrls[index];

                    return buildImage(urlImage, index);
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.3),
              child: Material(
                color: const Color(0xFFFF2F0F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 30.0, top: 30.0, right: 10.0, bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Condo entero en Noor, Aruba ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.book,
                            color: Colors.deepPurple,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text("2 huespedes"),
                          SizedBox(
                            width: 7,
                          ),
                          Text("•"),
                          SizedBox(
                            width: 7,
                          ),
                          Text("1 habitacion"),
                          SizedBox(
                            width: 7,
                          ),
                          Text("•"),
                          SizedBox(
                            width: 7,
                          ),
                          Text("1 cama"),
                          SizedBox(
                            width: 7,
                          ),
                          Text("•"),
                          SizedBox(
                            width: 7,
                          ),
                          Text("1 baño"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 15.0,
                              ),
                              Text("4.86",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "57 reseñas",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2.0),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              /*Icon(
                                Icons.room_service,
                                size: 15.0,
                              ),*/
                              Icon(
                                Icons.emoji_events,
                                size: 15.0,
                                color: Colors.deepPurpleAccent[200],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Superanfitrion"),

                              /*Icon(
                                Icons.home,
                                size: 15.0,
                              ),*/
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                          width: 450,
                          height: 390,
                          child: ListView.builder(
                            itemCount: listItems.length,
                            itemBuilder: (context, index) {
                              final item = listItems[index];

                              if (index == 0) {
                                // Agrega un GestureDetector solo al primer elemento
                                return GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          title: Text("Epa"),
                                          content: Container(
                                            width: 550,
                                            height: 750,
                                            child: ListView(
                                              children: const [
                                                Row(
                                                  children: [
                                                    Text(
                                                        "Acerca de este espacio",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      8.0), // Agrega espacios alrededor del texto si es necesario
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                        style: TextStyle(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                        "Otras cosas a destacar",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      8.0), // Agrega espacios alrededor del texto si es necesario
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                        style: TextStyle(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                        "Otras cosas a destacar",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      8.0), // Agrega espacios alrededor del texto si es necesario
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                        style: TextStyle(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "Cerrar",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ))
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: ListTile(
                                    leading: item.icon,
                                    title: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Text(
                                        item.text,
                                        style: item.textStyle,
                                      ),
                                    ),
                                    subtitle: Text(item.subtitle),
                                  ),
                                );
                              } else {
                                // Para los otros elementos, simplemente crea ListTile sin GestureDetector
                                return ListTile(
                                  leading: item.icon,
                                  title: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      item.text,
                                      style: item.textStyle,
                                    ),
                                  ),
                                  subtitle: Text(item.subtitle),
                                );
                              }
                            },
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        child: AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          title: const Text("Epa"),
                                          content: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Container(
                                              width: 550,
                                              height: 750,
                                              child: ListView(
                                                children: [
                                                  const Row(
                                                    children: [
                                                      Text(
                                                          "Acerca de este espacio",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.all(
                                                        8.0), // Agrega espacios alrededor del texto si es necesario
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                          style: TextStyle(),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text(
                                                          "Otras cosas a destacar",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.all(
                                                        8.0), // Agrega espacios alrededor del texto si es necesario
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                          style: TextStyle(),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text(
                                                          "Otras cosas a destacar",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .all(
                                                        8.0), // Agrega espacios alrededor del texto si es necesario
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "Cerrar",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ))
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Mostrar Mas",
                                      style: GoogleFonts.roboto(),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),

                      /*Container(
                          width: 450,
                          height: 200,
                          child: Column(
                            children: [
                              const Text(
                                "La vida está bien con la playa a la vista, y tiene sentido con esta unidad de estudio con balcón. Todo lo que necesitas en este espacio de diseño perfecto. Ubicado en el quinto piso, su vista será impresionante. Perfecto para una escapada en pareja. Zona de comedor, zona de cocina. escritorio donde se puede trabajar, cama cómoda, TV, WiFi, baño de buen tamaño, lavadora y secadora y … balcón con vistas. Todo lo que necesitas se ofrece en estos 482 pies cuadrados. La cocina está equipada con utensilios necesarios ",
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                child: AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0)),
                                                  title: const Text("Epa"),
                                                  content:
                                                      SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Container(
                                                      width: 550,
                                                      height: 750,
                                                      child: ListView(
                                                        children: const [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                  "Acerca de este espacio",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.all(
                                                                8.0), // Agrega espacios alrededor del texto si es necesario
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                                  style:
                                                                      TextStyle(),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                  "Otras cosas a destacar",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.all(
                                                                8.0), // Agrega espacios alrededor del texto si es necesario
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                                  style:
                                                                      TextStyle(),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                  "Otras cosas a destacar",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.all(
                                                                8.0), // Agrega espacios alrededor del texto si es necesario
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Life's alright with the beach in sight, and it makes sense with this studio unit with balcony. Just everything you need in this perfect designed space. Located on the 5th floor, your view will be breathtaking. Perfect for a couple getaway. Area for dining, area for cooking. desk where you can work, comfortable bed, TV, WiFi, nice size bathroom, washer and dryer and … balcony with the view. Everything you need is offered in this 482 sqft. Kitchen is equipped with necessary utensils and small",
                                                                  style:
                                                                      TextStyle(),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                          "Cerrar",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black),
                                                        ))
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: const SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Mostrar Mas",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.black),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Colors.black,
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              )
                            ],
                          )),*/

                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                CardUi(
                                  icon: Icon(Icons.car_rental),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Parqueadero',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                CardUi(
                                  icon: Icon(Icons.wifi),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Wifi',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                CardUi(
                                  icon: Icon(Icons.fastfood),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Cocina',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                CardUi(
                                  icon: Icon(Icons.table_restaurant_rounded),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Acceso a playa',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                CardUi(
                                  icon: Icon(Icons.car_rental),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Mantenimiento',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                CardUi(
                                  icon: Icon(Icons.beach_access),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Acceso a playa',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: 450,
                              height: 50,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return Container(
                                                    child: GestureDetector(
                                                      child: AlertDialog(
                                                        backgroundColor: Colors
                                                            .deepPurple[300],
                                                        //backgroundColor: Colors.deepPurpleAccent,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0)),
                                                        title: const Text(
                                                          "Lo que ofrece este sitio",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        content: SingleChildScrollView(
                                                          child: Container(
                                                            width: 550,
                                                            height: 750,
                                                            child:
                                                                const ListScreen(),
                                                          ),
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: const Text(
                                                                "Cerrar",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                "Mostrar mas",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              )
                                            ],
                                          )),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                      const Divider(
                        thickness: 5.0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 450,
                            height: 130,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                                /*BorderRadius.only(
                                    //topRight: Radius.circular(50),
                                    topRight: Radius.circular(50)),*/
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.deepPurple.withOpacity(1.0),
                                      blurRadius: 10)
                                ]),
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 20,
                                  top: 20,
                                  child: Text(
                                    "selecciona tus fechas de llegada y salida",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                ),
                                Positioned(
                                  left: 180,
                                  top: 50,
                                  child: InkWell(
                                    onTap: () {
                                      showDateTimeRangePicker();
                                    },
                                    child: Container(
                                      width: 150.0,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                offset: Offset(0.0, 10.0),
                                                blurRadius: 40.0,
                                                color: Colors.deepPurpleAccent)
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(22.0)),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            height: 60.0,
                                            width: 120.0,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12.0,
                                                horizontal: 12.0),
                                            decoration: BoxDecoration(
                                                color: Colors.deepPurple[300]!,
                                                borderRadius: const BorderRadius
                                                    .only(
                                                    bottomLeft:
                                                        Radius.circular(70.0),
                                                    topLeft:
                                                        Radius.circular(70.0),
                                                    bottomRight:
                                                        Radius.circular(
                                                            200.0))),
                                            child: const Text(
                                                "Seleccionar Fechas",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          const Icon(
                                            Icons.date_range,
                                            size: 25.0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15.0,
                              ),
                              Text("4.86",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              SizedBox(
                                width: 20,
                              ),
                              Text("58 reseñas")
                            ],
                          ),
                          Container(
                            height: 300,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: NotificationListener<ScrollNotification>(
                              onNotification: _scrollNotification,
                              child: ListView(
                                controller: listScrollController,
                                scrollDirection: Axis.horizontal,
                                children: data.map((item) {
                                  return AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    transform: Matrix4.rotationZ(
                                        scrollDirection ==
                                                ScrollDirection.forward
                                            ? 0.07
                                            : scrollDirection ==
                                                    ScrollDirection.reverse
                                                ? -0.07
                                                : 0),
                                    width: 200,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(16),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(item["color"] as int)
                                                  .withOpacity(0.6),
                                              offset: const Offset(-6, 4),
                                              blurRadius: 10)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            ClipOval(
                                              child: Image.asset(
                                                item["image"],
                                                height: 60,
                                                width: 90,
                                              ),
                                            ),
                                            const Text(
                                              "Carlos",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 16)),
                                        Text(
                                          item["title"],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: const Text("Mas comentarios"),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward))
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 450,
                            height: 330,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                                /*BorderRadius.only(
                                    bottomLeft: Radius.circular(50)),*/
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.deepPurple.withOpacity(1.0),
                                      blurRadius: 10)
                                ]),
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 15,
                                    left: 50,
                                    child: Text(
                                      "A donde iras?",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )),
                                Positioned(
                                    top: 50,
                                    left: 50,
                                    right: 50,
                                    child: Center(
                                      child: Container(
                                        height: 230,
                                        child: Image(
                                            image: NetworkImage(
                                                "https://lh3.googleusercontent.com/elkod1_gs1xEULXdT6fz8WewJVq0DSKT4fLgHI1HZQQTu1E7sqk_RrNo7DOJjDQuI7qB6Dc1C1AB4Q79rQMZUq3hF7uhof6UU4xl6jlG=w609")),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 5.0,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 450,
                        height: 350,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              width: selected ? 280.0 : 300.0,
                              height: selected ? 180.0 : 50.0,
                              top: selected ? 50.0 : 15.0,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastOutSlowIn,
                              child: GestureDetector(
                                onTap: () {
                                  if (!selected) {
                                    setState(() {
                                      selected = true;
                                    });
                                  }
                                  /*setState(() {
                                    selected = !selected;
                                  });*/
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(16),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.deepPurple
                                                  .withOpacity(0.6),
                                              offset: const Offset(-6, 4),
                                              blurRadius: 10)
                                        ]),
                                    child: selected
                                        ? Stack(
                                            children: [
                                              const Positioned(
                                                  top: 20,
                                                  left:
                                                      30, // Ajusta la posición izquierda según tus necesidades
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "\$ 123,123,123",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text("noche")
                                                    ],
                                                  )),
                                              const Positioned(
                                                top: 45,
                                                left:
                                                    30, // Ajusta la posición izquierda según tus necesidades
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 15.0,
                                                    ),
                                                    Text("4.86",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "57 reseñas",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationThickness:
                                                              2.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                top: 80,
                                                left: 30,
                                                child: InkWell(
                                                  onTap: () {
                                                    showDateTimeRangePicker();
                                                  },
                                                  child: Container(
                                                    width: 150.0,
                                                    decoration: BoxDecoration(
                                                        boxShadow: const [
                                                          BoxShadow(
                                                              offset: Offset(
                                                                  0.0, 20.0),
                                                              blurRadius: 30.0,
                                                              color:
                                                                  Colors.black)
                                                        ],
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    22.0)),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Container(
                                                          height: 60.0,
                                                          width: 120.0,
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical:
                                                                      12.0,
                                                                  horizontal:
                                                                      12.0),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                      .deepPurple[
                                                                  300]!,
                                                              borderRadius: const BorderRadius
                                                                  .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          70.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          70.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          200.0))),
                                                          child: Text(
                                                              buttonText,
                                                              style: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      13)),
                                                        ),
                                                        /*if (showClearButton)
                                                          ElevatedButton(
                                                            onPressed:
                                                                clearSelectedDates,
                                                            child: const Text(
                                                                "Borrar Fecha"),
                                                          ),
                                                        if (selectedDates !=
                                                            null)
                                                          Text(
                                                              "${selectedDates.toString()}"),*/
                                                        const Icon(
                                                          Icons.date_range,
                                                          size: 25.0,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        : const Icon(
                                            Icons.add_card,
                                            color: Colors.black,
                                          )),
                              ),
                            ),
                            SizedBox(
                              height: 200,
                            ),
                            /*Container(
                              child: GridView.count(
                                crossAxisCount:
                                    3, // Cantidad de columnas en el grid
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      color: Colors.red,
                                      child: Center(
                                        child: Text('Contenedor 1',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      color: Colors.blue,
                                      child: Center(
                                        child: Text('Contenedor 2',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      color: Colors.green,
                                      child: Center(
                                        child: Text('Contenedor 3',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget item(int index) {
    var screenWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      height: 55,
      width: screenWidth,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (index * 100)),
      transform:
          Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        width: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(urlImage), fit: BoxFit.cover)),
      );

  void clearSelectedDates() {
    setState(() {
      selectedDates.clear();
      buttonText = "Comprobar disponibilidad";
      showClearButton = false;
      // Restablece el texto del botón
    });
  }
}
