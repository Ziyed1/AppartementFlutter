import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:statstade/View/ticket_view.dart';
import 'package:statstade/constants/color_constants.dart';

class HomeScreenT extends StatelessWidget {
  const HomeScreenT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                            "Bienvenue", style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            "Réserver votre sejour", style: Styles.headLineStyle1
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/logo.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                const Gap(60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vos réservations", style: Styles.headLineStyle2,),
                    Text("Voir tout", style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView()
              ],
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("L'appartement", style: Styles.headLineStyle2,),
                Text("Voir tout", style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
              ],
            ),
          )
        ],
      ),
    );
  }
}