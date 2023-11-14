import 'package:flutter/material.dart';
import 'package:proyecto_final/models/CardsReservasModel.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import '../../../../generated/translations.g.dart';
import 'reserva_info_card.dart';

// Vista donde se llamaran las cards superiores de conteo de reservas y las organiza que se adapten a todos los dispositivos

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Translations.of(context).cards.dashboard,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: const FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);
    List ReservasInfoList = [
      ReservaInfoModel(
        title: texts.cards.myReservations,
        svgSrc: "assets/icons/reserva.svg",
        totalReservas: "13",
        color: primaryColor,
        percentage: 13,
      ),
      ReservaInfoModel(
        title: texts.cards.activeReservations,
        svgSrc: "assets/icons/check.svg",
        totalReservas: "6",
        color: Colors.green,
        percentage: 6,
      ),
      ReservaInfoModel(
        title: texts.cards.cancelledReservations,
        svgSrc: "assets/icons/cancel.svg",
        totalReservas: "4",
        color: Colors.red,
        percentage: 4,
      ),
      ReservaInfoModel(
        title: texts.cards.pendingReservations,
        svgSrc: "assets/icons/pendiente.svg",
        totalReservas: "3",
        color: const Color(0xFF007EE5),
        percentage: 3,
      ),
    ];
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ReservasInfoList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          FileInfoCard(info: ReservasInfoList[index]),
    );
  }
}
