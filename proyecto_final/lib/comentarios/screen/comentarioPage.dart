import "package:alan_voice/alan_voice.dart";
import "package:flutter/material.dart";
import "package:proyecto_final/chatbotweb/chatBotWeb.dart";
import "package:proyecto_final/comentarios/screen/comentarioCard.dart";
import "package:proyecto_final/comentarios/screen/comentarioCardTodo.dart";
import "package:proyecto_final/comentarios/screen/headerComentario.dart";
import "package:proyecto_final/generated/translations.g.dart";
import "package:proyecto_final/responsive.dart";
import "package:proyecto_final/theme/theme_constants.dart";
import "package:universal_platform/universal_platform.dart";

// Vista que contendra todos los componentes los cuales conformaran la vista de comentarios.

class ComentarioPage extends StatefulWidget {
  const ComentarioPage({super.key});

  @override
  State<ComentarioPage> createState() => _ComentarioPageState();
}

class _ComentarioPageState extends State<ComentarioPage> {
  _ComentarioPageState() {
    if (!UniversalPlatform.isWeb) {
      /// Init Alan Button with project key from Alan AI Studio
      AlanVoice.addButton(
          "257726fb1e303ccaf96867d4b3de54d42e956eca572e1d8b807a3e2338fdd0dc/stage",
          buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);

      /// Handle commands from Alan AI Studio
      AlanVoice.onCommand.add((command) {
        debugPrint("got new command ${command.toString()}");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: defaultPadding),
            const HeaderComentario(),
            const SizedBox(height: defaultPadding),
            Text(
              texts.comments.commentsUno,
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
                    texts.comments.myComments,
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
                    texts.comments.allCommets,
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
      floatingActionButton: _getFloating(),
    );
  }

  _getFloating() {
    if (UniversalPlatform.isWeb) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatBotWeb()),
          );
        },
        child: Icon(Icons.support_agent),
      );
    } else if (UniversalPlatform.isWindows) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatBotWeb()),
          );
        },
        child: Icon(Icons.support_agent),
      );
    } else {
      return null;
    }
  }
}
