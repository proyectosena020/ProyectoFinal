import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/chatbotweb/chatBotWeb.dart';
import 'package:proyecto_final/details/components/comentarioDetails.dart';
import 'package:proyecto_final/details/components/imageDetails.dart';
import 'package:proyecto_final/details/components/mapaDetails.dart';
import 'package:proyecto_final/details/components/searchBar.dart';
import 'package:proyecto_final/details/components/titleDetails.dart';
import 'package:proyecto_final/details/screens/InferiorDetails.dart';
import 'package:proyecto_final/details/screens/leftDetails.dart';
import 'package:proyecto_final/details/screens/rightDetails.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:universal_platform/universal_platform.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  _DetailsPageState() {
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
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            const SizedBox(
              height: defaultPadding,
            ),
            const SearchHeader(),
            const SizedBox(
              height: defaultPadding,
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const TitleDetails(),
            const SizedBox(
              height: defaultPadding,
            ),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              const IconsMobile(),
            const SizedBox(
              height: defaultPadding,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const Column(
                  children: [
                    ImagesDetails(),
                  ],
                )),
            const ImageButton(),
            const SizedBox(
              height: defaultPadding,
            ),
            SafeArea(
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  const LeftDetails(),
                  if (Responsive.isDesktop(context))
                    const Expanded(flex: 1, child: RightDetails()),
                ],
              ),
            ),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              const Row(
                children: [
                  Expanded(flex: 1, child: RightDetails()),
                ],
              ),
            const SizedBox(
              height: defaultPadding,
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const ComentarioDetails(),
            const SizedBox(
              height: defaultPadding,
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const MapaDetails(),
            const SizedBox(
              height: defaultPadding,
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const InferiorDetails(),
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
        child: const Icon(Icons.support_agent),
      );
    } else if (UniversalPlatform.isWindows) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatBotWeb()),
          );
        },
        child: const Icon(Icons.support_agent),
      );
    } else {
      return null;
    }
  }

}
