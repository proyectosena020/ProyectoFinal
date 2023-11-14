import 'package:flutter/material.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class InferiorDetails extends StatefulWidget {
  const InferiorDetails({
    super.key,
  });

  @override
  State<InferiorDetails> createState() => _InferiorDetailsState();
}

class _InferiorDetailsState extends State<InferiorDetails> {
  double elevacion = 3;
  double elevacion2 = 3;
  double elevacion3 = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          if(Responsive.isDesktop(context) || Responsive.isTablet(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                onHover: (isHovered){
                  setState(() {
                    if (isHovered) {
                      elevacion = 9;
                    } else {
                      elevacion = 3;
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, elevacion),
                        ),
                      ]),
                  child: const Text(
                    "Reglas de la casa",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (isHovered){
                  setState(() {
                    if (isHovered) {
                      elevacion2 = 9;
                    } else {
                      elevacion2 = 3;
                    }
                  });                  
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, elevacion2),
                        ),
                      ]),
                  child: const Text(
                    "Seguridad y propiedad",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (isHovered) {
                  setState(() {
                    if (isHovered) {
                      elevacion3 = 9;
                    } else {
                      elevacion3 = 3;
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, elevacion3),
                        ),
                      ]),
                  child: const Text(
                    "Política de cancelación",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
          if(Responsive.isMobile(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (isHovered){
                  setState(() {
                    if (isHovered) {
                      elevacion = 9;
                    } else {
                      elevacion = 3;
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, elevacion),
                        ),
                      ]),
                  child: const Text(
                    "Reglas de la casa",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding,),
              InkWell(
                onTap: () {},
                onHover: (isHovered){
                  setState(() {
                    if (isHovered) {
                      elevacion2 = 9;
                    } else {
                      elevacion2 = 3;
                    }
                  });                  
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, elevacion2),
                        ),
                      ]),
                  child: const Text(
                    "Seguridad y propiedad",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding,),
              InkWell(
                onTap: () {},
                onHover: (isHovered) {
                  setState(() {
                    if (isHovered) {
                      elevacion3 = 9;
                    } else {
                      elevacion3 = 3;
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, elevacion3),
                        ),
                      ]),
                  child: const Text(
                    "Política de cancelación",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
