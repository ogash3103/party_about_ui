import 'package:flutter/material.dart';
import 'package:party_about_ui/secondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.3),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 95,),
              FadeAnimation(1, const Text("Find the best parties near you." , style: TextStyle(color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold),),),
              const SizedBox(height: 30,),
              FadeAnimation(1.2,const Text("Let us find a party for your interest." , style: TextStyle(color: Colors.greenAccent, fontSize: 25, fontWeight: FontWeight.w400),),),
              const SizedBox(height: 450,),

              _isLogin ?
              FadeAnimation(1.4,Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow[900],
                ),
                child: const Center(
                  child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ))
               :
              FadeAnimation(1.4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 55,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.redAccent,
                    ),
                    child: const Center(
                      child: Text("Google", style: TextStyle(color: Colors.white, fontSize: 18),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 55,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 18),),
                    ),
                  ),
                ],
              )),


              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
