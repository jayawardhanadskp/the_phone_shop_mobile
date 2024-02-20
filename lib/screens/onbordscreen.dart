import 'package:flutter/material.dart';

class OnbordScreen extends StatelessWidget {
  const OnbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,

            child: Image.asset('assets/01.png'),
          ),

          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            ),
            child: Container(
              height: 490,
              width: double.infinity,
              color: const Color(0xFFFF0040),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      'A Blend of all your \n Favourite Phones !',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 55,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin_page');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: const BorderSide(color: Colors.white),
                      ),
                      padding: const EdgeInsets.all(15),
                      fixedSize: const Size(220, 60),
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      primary:  const Color(0xFFFF0040),
                    ),
                    child: const Text('Sign In', style: TextStyle(color: Colors.white),),
                  ),

                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup_page');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: const BorderSide(color: Colors.white),
                      ),
                      padding: const EdgeInsets.all(15),
                      fixedSize: const Size(220, 60),
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      primary:  Colors.white,
                    ),
                    child: const Text('Sign Up', style: TextStyle(color: Color(0xFFFF0040)),
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
