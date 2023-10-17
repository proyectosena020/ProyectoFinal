import "package:flutter/material.dart";
import "package:proyecto_final/comentarios/screen/comentarioCard.dart";
import "package:proyecto_final/comentarios/screen/comentarioCardTodo.dart";
import "package:proyecto_final/comentarios/screen/headerComentario.dart";
import "package:proyecto_final/responsive.dart";
import "package:proyecto_final/theme/theme_constants.dart";

// Vista que contendra todos los componentes los cuales conformaran la vista de comentarios.

class ComentarioPage extends StatefulWidget {
  const ComentarioPage({super.key});

  @override
  State<ComentarioPage> createState() => _ComentarioPageState();
}

class _ComentarioPageState extends State<ComentarioPage> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: defaultPadding),
            const HeaderComentario(),
            const SizedBox(height: defaultPadding),
            Text(
              "Comentarios",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 40),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: isDark ? secondaryColor : const Color(0xFFFF2F0F2),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mis Comentarios",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  SizedBox(
                    height: 420,
                    width: 1300,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //Gridview para escritorio
                          if (Responsive.isDesktop(context))
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3),
                                scrollDirection: Axis.vertical,
                                itemCount: 16,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return const ComentarioCard();
                                }),
                          //Gridview para tablet
                          if (Responsive.isTablet(context))
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                scrollDirection: Axis.vertical,
                                itemCount: 16,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return const ComentarioCard();
                                }),
                          //Gridview para movil
                          if (Responsive.isMobile(context))
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1),
                                scrollDirection: Axis.vertical,
                                itemCount: 16,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return const ComentarioCard();
                                }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: isDark ? secondaryColor : const Color(0xFFFF2F0F2),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Todos los comentarios",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  SizedBox(
                    height: 420,
                    width: 1300,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //GridView para escritorio
                          if (Responsive.isDesktop(context))
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3),
                                scrollDirection: Axis.vertical,
                                itemCount: 16,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return const ComentarioCardTodo();
                                }),
                          //GridView para tablet
                          if (Responsive.isTablet(context))
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                scrollDirection: Axis.vertical,
                                itemCount: 16,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return const ComentarioCardTodo();
                                }),
                          //GridView para movil
                          if (Responsive.isMobile(context))
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1),
                                scrollDirection: Axis.vertical,
                                itemCount: 16,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return const ComentarioCardTodo();
                                }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
