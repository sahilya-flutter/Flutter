import 'package:flutter/material.dart';
import 'package:crypto_wallet_ui/constants/constants.dart' as constants;

class MoversSection extends StatelessWidget {
  const MoversSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Top Movers",
              style: TextStyle(
                  color: constants.Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              )
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Container(
                height: 90,
                width: 160,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: constants.Colors.lightGrey
                ),
                child: Stack(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("+34.98%",
                            style: TextStyle(
                                color: constants.Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        Text("BTC \$21.58",
                            style: TextStyle(
                                color: constants.Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset("assets/purple_graph.png")
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              Container(
                height: 90,
                width: 160,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: constants.Colors.lightGrey
                ),
                child: Stack(
                  children: [
                    const Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("+34.98%",
                                style: TextStyle(
                                    color: constants.Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Text("BTC \$21.58",
                                style: TextStyle(
                                    color: constants.Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset("assets/pink_graph.png")
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
