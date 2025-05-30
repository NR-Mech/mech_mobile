import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:mech/common/color_extension.dart';
import 'package:mech/screen/home/make_payment_screen.dart';

class AppointmentBookingScreen extends StatefulWidget {
  const AppointmentBookingScreen({super.key});

  @override
  State<AppointmentBookingScreen> createState() =>
      _AppointmentBookingScreenState();
}

class _AppointmentBookingScreenState extends State<AppointmentBookingScreen> {
  DateTime? selectDate;
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
        title: Text(
          "Appointment Booking",
          style: TextStyle(
            color: TColor.primaryTextW,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              "Agendamento",
              style: TextStyle(
                color: TColor.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              var results = await showCalendarDatePicker2Dialog(
                context: context,
                config: CalendarDatePicker2WithActionButtonsConfig(
                  firstDayOfWeek: 1,
                  calendarType: CalendarDatePicker2Type.single,
                  selectedDayTextStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  selectedDayHighlightColor: TColor.primary,
                  centerAlignModePicker: true,
                  customModePickerIcon: const SizedBox(),
                ),
                dialogSize: const Size(325, 400),
                value: [],
                borderRadius: BorderRadius.circular(15),
              );

              if (results != null) {
                setState(() {
                  selectDate = results.first;
                });
              }
            },
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        selectDate?.date ?? "Selecione uma Data",
                        style: TextStyle(
                          color: selectDate == null
                              ? TColor.secondaryText
                              : TColor.primaryText,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.date_range,
                      color: TColor.primary,
                      size: 30,
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Motivo da Visita",
              style: TextStyle(
                color: TColor.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Digite o Motivo da Visita",
                hintStyle: TextStyle(color: TColor.secondaryText, fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Mensagem",
              style: TextStyle(
                color: TColor.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Digite sua Mensagem",
                hintStyle: TextStyle(color: TColor.secondaryText, fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              children: [
                Text(
                  "Por Consulta",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "R\$550",
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          
          InkWell(
            onTap: () {
              context.push(const MakePaymentScreen());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              width: double.maxFinite,
              height: 50,
              decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Fazer Pagamento",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
