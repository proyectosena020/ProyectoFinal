import "package:flutter/material.dart";
import "package:proyecto_final/categories/screens/categoryCard.dart";
import "package:proyecto_final/categories/screens/headerCategory.dart";
import "package:proyecto_final/theme/theme_constants.dart";

// Vista que contendra todos los componentes los cuales conformaran la vista de categorías.

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: defaultPadding),
            const HeaderCategory(),
            const SizedBox(height: defaultPadding),
            Text(
              "Categorías",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 40),
            ),
            const SizedBox(height: defaultPadding),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Añadir Categoría"),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              child: Column(
                children: [
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 16,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const CategoryCard();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
