import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloni_intershala_task/loginSc.dart';

import 'nextSc.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(

          bodyLarge: GoogleFonts.raleway(
            fontSize:64,
              fontWeight: FontWeight.w400,
            color:Colors.white
          ),

          bodyMedium: GoogleFonts.raleway(
            fontSize:40,
            fontWeight:FontWeight.w400,
            color:Colors.white
          ),
          bodySmall: GoogleFonts.poppins(
              fontSize:14,
              fontWeight:FontWeight.w400,
              color:const Color.fromRGBO(171,171,171,1),
            shadows:[
              Shadow(
                color: Colors.white.withOpacity(0.87),
                blurRadius: 20
              )
            ]
          ),
          titleMedium: GoogleFonts.inter(
              fontSize:14,
              fontWeight:FontWeight.w400,
              color:Colors.white
          ),

          titleLarge: GoogleFonts.inter(
              fontSize:18,
              fontWeight:FontWeight.w700,
              color:const Color.fromRGBO(205,205,205,1),
          ),
          titleSmall: GoogleFonts.inter(
            fontSize:12,
            fontWeight:FontWeight.w300,
            color:const Color.fromRGBO(196,196,196,1),
          )
        )
      ),
      home: const LoginSc(),
    );
  }
}
class HomeSc extends StatefulWidget {

  final String? username;

  const HomeSc({super.key, this.username});

  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {

  final searchController = TextEditingController();

  int _currentIndex = 0;
  
  


  @override
  Widget build(BuildContext context) {


    List elements = [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(

              height: 266,
              width: 213,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/RectangleBlur.png'),fit:BoxFit.cover,
                  )
              ),
              child: Container(
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Rectangle 9.png'),fit:BoxFit.cover,
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [

                    const Image(image: AssetImage('assets/images/Coffee2 1.png')),

                    Text('Hot Cappuccino',style: Theme.of(context).textTheme.titleLarge,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        //SizedBox(width: 10,),

                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const Text("Espresso, Steamed Milk",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color:Color.fromRGBO(4,4,4,1)),),

                            const SizedBox(height: 4,),

                            Text('4.9 ⭐️ (458)',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black),)
                          ],
                        ),

                        const SizedBox(width: 10,),

                        Container(
                          height: 35,
                          width: 30,
                          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/RectangleGreen.png'))),
                          child: const Image(image: AssetImage("assets/images/Fill 3617.png"),)
                        )
                      ],
                    ),
                  ],),
                ),
              )
          ),
        ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(

            height: 266,
            width: 213,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/RectangleBlur.png'),fit:BoxFit.cover,
                )
            ),
            child: Container(
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Rectangle 9.png'),fit:BoxFit.cover,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    const Image(image: AssetImage('assets/images/Coffee2 1.png')),

                    Text('Hot Cappuccino',style: Theme.of(context).textTheme.titleLarge,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        //SizedBox(width: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const Text("Espresso, Steamed Milk",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color:Color.fromRGBO(4,4,4,1)),),

                            const SizedBox(height: 4,),

                            Text('4.9 ⭐️ (458)',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black),)
                          ],
                        ),

                        const SizedBox(width: 10,),

                        Container(
                            height: 35,
                            width: 30,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/RectangleGreen.png'))),
                            child: const Image(image: AssetImage("assets/images/Fill 3617.png"),)
                        )
                      ],
                    ),
                  ],),
              ),
            )
        ),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(

            height: 266,
            width: 213,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/RectangleBlur.png'),fit:BoxFit.cover,
                )
            ),
            child: Container(
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Rectangle 9.png'),fit:BoxFit.cover,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    const Image(image: AssetImage('assets/images/Coffee2 1.png')),

                    Text('Hot Cappuccino',style: Theme.of(context).textTheme.titleLarge,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        //SizedBox(width: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const Text("Espresso, Steamed Milk",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color:Color.fromRGBO(4,4,4,1)),),

                            const SizedBox(height: 4,),

                            Text('4.9 ⭐️ (458)',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black),)
                          ],
                        ),

                        const SizedBox(width: 10,),

                        Container(
                            height: 35,
                            width: 30,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/RectangleGreen.png'))),
                            child: const Image(image: AssetImage("assets/images/Fill 3617.png"),)
                        )
                      ],
                    ),
                  ],),
              ),
            )
        ),
      ),
    ];

    return Scaffold(
      extendBody: true,



      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg1.jpeg'),fit: BoxFit.cover)),

        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration:
              const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/RectangleBlur.png'),fit: BoxFit.cover),
                gradient: LinearGradient(
                    begin: Alignment.topCenter, // Align the gradient to the top
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(110, 110, 110, 0.3),
                      Color.fromRGBO(255,255,255,0.14),
                      Color.fromRGBO(255,255,255,.38)]),
                //borderRadius : BorderRadius.all(Radius.circular(17))
              ),

              child: SingleChildScrollView(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 55,left: 20,right: 20,bottom: 10),

                      child: Row(
                        children: [
                          const Image(image: AssetImage('assets/images/hand.png'),),

                          const SizedBox(width: 20,),

                          SizedBox(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("20/12/2022",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 13)),
                                Text(widget.username!,style: Theme.of(context).textTheme.titleLarge,),
                              ],
                            ),
                          ),
                          //SizedBox(width: 170,),

                          const Image(image: AssetImage('assets/images/Group 3.png'),),

                          //SizedBox(width: 20,),

                          const Image(image: AssetImage('assets/images/Ellipse 3.png')),

                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromRGBO(249, 249, 249, 1),
                      ),
                      child: TextField(

                        controller: searchController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: ImageIcon(AssetImage('assets/images/Fill 3747.png')) ,// Search icon as prefix
                          suffixIcon:ImageIcon(AssetImage('assets/images/Fill 1902.png')),
                          hintText: 'Search favorite Beverages',
                          hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Color.fromRGBO(187, 187, 188, 1),
                          ),
                        ),
                        style: const TextStyle(fontSize: 20,color: Color.fromRGBO(187, 187, 188, 1)),
                      ),
                    ),

                    Container(
                      height: 355,
                      color: const Color.fromRGBO(49, 49, 49, 0.45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                            child: Text('Most Popular Beverages',style: Theme.of(context).textTheme.titleLarge,),
                          ),

                          SizedBox(
                            height: 266,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: elements.length,
                              itemBuilder: (context, int index) {
                                return elements[index];
                              },

                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Text('Get it instantly',style: Theme.of(context).textTheme.titleLarge,),

                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 10),

                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => NextSc()));
                              },
                              child: Container(
                                height: 163,
                                decoration:  BoxDecoration(
                                    color: Color.fromRGBO(255,255,255,0.20),
                                    image: DecorationImage(image: AssetImage('assets/images/RectangleBlur.png'),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(14),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25), // Shadow color
                                        spreadRadius: 0, // Spread radius
                                        blurRadius: 7, // Blur radius
                                        offset: Offset(0, 4), // Offset (horizontal, vertical)
                                      ),
                                    ]
                                ),

                                child:  Padding(
                                  padding: const EdgeInsets.all(20.0),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Latté",style: Theme.of(context).textTheme.titleLarge,),
                                            Row(
                                              children: [
                                                Text('4.9 ⭐️ (458)',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w300,color: Color.fromRGBO(29,29,29,1)),),

                                                SizedBox(width: 20,),

                                                Image(image: AssetImage('assets/images/Image.png'),height: 14,)
                                              ],
                                            ),
                                            Text(
                                              'Caffè latte is a milk coffee that is a made '
                                                  'up of one or two shots of espresso, steamed milk '
                                                  'and a final, thin layer of frothed milk on top.',
                                              style: Theme.of(context).textTheme.bodySmall!.copyWith(shadows: List.empty()),
                                              softWrap: true,
                                              maxLines: 4,
                                            )

                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Expanded(
                                          flex: 1,

                                          child: Stack(

                                            children: [
                                              Image(image: AssetImage('assets/images/Rectangle 10.png'),),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 100,left: 30),
                                                child: Container(
                                                  height: 19,
                                                  width: 52,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(102,163,92,1),
                                                    borderRadius: BorderRadius.circular(5)
                                                  ),
                                                  child: Center(child: Text('ADD',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white))),
                                                ),
                                              ),
                                            ],

                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 10),

                            child: Container(
                              height: 163,
                              decoration:  BoxDecoration(
                                  color: Color.fromRGBO(255,255,255,0.20),
                                  image: DecorationImage(image: AssetImage('assets/images/RectangleBlur.png'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25), // Shadow color
                                      spreadRadius: 0, // Spread radius
                                      blurRadius: 7, // Blur radius
                                      offset: Offset(0, 4), // Offset (horizontal, vertical)
                                    ),
                                  ]
                              ),

                              child:  Padding(
                                padding: const EdgeInsets.all(20.0),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text("Flat White",style: Theme.of(context).textTheme.titleLarge,),
                                          Row(
                                            children: [
                                              Text('4.9 ⭐️ (458)',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w300,color: Color.fromRGBO(29,29,29,1)),),

                                              SizedBox(width: 20,),

                                              Image(image: AssetImage('assets/images/Image.png'),height: 14,)
                                            ],
                                          ),
                                          Text(
                                            'Caffè latte is a milk coffee that is a made '
                                                'up of one or two shots of espresso, steamed milk '
                                                'and a final, thin layer of frothed milk on top.',
                                            style: Theme.of(context).textTheme.bodySmall!.copyWith(shadows: List.empty()),
                                            softWrap: true,
                                            maxLines: 4,
                                          )

                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                        flex: 1,
                                        child: Stack(

                                          children: [
                                            Image(image: AssetImage('assets/images/Rectangle 14.png'),),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 90,left: 30),
                                              child: Container(
                                                height: 19,
                                                width: 52,
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(102,163,92,1),
                                                    borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(child: Text('ADD',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white))),
                                              ),
                                            ),
                                          ],
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 10),

                            child: Container(
                              height: 163,
                              decoration:  BoxDecoration(
                                  color: Color.fromRGBO(255,255,255,0.20),
                                 image: DecorationImage(image: AssetImage('assets/images/RectangleBlur.png'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25), // Shadow color
                                      spreadRadius: 0, // Spread radius
                                      blurRadius: 7, // Blur radius
                                      offset: Offset(0, 4), // Offset (horizontal, vertical)
                                    ),
                                  ]
                              ),

                              child:  Padding(
                                padding: const EdgeInsets.all(20.0),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text("Latté",style: Theme.of(context).textTheme.titleLarge,),
                                          Row(
                                            children: [
                                              Text('4.9 ⭐️ (458)',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w300,color: Color.fromRGBO(29,29,29,1)),),

                                              SizedBox(width: 20,),

                                              Image(image: AssetImage('assets/images/Image.png'),height: 14,)
                                            ],
                                          ),
                                          Text(
                                            'Caffè latte is a milk coffee that is a made '
                                                'up of one or two shots of espresso, steamed milk '
                                                'and a final, thin layer of frothed milk on top.',
                                            style: Theme.of(context).textTheme.bodySmall!.copyWith(shadows: List.empty()),
                                            softWrap: true,
                                            maxLines: 4,
                                          )

                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                        flex: 1,
                                        child: Stack(

                                          children: [
                                            Image(image: AssetImage('assets/images/Rectangle 10.png'),),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 100,left: 30),
                                              child: Container(
                                                height: 19,
                                                width: 52,
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(102,163,92,1),
                                                    borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(child: Text('ADD',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white))),
                                              ),
                                            ),
                                          ],
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                            SizedBox(height:50,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
           color: const Color.fromRGBO(51, 51, 51, 0.84),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            currentIndex: _currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: IconThemeData(size: 30),
            unselectedIconTheme: IconThemeData(size: 30),
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet),
                label: "",
              ),
            BottomNavigationBarItem(
                        icon: Icon(Icons.delete),
                        label: "",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.wallet),
                        label: "",
                      ),

            ],
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),




    );
  }
}

