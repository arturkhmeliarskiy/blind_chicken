import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CatalogScreenLoading extends StatelessWidget {
  const CatalogScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          BlindChickenLoading(
            height: 28,
            width: width * 0.4,
            borderRadius: BorderRadius.circular(5),
          ),
          SizedBox(
            height: 12,
          ),
          BlindChickenLoading(
            height: 28,
            width: width * 0.6,
            borderRadius: BorderRadius.circular(5),
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return BlindChickenLoading(
                  height: 35,
                  width: 80,
                  margin: EdgeInsets.only(right: 10.5),
                  borderRadius: BorderRadius.circular(5),
                );
              }),
            ),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlindChickenLoading(
                  height: 28,
                  width: 150,
                  borderRadius: BorderRadius.circular(5),
                ),
                BlindChickenLoading(
                  height: 28,
                  width: 100,
                  borderRadius: BorderRadius.circular(5),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              2,
              (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlindChickenLoading(
                      height: (width / 2 - 21) * 4 / 3,
                      width: width / 2 - 21,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    SizedBox(
                      width: width / 2 - 21,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              BlindChickenLoading(
                                height: 16,
                                width: (width / 2 - 21) * 0.6,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              BlindChickenLoading(
                                height: 16,
                                width: (width / 2 - 21) * 0.4,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              BlindChickenLoading(
                                height: 16,
                                width: (width / 2 - 21) * 0.4,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              SizedBox(
                                width: width / 2 - 21,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 6,
                                        ),
                                        BlindChickenLoading(
                                          height: 16,
                                          width: (width / 2 - 21) * 0.6,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        BlindChickenLoading(
                                          height: 16,
                                          width: (width / 2 - 21) * 0.6,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ],
                                    ),
                                    BlindChickenLoading(
                                      height: 32,
                                      width: 34,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: List.generate(
                                  5,
                                  (index) {
                                    return BlindChickenLoading(
                                      height: 16,
                                      width: 16,
                                      margin: EdgeInsets.only(right: 4),
                                      borderRadius: BorderRadius.circular(5),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
