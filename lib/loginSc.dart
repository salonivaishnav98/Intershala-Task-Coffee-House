
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saloni_intershala_task/main.dart';

class LoginSc extends StatelessWidget {
  const LoginSc({super.key});

  @override
  Widget build(BuildContext context) {

    final uNameController = TextEditingController();
    final passController = TextEditingController();

    return Scaffold(


      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg1.jpeg'),fit: BoxFit.cover)),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 91,horizontal: 24),

          child: ClipRRect(
              borderRadius: BorderRadius.circular(17),

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),

                child: Container(
                      decoration:
                      const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/RectangleBlur.png'),fit: BoxFit.cover),
                          color: Color.fromRGBO(255,255,255, 0.25),
                          borderRadius : BorderRadius.all(Radius.circular(17))
            ),

                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                      child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: Color.fromRGBO(0,0,0,0),
                            //backgroundImage: AssetImage('assets/images/Asset 1 1.png'),
                            child: ClipOval(

                              child: Image.asset("assets/images/Asset 1 1.png"),
                            ),

                          ),
                        Text("Swift",style: Theme.of(context).textTheme.bodyLarge,),

                        Text("Café",style: Theme.of(context).textTheme.bodyMedium,),

                        Text(""""Latte but never late" """,style: Theme.of(context).textTheme.bodySmall,),

                        const SizedBox(height: 16.94,),

                        TextField(

                          controller: uNameController,
                          decoration: InputDecoration(
                            hintText: "User Name",hintStyle: Theme.of(context).textTheme.titleMedium,
                            //border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1))
                          ),
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),cursorColor: Colors.white,

                        ),

                        const SizedBox(height: 16.94,),

                        TextField(
                          controller: passController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",hintStyle: Theme.of(context).textTheme.titleMedium
                          ),
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),cursorColor: Colors.white,

                        ),

                        const SizedBox(height: 24.2),

                        Container(
                          width: 245,
                          height: 49,

                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [Color.fromRGBO(77, 43, 26, 1),Color.fromRGBO(167, 116, 90, 1)]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(onPressed: (){

                            if(uNameController.text.isNotEmpty || passController.text.isNotEmpty){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeSc(username: uNameController.text,),));
                            }else{
                              Get.snackbar("Error", "Please fill all the fields!");
                            }


                          },
                            child: Text("Login",style: Theme.of(context).textTheme.titleMedium),

                            style: ElevatedButton.styleFrom(

                              padding: const EdgeInsets.all(16.0),
                              elevation: 0.0,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.black54,// Set transparent background
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),

                          ),
                        ),

                        const SizedBox(height: 30.2),

                        SizedBox(
                          width: 245,
                          height: 49,
                          child: ElevatedButton(onPressed: (){}, child: Text("Signup",style: Theme.of(context).textTheme.titleMedium,),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            side: BorderSide(color: Colors.white)
                          ),),
                        ),

                        const SizedBox(height: 19.36),

                        TextButton(onPressed: (){},
                          child: Text("Privacy Policy",style: Theme.of(context).textTheme.titleMedium,)
                        )

                      ],
                      ),
                    ),
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
