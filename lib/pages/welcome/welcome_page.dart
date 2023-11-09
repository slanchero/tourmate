import 'package:flutter/material.dart';
import 'package:tourmate/constants.dart';
import 'package:tourmate/pages/sign%20in/sign_in_page.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(300),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/viaja-descubriendo-lugares-tus-seres-queridos.jpg"),
                        fit: BoxFit.cover)),
              )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "COMIENZA TU VIAJE\n",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ]),
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SignInPage();
                      }),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor),
                    child: Row(
                      children: [
                        Text(
                          "START",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.black),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
