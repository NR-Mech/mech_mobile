import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:mech/common/color_extension.dart';

class MedicalShopProfileScreen extends StatefulWidget {
  const MedicalShopProfileScreen({super.key});

  @override
  State<MedicalShopProfileScreen> createState() =>
      _MedicalShopProfileScreenState();
}

class _MedicalShopProfileScreenState extends State<MedicalShopProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/img/bms1.png",
            width: context.width,
          ),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            margin: const EdgeInsets.only(
                left: 20, right: 20, top: 160, bottom: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 10)
                ]),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Farmácia",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "Rua Tanto Faz, Bairro Qualquer, Cidade X",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: TColor.secondaryText, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          "(4.2)",
                          maxLines: 2,
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "14",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  " Anos de experiência",
                                  style: TextStyle(
                                    color: TColor.secondaryText,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Text(
                                "250 ",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Reviews",
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  " Horário de funcionamento",
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
                                "Open ✓",
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
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Verificado por: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Receita Médica",
                            style: TextStyle(
                              color: TColor.unselect,
                              fontSize: 12,
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Serviços",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Entrega em domicílio",
                            style: TextStyle(
                              color: TColor.unselect,
                              fontSize: 12,
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Formas de Pagamento",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "Dinheiro",
                              style: TextStyle(
                                color: TColor.unselect,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "PIX",
                              style: TextStyle(
                                color: TColor.unselect,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "Cartão de débito",
                              style: TextStyle(
                                color: TColor.unselect,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "Cartão de crédito",
                              style: TextStyle(
                                color: TColor.unselect,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "A vista",
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Contato",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 22,
                                color: TColor.primary,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "81 987654321",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: TColor.green,
                                      borderRadius: BorderRadius.circular(15)),
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
                                      color: const Color(0xffF8A370),
                                      borderRadius: BorderRadius.circular(15)),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
