import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/models/UsuariosModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

// Tabla de todos los usuarios del aplicativo

class ListaUsuario extends StatelessWidget {
  const ListaUsuario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);

    List UsuariosList = [
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "Administrador, Anfitrion",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
      UsuariosModel(
        icon: "assets/icons/persona.svg",
        nombre: "Hernan Cubillos",
        correo: "henanc2023@gmail.com",
        rol: "${texts.listUser.admin}, ${texts.listUser.host}",
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: isDark ? secondaryColor : const Color(0xFFFF2F0F2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texts.listUser.allUsers,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: InteractiveViewer(
              scaleEnabled: false,
              constrained: false,
              child: DataTable(
                columnSpacing: defaultPadding,
                // minWidth: 600,
                columns: [
                  DataColumn(
                    label: Text(texts.listUser.name),
                  ),
                  DataColumn(
                    label: Text(texts.listUser.email),
                  ),
                  DataColumn(
                    label: Text(texts.listUser.rol),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                ],
                rows: List.generate(
                  UsuariosList.length,
                  (index) => UsuariosDataRow(UsuariosList[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow UsuariosDataRow(UsuariosModel usuariosInfo, BuildContext context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;
  final texts = Translations.of(context);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              usuariosInfo.icon!,
              height: 30,
              width: 30,
              color: Colors.deepPurple,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(usuariosInfo.nombre!),
            ),
          ],
        ),
      ),
      DataCell(Text(usuariosInfo.correo!)),
      DataCell(Text(usuariosInfo.rol!)),
      DataCell(ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: Text(texts.myActiveReservations.toSee),
      )),
      DataCell(ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: Text(texts.myActiveReservations.toUpdate),
      )),
      DataCell(ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: Text(texts.delete),
      )),
      DataCell(IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/pdf.svg",
            color: isDark ? Colors.white : primaryColor,
            width: 20,
            height: 20,
          ))),
    ],
  );
}
