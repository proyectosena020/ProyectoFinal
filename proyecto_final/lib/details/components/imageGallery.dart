import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:proyecto_final/models/ImageDetailsModels.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class ImageGallery extends StatelessWidget {
  const ImageGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
        ),
      ),
      body: Expanded(
          child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: MasonryGridView.count(
                crossAxisCount: Responsive.isMobile(context)?2:3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                itemCount: img2.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        img2[index],
                        fit: BoxFit.fill,
                        height: (index % 5 + 1) * 100,
                      ),
                    ),
                  );
                })),
      )),
    );
  }
}
