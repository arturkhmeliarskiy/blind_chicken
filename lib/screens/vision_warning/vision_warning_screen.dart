import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/vision_warning/widgets/doctor_appointment_create_record.dart';
import 'package:blocs/blocs.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class VisionWarningScreen extends StatefulWidget {
  const VisionWarningScreen({
    super.key,
    this.name,
    this.date,
    this.time,
  });

  final String? name;
  final String? date;
  final String? time;

  @override
  State<VisionWarningScreen> createState() => _VisionWarningScreenState();
}

class _VisionWarningScreenState extends State<VisionWarningScreen> {
  final ScrollController _scrollController = ScrollController();
  bool isButtonTop = false;
  double _historyPosition = 0.0;

  @override
  void initState() {
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant VisionWarningScreen oldWidget) {
    if (widget.name?.isNotEmpty ?? false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(
          context: context,
          builder: (context) {
            return DoctorAppointmentCreateRecord(
              name: widget.name ?? '',
              date: widget.date ?? '',
              time: widget.time ?? '',
            );
          },
        );
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        isButtonTop = true;
      });
    } else {
      setState(() {
        isButtonTop = false;
      });
    }
    _historyPosition = _scrollController.position.pixels;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Scaffold(
          backgroundColor: BlindChickenColors.backgroundColor,
          body: SafeArea(
            child: ListView(
              controller: _scrollController,
              children: [
                const AppBarBlindChicken(),
                const SizedBox(
                  height: 17.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.5,
                    right: 10.5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Предупреждение зрения',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 44.5,
                          right: 44.5,
                        ),
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl:
                              'https://slepayakurica.ru/local/templates/m/content/vision/220524/w.jpg',
                          placeholder: (context, url) => SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 21,
                            height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                            child: const LoadingImage(),
                          ),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            context
                                .read<AppointmentBloc>()
                                .add(const AppointmentEvent.preloadData());
                            context.navigateTo(const DoctorAppointmentRoute());
                          },
                          child: Container(
                            height: 44,
                            decoration: BoxDecoration(
                              color: BlindChickenColors.activeBorderTextField,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.all(
                              14,
                            ),
                            child: Text(
                              'Записаться на проверку зрения',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    color: BlindChickenColors.backgroundColor,
                                    height: 1,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Text(
                        'Профессиональная проверка зрения',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/check.svg',
                            color: BlindChickenColors.activeBorderTextField,
                            height: 14,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Опытные врачи',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/check.svg',
                            color: BlindChickenColors.activeBorderTextField,
                            height: 14,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Инновационное оборудование',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/check.svg',
                            color: BlindChickenColors.activeBorderTextField,
                            height: 14,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'В удобное для вас время',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/check.svg',
                            color: BlindChickenColors.activeBorderTextField,
                            height: 14,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Консультация бесплатно',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Text(
                        'Запишитесь на диагностику зрения в Слепой курице',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      GestureDetector(
                        onTap: () async {
                          await LaunchService.makePhoneCall('8 (800) 500-53-29');
                        },
                        child: Text(
                          '8 (800) 500-53-29',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      GestureDetector(
                        onTap: () async {
                          await LaunchService.launchWhatsapp(context, '79093335046');
                        },
                        child: Text(
                          'WhatsApp',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isButtonTop)
          GestureDetector(
            onTap: () {
              _scrollController.jumpTo(0.0);
              setState(() {
                isButtonTop = false;
              });
            },
            child: Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.only(left: 15, bottom: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: BlindChickenColors.activeBorderTextField,
                borderRadius: BorderRadius.circular(25),
              ),
              child: SvgPicture.asset(
                'assets/icons/chevron-top.svg',
              ),
            ),
          )
        else
          const SizedBox()
      ],
    );
  }
}
