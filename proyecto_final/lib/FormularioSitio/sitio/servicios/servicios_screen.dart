import 'package:flutter/material.dart';
import 'package:proyecto_final/FormularioSitio/sitio/data/ServicioModel.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:translator/translator.dart';

// Widget para mostrar y seleccionar servicios
class Servicios extends StatefulWidget {
  final List<String> nombreServicio;

  final List<String> iconoServicio;

  final List<String> descipcionServicio;

  const Servicios(
      {super.key,
      required this.nombreServicio,
      required this.iconoServicio,
      required this.descipcionServicio});

  @override
  State<Servicios> createState() => _ServiciosState();
}

class _ServiciosState extends State<Servicios> {
  GoogleTranslator translator = GoogleTranslator();

  Future<String> traduccionVariables(BuildContext context, String text) async {
    if (TranslationProvider.of(context).locale.languageCode == 'en') {
      var output = await translator.translate(text, to: "en");
      return output.text;
    } else {
      var output = await translator.translate(text, to: "es");
      return output.text;
    }
  }

  @override
  void initState() {
    super.initState();

    // Inicializa el estado de isSelected en false para todos los servicios
    for (var s = 0; s < servicio.length; s++) {
      setState(() {
        servicio[s].isSelected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, responsive) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Títulos y descripción
              Text(
                texts.serviciosScreen.select,
                style: const TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'JosefinSans-SemiBold'),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                texts.serviciosScreen.description,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'JosefinSans-SemiBold'),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // Grid de servicios
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Responsive.isMobile(context) ? 1 : 2),
                    itemCount: servicio.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Cambiar el estado isSelected al hacer clic en un servicio
                          setState(() {
                            servicio[index].isSelected =
                                !servicio[index].isSelected;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Container(
                            height: 260,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: servicio[index].isSelected == true
                                        ? const Color(0xFFAD974F)
                                        : Colors.transparent,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]),
                            child: Stack(
                              children: [
                                Center(
                                  child: Positioned(
                                    top: 5,
                                    left: 10,
                                    right: 10,
                                    child: Image(
                                      image: AssetImage(servicio[index].icono),
                                      width: 170,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 5,
                                    right: 5,
                                    left: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFAD974F),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: ListTile(
                                        title: FutureBuilder<String>(
                                          future: traduccionVariables(
                                              context, servicio[index].name),
                                          builder: (context, snapshot) {
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return const CircularProgressIndicator();
                                            } else if (snapshot.hasError) {
                                              return Text(
                                                  'Error: ${snapshot.error}');
                                            } else {
                                              return Text(
                                                snapshot.data!,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily:
                                                        'JosefinSans-SemiBold'),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: defaultPadding,
              ),
              // Botón para guardar servicios seleccionados
              Expanded(
                flex: -1,
                child: ElevatedButton(
                  onPressed: () async {
                    // Guardar servicios seleccionados en las listas correspondientes
                    setState(() {
                      for (var v in servicio) {
                        if (v.isSelected == true) {
                          widget.nombreServicio.add(v.name);
                          widget.iconoServicio.add(v.icono);
                          widget.descipcionServicio.add(v.descripcion);
                        }
                      }
                    });
                  },
                  child: Text(texts.serviciosScreen.save),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
