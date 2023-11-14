import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:proyecto_final/details/components/imageGallery.dart';
import 'package:proyecto_final/models/ImageDetailsModels.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(),
      TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImageGallery()),
            );
          },
          icon: const Icon(
            Icons.image,
            color: primaryColor,
          ),
          label: const Text(
            "Ver todas las fotos",
            style: TextStyle(color: primaryColor),
          )),
      Container(),
    ]);
  }
}

class ImagesDetails extends StatelessWidget {
  const ImagesDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: MasonryGridView.count(
              crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              itemCount: img1.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      img1[index],
                      fit: BoxFit.fill,
                      height: (index % 5 + 1) * 100,
                    ),
                  ),
                );
              })),
    ));
  }
}
