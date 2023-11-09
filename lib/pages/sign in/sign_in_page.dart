import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourmate/constants.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(500)),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/viaja-descubriendo-lugares-tus-seres-queridos.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter),
                ),
              )),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SIGN IN",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "SIGN UP",
                          style: Theme.of(context).textTheme.button,
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.alternate_email,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                              child: TextField(
                            decoration:
                                InputDecoration(hintText: "Correo Electronico"),
                          ))
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.lock,
                            color: kPrimaryColor,
                          ),
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(hintText: "Contraseña"),
                        ))
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white.withOpacity(.5)),
                            ),
                            child: Icon(
                              Icons.facebook,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white.withOpacity(.5)),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/google.svg",
                              color: Colors.white.withOpacity(0.5),
                              width: 26.0,
                              height: 26.0,
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
