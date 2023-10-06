import 'package:flutter/material.dart';
import 'package:testproject/Utility/global_color.dart';
import 'package:testproject/Widgets/bottomnavbar.dart';
import 'package:testproject/modle/cardModle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:testproject/modle/salonModle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = 'طرابلس,الميناء,شمال لبنان';
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 664,
              width: 600,
              decoration: BoxDecoration(
                color: GlobalColors.mainColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Center(child: Image.asset("assets/images/makeupLogo.png")),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "احجزي موعدك الان بسهولة\nماذا تنتظرين! ابدأي رحلتك",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                        const SizedBox(width: 70),
                        Column(
                          children: [
                            Image.asset("assets/images/notification.png"),
                            const SizedBox(height: 15),
                            Image.asset("assets/images/Chat.png"),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 162,
                        enlargeCenterPage: true,
                        autoPlay: false,
                      ),
                      items: cardmodle.map((Modle card) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30, right: 20),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/sale.png",
                                              height: 70,
                                              width: 70,
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 60),
                                              child: Text(card.title,
                                                  style: const TextStyle(
                                                      fontFamily: 'Cairo',
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ),
                                            Text(card.subtitle,
                                                style: const TextStyle(
                                                    fontFamily: 'Cairo',
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 180, top: 10),
                                    child: Container(
                                        height: 41,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: GlobalColors.mainColor,
                                            borderRadius:
                                                BorderRadius.circular(38)),
                                        child: const Center(
                                          child: Text(
                                            "اطلب الان",
                                            style: TextStyle(
                                              fontFamily: "Cairo",
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset("assets/images/Location.png"),
                        ),
                        DropdownButton(
                          alignment: Alignment.center,
                          dropdownColor: GlobalColors.mainColor,
                          icon: Image.asset("assets/images/Back.png"),
                          value: selectedValue,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          underline: Container(),
                          items: [
                            'طرابلس,الميناء,شمال لبنان',
                            'طرابلس,الضم والفرز,شمال لبنان',
                            'الميناء,شمال لبنان'
                          ].map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontFamily: 'Cairo',
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 281,
                          height: 60,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: SizedBox(
                                  height: 20,
                                  //  width: 20,
                                  child: Image.asset(
                                    "assets/images/Search.png",
                                    color: GlobalColors.mainColor,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(37)),
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: const TextStyle(
                                  fontFamily: 'Cairo',
                                  color: Color.fromARGB(255, 154, 130, 130),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                              hintText: 'ابحث عن صالونك او منتجك المفضل...',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                              child: Image.asset("assets/images/Adjust.png")),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Text(
                            "الصالونات",
                            style: TextStyle(
                                fontFamily: 'Cario',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(34)),
                              child: Center(
                                  child: Text(
                                "مشاهدة الكل",
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 12,
                                  color: GlobalColors.mainColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ))),
                        )
                      ],
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                      
                        height: 230,
                        enlargeCenterPage: true,
                        autoPlay: false,
                        enableInfiniteScroll: false,
                        viewportFraction: 0.6,
                      ),
                      items: items.map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Stack(
                                                       
                                children: [
                              
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            child: Image.asset(
                                              item.salonphoto,
                                            fit:
                                            BoxFit.cover,width: double.infinity,height: 130,
                                      
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 50),
                                          child: Text(
                                            item.name,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'cairo',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top:100, left: 180),
                                    child: Center(
                                      child: Container(
                                        child: Image.asset(item.logophoto),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
