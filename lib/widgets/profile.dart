import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.verticalPos,
  }) : super(key: key);

  final double verticalPos;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 37),
            decoration: BoxDecoration(
              color: const Color(0xFFFFDEDE),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Stack(
              children: [
                Center(child: buildHeader(context)),
                Opacity(
                  opacity: lerpDouble(0.0, 1.0,
                      verticalPos / MediaQuery.of(context).size.height)!,
                  // duration: const Duration(milliseconds: 300),
                  child: verticalPos > 250
                      ? Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 650,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              color: Colors.white),
                                          child: const Icon(
                                            Icons.search,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          "Издөө",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    buildUserAvatar(
                                      'assets/2.jpg',
                                      "Актан",
                                    ),
                                    buildUserAvatar(
                                      'assets/3.jpg',
                                      "Санчо",
                                    ),
                                    buildUserAvatar(
                                      'assets/4.jpg',
                                      "Дони",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.blueAccent.shade100,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            35,
                                          ),
                                          child: Image.asset(
                                            'assets/mbank.jpg',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "MБанк",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.purple),
                                            onPressed: () {},
                                            child:
                                                const Text("Тиркемени жүктөө"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.white,
                                  ),
                                  child: const Column(
                                    children: [
                                      ListTile(
                                        leading: Icon(
                                          Icons.credit_card,
                                          color: Colors.black87,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "Кызматтар үчүн акы төлөө",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.money_rounded,
                                          color: Colors.black87,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "Карыз алуу",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Chip(label: Text("4%")),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Icon(
                                          Icons.more_horiz,
                                          size: 30,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
        Container(
          height: 5,
          width: 50,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade800,
            borderRadius: BorderRadius.circular(35),
          ),
        )
      ],
    );
  }

  Widget buildUserAvatar(String image, String name) => Column(
        children: [
          CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage(
              image,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      );

  Row buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: "Салам",
            style: Theme.of(context).textTheme.headlineSmall,
            children: const [
              TextSpan(text: ' '),
              TextSpan(
                text: "Айбек",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: 75,
          height: 50,
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 25,
                  foregroundImage: AssetImage(
                    'assets/1.jpg',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.credit_card_outlined),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
