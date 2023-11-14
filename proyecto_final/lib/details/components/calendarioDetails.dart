
import 'package:flutter/material.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarioDetails extends StatefulWidget {
  const CalendarioDetails({
    super.key,
  });

  @override
  State<CalendarioDetails> createState() => _CalendarioDetailsState();
}

class _CalendarioDetailsState extends State<CalendarioDetails> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Disponibilidad",
          style: Theme.of(context).textTheme.titleLarge,
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
            selectedDecoration: BoxDecoration(color: primaryColor, shape: BoxShape.circle),
          ),
          headerStyle: const HeaderStyle(
              formatButtonVisible: false, titleCentered: true),
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (day) => isSameDay(day, today),
          focusedDay: today,
          firstDay: DateTime.utc(1910, 01, 01),
          lastDay: DateTime.utc(2100, 01, 01),
          onDaySelected: _onDaySelected,
        )
      ],
    );
  }
}
