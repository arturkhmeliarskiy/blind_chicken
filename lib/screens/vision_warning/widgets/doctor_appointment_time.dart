import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class DoctorAppointmentTime extends StatefulWidget {
  const DoctorAppointmentTime({
    super.key,
    required this.time,
    required this.onUpdateTime,
  });

  final Map<int, List<DateTime>> time;
  final ValueChanged<DateTime> onUpdateTime;

  @override
  State<DoctorAppointmentTime> createState() => _DoctorAppointmentTimeState();
}

class _DoctorAppointmentTimeState extends State<DoctorAppointmentTime> {
  final PageController _scrollController = PageController();
  DateTime _selectedDateTime = DateTime(0);

  @override
  void initState() {
    _selectedDateTime = widget.time.values.first.first;
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
        SizedBox(
          height: 68,
          width: 300,
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
                    itemCount: widget.time.keys.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Wrap(
                          children: List.generate(widget.time[index]?.length ?? 0, (indexTime) {
                            final dateTime = widget.time[index]?[indexTime] ?? DateTime(0);
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedDateTime = dateTime;
                                });
                                widget.onUpdateTime(dateTime);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _selectedDateTime == dateTime
                                      ? BlindChickenColors.activeBorderTextField
                                      : null,
                                  border: Border.all(
                                    color: BlindChickenColors.borderSwitchCard,
                                  ),
                                ),
                                width: 54,
                                height: 27,
                                margin: const EdgeInsets.only(
                                  left: 3,
                                  right: 3,
                                  bottom: 6,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '${dateTime.hour}:${dateTime.minute.toString().length == 1 ? '0${dateTime.minute}' : dateTime.minute}',
                                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                        fontSize: 13,
                                        color: _selectedDateTime == dateTime
                                            ? BlindChickenColors.backgroundColor
                                            : BlindChickenColors.activeBorderTextField,
                                      ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    }),
              ),
              GestureDetector(
                onTap: () async {
                  if ((_scrollController.page?.toInt() ?? 0) < widget.time.keys.length - 1) {
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
