import "package:alan_voice/alan_voice.dart";
import "package:flutter/material.dart";
import "package:proyecto_final/categories/screens/categoryCard.dart";
import "package:proyecto_final/categories/screens/headerCategory.dart";
import "package:proyecto_final/chatbotweb/chatBotWeb.dart";
import "package:proyecto_final/models/CategoriaModel.dart";
import "package:proyecto_final/theme/theme_constants.dart";
import "package:universal_platform/universal_platform.dart";

import "../../generated/translations.g.dart";

// Vista que contendra todos los componentes los cuales conformaran la vista de categorías.

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  _CategoryPageState(){
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
    final texts = Translations.of(context);
    List CategoriaList = [
      CategoriaModel(
          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/fc/c6/ba/briceno-18-campo-de-golf.jpg?w=1200&h=1200&s=1",
          texts.categoriesOne.category.golfCourses
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/77e686aa-5331-4ef5-8af8-60056bbf3dcd.jpg?im_w=1200",
          texts.categoriesOne.category.cabins
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/miso/Hosting-50545526/original/af14ce0b-481e-41be-88d1-b84758f578e5.jpeg?im_w=960",
          texts.categoriesOne.category.inTheArctic
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/miso/Hosting-839082319949828593/original/b239acdd-8dbf-403e-bad4-fa8e05b94b44.jpeg?im_w=960",
          texts.categoriesOne.category.camps
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/miso/Hosting-696318029797058361/original/45b7a9c4-9da0-44a2-bc7f-f359bc2f2217.jpeg?im_w=1200",
          texts.categoriesOne.category.nationalParks
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/miso/Hosting-10989371/original/46c0c87f-d9bc-443c-9b64-24d9e594b54c.jpeg?im_w=960",
          texts.categoriesOne.category.bedrooms
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/prohost-api/Hosting-51209430/original/c2482da0-beee-4144-9fe9-931f6d8d4d04.jpeg?im_w=960",
          texts.categoriesOne.category.swimmingPools
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/72dd3f65-63da-4a3d-b64f-f7139edac838.jpg?im_w=960",
          texts.categoriesOne.category.cupulas
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/miso/Hosting-42740730/original/14aa5fb2-d5eb-48b1-945b-cbbef3ed8239.jpeg?im_w=1200",
          texts.categoriesOne.category.ruralHouses
      ),
      CategoriaModel(
          "https://a0.muscache.com/im/pictures/82c577ee-3422-4fda-ae09-6716d76e8bef.jpg?im_w=1200",
          texts.categoriesOne.category.impressive
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: defaultPadding),
            const HeaderCategory(),
            const SizedBox(height: defaultPadding),
            Text(
              texts.categoriesOne.categories,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 40),
            ),
            const SizedBox(height: defaultPadding),
            ElevatedButton(
              onPressed: () {},
              child: Text(texts.categoriesOne.category.addCategory),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              child: Column(
                children: [
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: CategoriaList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CategoryCard(categoria: CategoriaList[index],);
                      }),
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
