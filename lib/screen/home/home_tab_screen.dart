import 'package:flutter/material.dart';
import 'package:mech/common/color_extension.dart';
import 'package:mech/common_widget/category_button.dart';
import 'package:mech/common_widget/section_row.dart';
import 'package:mech/screen/home/category_filter_screen.dart';
import 'package:mech/screen/home/doctor_cell.dart';
import 'package:mech/screen/home/medical_shop/shop_list_screen.dart';
import 'package:mech/screen/home/medical_shop/profile_screen.dart';
import 'package:mech/screen/home/only_doctor_profile_screen.dart';
import 'package:mech/screen/home/shop_cell.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List categoryArr = [
    {"title": "Problema Cardiovascular", "img": "assets/img/heart.png"},
    {"title": "Problema Respiratório", "img": "assets/img/lung.png"},
    {"title": "Exames Sanguíneos", "img": "assets/img/sugar.png"},
  ];

  List adsArr = [
    {
      "img": "assets/img/ad_1.png",
    },
    {
      "img": "assets/img/ad_2.png",
    },
  ];

  List nearDoctorArr = [
    {
      "name": "Dr. Doom",
      "degree": "Místico Geral",
      "img": "assets/img/u2.png"
    },
    {
      "name": "Dr. Mistério",
      "degree": "Mágico Tecnológico",
      "img": "assets/img/u3.png"
    },
    
  ];

  List nearShopArr = [
    {
      "name": "Drogasil",
      "address": "Próximo",
      "img": "assets/img/s1.png"
    },
    {
      "name": "Drogaria São Paulo",
      "address": "Próximo",
      "img": "assets/img/s2.png"
    },
    {
      "name": "Pague Menos",
      "address": "Próximo",
      "img": "assets/img/s3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                itemBuilder: (context, index) {
                  var obj = categoryArr[index];

                  return CategoryButton(
                      title: obj["title"], icon: obj["img"], onPressed: () {
                        context.push(const CategoryFilterScreen());
                      });
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
                itemCount: categoryArr.length,
              ),
            ),
            SizedBox(
              // color: Colors.red,
              height: context.width * 0.5,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  itemBuilder: (context, index) {
                    var obj = adsArr[index];
                    return InkWell(
                      onTap: (){
                          
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 1)
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          child: Image.asset(
                            obj["img"],
                            width: context.width * 0.85,
                            height: context.width * 0.425,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 15,
                      ),
                  itemCount: adsArr.length),
            ),
            SectionRow(title: "Médicos próximos a você", onPressed: () {}),
            SizedBox(
              height: 220,
              child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DoctorCell(obj: nearDoctorArr[index] , onPressed: (){
                        context.push( const OnlyDoctorProfileScreen() );
                    });
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                  itemCount: nearDoctorArr.length),
            ),
            SectionRow(title: "Farmácias próximas a você", onPressed: () {
              context.push( const MedicalShopListScreen() );
            }),
            SizedBox(
              height: 220,
              child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ShopCell(
                        obj: nearShopArr[index], onPressed: () {
                          context.push(const MedicalShopProfileScreen());
                        });
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                  itemCount: nearShopArr.length),
            ),
          ],
        ),
      ),
    );
  }
}
