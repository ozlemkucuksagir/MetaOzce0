import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Style/Style.dart';
import 'package:meta_ozce_0/models/otel_model.dart';
//import 'package:meta_ozce/Style/Style.dart';
import 'package:meta_ozce_0/widgets/app_buttons.dart';
import 'package:meta_ozce_0/widgets/responsive_button.dart';

class OtelDetailPage extends StatefulWidget {
  final Otel otel_;

  const OtelDetailPage({required this.otel_});

  @override
  _OtelDetailPageState createState() => _OtelDetailPageState();
}

class _OtelDetailPageState extends State<OtelDetailPage> {
  int selectedIndex = -1;
  @override
  final _firestore = FirebaseFirestore.instance;

  Widget build(BuildContext context) {
    CollectionReference hotelsRef = _firestore.collection('hotels');
    int gottenStars = widget.otel_.rating;

    return Scaffold(
      appBar: AppBar(
        title: Text('META OZCE'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 7,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 240, //bunu expanded yapsam iyi olur
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('${widget.otel_.imageUrl}'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 210,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: '${widget.otel_.name}',
                          color: Colors.black.withOpacity(0.8),
                        ),
                        AppColorText(
                          text: '${widget.otel_.price}',
                          size: 25,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            color: Theme.of(context).primaryColor),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText(
                            text:
                                '${widget.otel_.country}, ${widget.otel_.city}')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStars
                                    ? Colors.yellow
                                    : Colors.black12,
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(text: '(${widget.otel_.rating}.0)'),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    AppLargeText(
                        text: 'Kişiler',
                        color: Colors.black.withOpacity(0.8),
                        size: 20),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(text: 'Grubunuzdaki kişi sayısı'),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 50,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey.shade200,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey.shade200,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: 'Açıklama',
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                      text:
                          'Quick question: When was the last time you purchased something online? Yesterday? This morning? Ok, cool.',
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  FavoriteButton(
                    isFavorite: false,
                    // iconDisabledColor: Colors.white,
                    valueChanged: (_isFavorite) {
                      _isFavorite
                          ? print('Is Favorite : $_isFavorite dogru1')
                          : print('Is Favorite : $_isFavorite yanlıs2');
                    },
                  ),
                  // AppButtons(
                  //   size: 60,
                  //   color: Colors.black54,
                  //   backgroundColor: Colors.white,
                  //   borderColor: Colors.black54,
                  //   isIcon: true,
                  //   icon: Icons.favorite_border,
                  // ),
                  const SizedBox(
                    width: 60,
                  ),
                  ResponsiveButton(
                    isResponsive:
                        true, //active edilcek video kesiliyo 2.50.00 gibi bi yerde
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
