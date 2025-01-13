import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class DoctorAppointmentCalendar extends StatefulWidget {
  const DoctorAppointmentCalendar({
    super.key,
    required this.onSelectDate,
    required this.selectDateTime,
  });

  final ValueChanged<DateTime> onSelectDate;
  final DateTime selectDateTime;

  @override
  State<DoctorAppointmentCalendar> createState() => _DoctorAppointmentCalendarState();
}

class _DoctorAppointmentCalendarState extends State<DoctorAppointmentCalendar> {
  final PageController _scrollController = PageController();
  final DateTime _dateTimeNow = DateTime.now();
  DateTime _dateTimeNowMonth = DateTime(0);
  DateTime _selectDate = DateTime.now();

  @override
  void initState() {
    _selectDate = DateTime(
      _dateTimeNow.year,
      _dateTimeNow.month,
      _dateTimeNow.day,
      widget.selectDateTime.hour,
      widget.selectDateTime.minute,
    );
    _dateTimeNowMonth = DateTime(_dateTimeNow.year, _dateTimeNow.month + 1, 1);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          constraints: const BoxConstraints(
            maxHeight: 210,
            minHeight: 182,
            maxWidth: 300,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () async {
                  if ((_scrollController.page?.toInt() ?? 0) != 0) {
                    await _scrollController.animateToPage(
                      (_scrollController.page?.toInt() ?? 0) - 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: SvgPicture.asset(
                  'assets/icons/chevron-left.svg',
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _scrollController,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    _dateTimeNowMonth = DateTime(_dateTimeNow.year, _dateTimeNow.month + index, 1);
                    int day = DateTime(_dateTimeNow.year, _dateTimeNow.month + 1 + index, 0).day;
                    return SizedBox(
                      width: 202,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ConstatntsInfo().monthsDA[_dateTimeNow.month - 1 + index],
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(7, (indexWeekDay) {
                              return Container(
                                width: 30,
                                height: 26,
                                alignment: Alignment.center,
                                child: Text(
                                  ConstatntsInfo().weekdayShrot[indexWeekDay],
                                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                        color: BlindChickenColors.weekdayColorCalendar,
                                      ),
                                ),
                              );
                            }),
                          ),
                          Expanded(
                            child: SizedBox(
                                width: 210,
                                child: Wrap(
                                  children: List.generate(day + (_dateTimeNowMonth.weekday - 1),
                                      (indexCalendarItem) {
                                    final _dateTime = DateTime(
                                        _dateTimeNow.year,
                                        _dateTimeNow.month + index,
                                        indexCalendarItem - (_dateTimeNowMonth.weekday - 2));
                                    return GestureDetector(
                                      onTap: () {
                                        if (_dateTimeNow.isBefore(
                                              DateTime(
                                                  _dateTimeNow.year,
                                                  _dateTimeNow.month + index,
                                                  indexCalendarItem -
                                                      (_dateTimeNowMonth.weekday - 3)),
                                            ) &&
                                            (_dateTimeNowMonth.weekday - 1) <= indexCalendarItem) {
                                          setState(() {
                                            _selectDate = DateTime(
                                              _dateTimeNow.year,
                                              _dateTimeNow.month +
                                                  (_scrollController.page?.toInt() ?? 0),
                                              indexCalendarItem - (_dateTimeNowMonth.weekday - 2),
                                              widget.selectDateTime.hour,
                                              widget.selectDateTime.minute,
                                            );
                                          });

                                          widget.onSelectDate(_selectDate);
                                        }
                                      },
                                      child: Container(
                                        height: 26,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: _selectDate.year == _dateTime.year &&
                                                    _selectDate.month == _dateTime.month &&
                                                    _selectDate.day == _dateTime.day
                                                ? BlindChickenColors.activeBorderTextField
                                                : null,
                                            border: Border.all(
                                              color: BlindChickenColors.borderSwitchCard,
                                            )),
                                        alignment: Alignment.center,
                                        child: (_dateTimeNowMonth.weekday - 1) <= indexCalendarItem
                                            ? Text(
                                                (indexCalendarItem -
                                                        (_dateTimeNowMonth.weekday - 2))
                                                    .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      color: _dateTimeNow.isBefore(
                                                        DateTime(
                                                          _dateTimeNow.year,
                                                          _dateTimeNow.month + index,
                                                          indexCalendarItem -
                                                              (_dateTimeNowMonth.weekday - 3),
                                                        ),
                                                      )
                                                          ? _selectDate.year == _dateTime.year &&
                                                                  _selectDate.month ==
                                                                      _dateTime.month &&
                                                                  _selectDate.day == _dateTime.day
                                                              ? BlindChickenColors.backgroundColor
                                                              : null
                                                          : BlindChickenColors.removeFilter,
                                                    ),
                                              )
                                            : const SizedBox(),
                                      ),
                                    );
                                  }),
                                )),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if ((_scrollController.page?.toInt() ?? 0) < 2) {
                    await _scrollController.animateToPage(
                      (_scrollController.page?.toInt() ?? 0) + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: SvgPicture.asset(
                  'assets/icons/chevron-right.svg',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
