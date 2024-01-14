import 'package:flutter/material.dart';

class CatalogBoutiquesInfo extends StatefulWidget {
  const CatalogBoutiquesInfo({
    super.key,
    required this.listBoutiques,
  });

  final List<Map> listBoutiques;

  @override
  State<CatalogBoutiquesInfo> createState() => _CatalogBoutiquesInfoState();
}

class _CatalogBoutiquesInfoState extends State<CatalogBoutiquesInfo> {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'В наличии в ',
              style: Theme.of(context).textTheme.headline2,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isOpen = !_isOpen;
                });
              },
              child: SizedBox(
                width: 68,
                child: Stack(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '2 ',
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontWeight: FontWeight.w700,
                              height: 1,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'бутиках',
                              style: Theme.of(context).textTheme.headline2?.copyWith(
                                    height: 1,
                                  )),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        if (_isOpen)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(widget.listBoutiques.length, (index) {
              return Container(
                height: 40,
                margin: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '-',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.listBoutiques[index]['address'],
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          widget.listBoutiques[index]['size'],
                          style: Theme.of(context).textTheme.headline3?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
          )
      ],
    );
  }
}
