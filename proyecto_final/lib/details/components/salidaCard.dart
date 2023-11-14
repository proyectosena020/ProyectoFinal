import 'package:flutter/material.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:table_calendar/table_calendar.dart';

class SalidaCard extends StatefulWidget {
  const SalidaCard({super.key});

  @override
  State<SalidaCard> createState() => _SalidaCardState();
}

class _SalidaCardState extends State<SalidaCard> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: defaultPadding,
            ),
            Center(
                  child: Text(
                    "Fecha Salida",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
            const SizedBox(
              height: defaultPadding,
            ),
            TableCalendar(
              locale: 'en_US',
              rowHeight: 43,
              calendarStyle: const CalendarStyle(
                rangeHighlightColor: primaryColor,
                todayDecoration:
                    BoxDecoration(color: primaryColor, shape: BoxShape.circle),
                selectedDecoration:
                    BoxDecoration(color: primaryColor, shape: BoxShape.circle),
              ),
              headerStyle: const HeaderStyle(
                  formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(1910, 01, 01),
              lastDay: DateTime.utc(2100, 01, 01),
              onDaySelected: _onDaySelected,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}