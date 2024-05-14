import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Pyramids extends StatefulWidget {
  const Pyramids({super.key});

  @override
  State<Pyramids> createState() => _ageebaState();
}

class _ageebaState extends State<Pyramids> {
  Future<void>? _launched;
  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch = Uri(
        scheme: 'https',
        host: 'egymonuments.gov.eg',
        path: '/monuments/the-great-pyramid/');
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 47,
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/nada-habashy-zruwsJh-lOI-unsplash.jpg",
                                  ),
                                  fit: BoxFit.cover)),
                          width: 341,
                          height: 363,
                        ),
                        Positioned(
                          top: 15,
                          left: 24,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(40)),
                            height: 45.74,
                            width: 46.0,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 28,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 33,
                                ),
                                Text(
                                  "Giza, Egypt",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(fontSize: 19),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "The Great Pyramid",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "“The Great Pyramid, the tomb of King Khufu \n(c.2589–2566 BC), with its original height of 146.5 M,\n was the tallest structure in the world for 3,800 years“ ",
                              maxLines: 4,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Services in Pyramids",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 19),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/zeeyara-pyramids-elite.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(14)),
                                  height: 80,
                                  width: 68,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "zeeyara",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.restaurant,
                                                color: Colors.grey[600],
                                                size: 14,
                                              ),
                                              Text(
                                                "Resturant",
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontSize: 13),
                                              )
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                              color: Color.fromRGBO(
                                                  234, 232, 232, 0.759)),
                                          padding: EdgeInsets.all(5),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "/zeeyara");
                                          },
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 20,
                                          ),
                                          style: ButtonStyle(
                                              fixedSize:
                                                  MaterialStatePropertyAll(
                                                      Size(10, 10))),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                        Text(
                                          "Giza,Egypt",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star),
                                        Text("4.2"),
                                        Text(
                                          " |36 Reviews|",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 339,
                  right: 15,
                  child: ElevatedButton(
                    onPressed: () => setState(() {
                      _launched = _launchInBrowserView(toLaunch);
                    }),
                    style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.amber),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 255, 255, 255)),
                      shadowColor: MaterialStatePropertyAll(Colors.grey),
                      shape: MaterialStatePropertyAll(CircleBorder()),
                      iconSize: MaterialStatePropertyAll(50),
                      iconColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.info_rounded,
                        size: 50,
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}