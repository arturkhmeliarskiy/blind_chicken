import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blind_chicken/screens/vision_warning/widgets/doctor_appointment_calendar.dart';
import 'package:blind_chicken/screens/vision_warning/widgets/doctor_appointment_edit_delivery_info.dart';
import 'package:blind_chicken/screens/vision_warning/widgets/doctor_appointment_time.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class DoctorAppointmentScreen extends StatefulWidget {
  const DoctorAppointmentScreen({super.key});

  @override
  State<DoctorAppointmentScreen> createState() => _DoctorAppointmentScreenState();
}

class _DoctorAppointmentScreenState extends State<DoctorAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AppointmentBloc, AppointmentState>(listener: (context, state) {
      state.maybeMap(
          authorization: (value) {
            context.read<LoginBloc>().add(const LoginEvent.init());
            showDialog(
                context: context,
                builder: (context) {
                  return LoginPhoneScreen(
                    successfully: () {
                      Navigator.of(context, rootNavigator: true).pop();
                      context
                          .read<AppointmentBloc>()
                          .add(const AppointmentEvent.createDoctorAppointment());
                    },
                    onBack: () {
                      context.maybePop();
                    },
                  );
                });
          },
          recordCreatedSuccessfully: (value) {
            context.navigateTo(VisionWarningRoute(
              name: value.name,
              date: value.date,
              time: value.time,
            ));
          },
          orElse: () {});
    }, child: Scaffold(
      body: BlocBuilder<AppointmentBloc, AppointmentState>(builder: (context, state) {
        return state.maybeMap(
          preloadDataCompleted: (initState) {
            return SafeArea(
              child: ListView(
                padding: const EdgeInsets.only(left: 32, right: 32),
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Запись на проверку зрения',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.navigateTo(VisionWarningRoute());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: SvgPicture.asset(
                            'assets/icons/x.svg',
                            height: 28,
                            width: 28,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    'Выберите бутик:',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 10.5,
                  ),
                  DoctorAppointmentEditDeliveryInfo(
                    mapPoint: initState.selectBoutique,
                    onEditAddress: () {
                      context.navigateTo(
                        GiftYandexMapRoute(
                          onMapPoint: (value) {
                            context.read<AppointmentBloc>().add(
                                  AppointmentEvent.selectBoutique(selectBoutique: value),
                                );
                          },
                          point: initState.selectBoutique,
                          route: const DoctorAppointmentRoute(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    'Выберите дату:',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  DoctorAppointmentCalendar(
                    selectDateTime: initState.selectDateTime,
                    onSelectDate: (date) {
                      context.read<AppointmentBloc>().add(
                            AppointmentEvent.selectDateTime(selectDateTime: date),
                          );
                    },
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Выберите время:',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 10.5,
                  ),
                  if (initState.time.isNotEmpty)
                    DoctorAppointmentTime(
                      onUpdateTime: (time) {
                        context.read<AppointmentBloc>().add(
                              AppointmentEvent.selectTime(selectTime: time),
                            );
                      },
                      time: initState.time,
                      selectedDateTime: initState.selectDateTime,
                    )
                  else
                    Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'На сегодня запись завершена. Пожалуйста, выберите другую дату.',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.removeFilter,
                              ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.navigateTo(VisionWarningRoute());
                        },
                        child: Container(
                          height: 44,
                          width: 82,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: BlindChickenColors.activeBorderTextField,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Отмена',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (initState.time.isNotEmpty) {
                            context
                                .read<AppointmentBloc>()
                                .add(const AppointmentEvent.createDoctorAppointment());
                          }
                        },
                        child: Container(
                          height: 44,
                          width: 167,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: initState.time.isNotEmpty
                                ? BlindChickenColors.activeBorderTextField
                                : BlindChickenColors.borderInput,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Подтвердить запись',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: BlindChickenColors.backgroundColor,
                                ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          load: (value) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.grey.shade400,
              ),
            );
          },
          orElse: () => const SizedBox(),
        );
      }),
    ));
  }
}
