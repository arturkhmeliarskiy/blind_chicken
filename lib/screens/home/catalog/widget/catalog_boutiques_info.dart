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
              style: Theme.of(context).textTheme.displayMedium,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isOpen = !_isOpen;
                });
              },
              child: Stack(
                children: [
                  Text(
                    '2 бутиках',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          decoration: TextDecoration.underline,
                          height: 1,
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
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.listBoutiques[index]['address'],
                          style: Theme.of(context).textTheme.displayMedium,
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
                          style: Theme.of(context).textTheme.displaySmall,
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
