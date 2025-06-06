import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:mech/common/color_extension.dart';
import 'package:mech/screen/home/chat/chat_screen.dart';

class OnlyDoctorProfileScreen extends StatefulWidget {
  const OnlyDoctorProfileScreen({super.key});

  @override
  State<OnlyDoctorProfileScreen> createState() =>
      _OnlyDoctorProfileScreenState();
}

class _OnlyDoctorProfileScreenState extends State<OnlyDoctorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: TColor.primary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 8,
                    top: 80,
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 8,
                    top: 80,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 5))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Dr. Hans Chucrute",
                        style: TextStyle(
                          color: TColor.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Cardiologista",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IgnorePointer(
                            ignoring: true,
                            child: RatingStars(
                              value: 3,
                              onValueChanged: (v) {},
                              starCount: 5,
                              starSize: 10,
                              valueLabelColor: const Color(0xff9b9b9b),
                              valueLabelTextStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.0),
                              valueLabelRadius: 0,
                              maxValue: 5,
                              starSpacing: 2,
                              maxValueVisibility: true,
                              valueLabelVisibility: false,
                              animationDuration:
                                  const Duration(milliseconds: 1000),
                              valueLabelPadding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 8),
                              valueLabelMargin: const EdgeInsets.only(right: 8),
                              starOffColor: const Color(0xff7c7c7c),
                              starColor: const Color(0xffDE6732),
                            ),
                          ),
                          Text(
                            "(4.8)",
                            maxLines: 2,
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Text(
                              "28",
                              maxLines: 2,
                              style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              " Anos de Experiência",
                              maxLines: 2,
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "R\$850",
                              maxLines: 2,
                              style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              " Por Consulta",
                              maxLines: 2,
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: context.width * 0.18,
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/img/u1.jpg",
                                width: context.width * 0.18,
                                height: context.width * 0.18,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 15,
                          ),
                          itemCount: 4,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 4),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            offset: Offset(0, 1))
                      ]),
                  child: Image.asset(
                    "assets/img/u1.jpg",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 10)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Horário de funcionamento",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "Fechado temporariamente",
                              style: TextStyle(
                                color: Color(0xffDE8D8D),
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              " | ",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "Aberto ✓",
                              style: TextStyle(
                                color: Color(0xff3BB94F),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Seg-Sex ( 11:00 - 17:00)",
                          style: TextStyle(
                            color: TColor.unselect,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Serviços e Instalações",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                            "Leito Hospitalar",
                          style: TextStyle(
                            color: TColor.unselect,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "UTI",
                          style: TextStyle(
                            color: TColor.unselect,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Ambulância 24x7",
                          style: TextStyle(
                            color: TColor.unselect,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Veja Mais",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Address",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Rua do Hospital, 123, Universitário, Caruaru, 12345-678",
                            style: TextStyle(
                              color: TColor.unselect,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.phone,
                              size: 22,
                              color: TColor.primary,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Expanded(
                              child: Text(
                                "81 987654321",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: TColor.green,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: TColor.primary,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.video_call,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {
                                context.push(const ChatMessageScreen());
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF8A370),
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.message,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
