import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pawprints/screens/client/home_screen.dart';
import 'package:pawprints/screens/customer/login_screen.dart';
import 'package:pawprints/widgets/textbutton_widget.dart';
import '../utils/constants.dart';

class GetStartedScreen extends StatefulWidget{
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen>{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Flexible(
                  child: Column(
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 100,
                          child: const Icon(
                            Icons.pets_outlined,
                            color: Colors.white,
                            size: 200,
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 20,
                      ),
                      const Text(
                        "Welcome to PawPrints",
                        style: kHeadline,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "The app that's always there for your pet's needs.",
                          style: kBodyText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButtonWidget(
                        bgColor: Colors.white,
                        buttonName: 'Client',
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        textColor: Colors.black87,
                      ),
                    ),
                    Expanded(
                      child: TextButtonWidget(
                        bgColor: Colors.transparent,
                        buttonName: 'Customer',
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}