
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stateManagementSc.dart';

class NextSc extends StatefulWidget {
  const NextSc({super.key});

  @override
  State<NextSc> createState() => _NextScState();
}

class _NextScState extends State<NextSc> {

  bool _isClicked1 = false;
  bool _isClicked2 = false;
  bool _isClicked3 = false;
  bool _isClicked4 = false;

  final Color _originalColor1 = const Color.fromRGBO(217,217,217,1);
  final Color _originalColor2 = const Color.fromRGBO(217,217,217,1);
  final Color _originalColor3 = const Color.fromRGBO(217,217,217,1);
  final Color _originalColor4 = const Color.fromRGBO(217,217,217,1);

  final toggleController1 = Get.put(StateManage());

  void _handleClick1() {
    setState(() {
      _isClicked1 = !_isClicked1;
    });
  }
  void _handleClick2() {
    setState(() {
      _isClicked2 = !_isClicked2;
    });
  }

  void _handleClick3() {
    setState(() {
      _isClicked3 = !_isClicked3;
    });
  }

  void _handleClick4() {
    setState(() {
      _isClicked4 = !_isClicked4;
    });
  }

  @override
  Widget build(BuildContext context) {

    Color currentColor1 = _isClicked1 ? const Color.fromRGBO(55,173,84,1) : _originalColor1;
    Color currentColor2 = _isClicked2 ? const Color.fromRGBO(55,173,84,1): _originalColor2;
    Color currentColor3 = _isClicked3 ? const Color.fromRGBO(55,173,84,1) : _originalColor3;
    Color currentColor4 = _isClicked4 ? const Color.fromRGBO(55,173,84,1) : _originalColor4;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg1.jpeg'),fit: BoxFit.cover),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
                  Container(
                    height: 400,
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Rectangle 16.png'),fit: BoxFit.cover)),
                  ),
          
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
          
                          Text("Latté",style: Theme.of(context).textTheme.titleLarge,),
                          const SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('4.9 ⭐️ (458)',style: Theme.of(context).textTheme.titleSmall),
          
                              const SizedBox(width: 20,),
          
                              const Image(image: AssetImage('assets/images/Image.png'),height: 14,)
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            'Caffè latte is a milk coffee that is a made '
                                'up of one or two shots of espresso, steamed milk '
                                'and a final, thin layer of frothed milk on top.',
                            style: Theme.of(context).textTheme.titleSmall,
                            softWrap: true,
                          ),
          
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 19.0),
                            child: Text("Choice of Cup Filling",style: Theme.of(context).textTheme.titleLarge,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10,),
          
                              GestureDetector(
          
                                  onTap: _handleClick1,
          
          
                                child: Container(
                                  height: 27,
                                  width: 51,
                                  decoration: BoxDecoration(
                                    color: currentColor1,
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Full",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black),)),
                                ),
                              ),
          
                              const SizedBox(width: 10,),
          
                              GestureDetector(
          
                                onTap: _handleClick2,
          
          
                                child: Container(
                                  height: 27,
                                  width: 51,
                                  decoration: BoxDecoration(
                                      color: currentColor2,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("1/2 Full",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black),)),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              GestureDetector(
          
                                onTap: _handleClick3,
          
          
                                child: Container(
                                  height: 27,
                                  width: 51,
                                  decoration: BoxDecoration(
                                      color: currentColor3,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("3/4 Full",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black),)),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              GestureDetector(
          
                                onTap: _handleClick4,
          
          
                                child: Container(
                                  height: 27,
                                  width: 51,
                                  decoration: BoxDecoration(
                                      color: currentColor4,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("1/4 Full",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black),)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text("Choice of Milk",style: Theme.of(context).textTheme.titleLarge,),
                          ),
          
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        children: [
                                          Obx(()=>
                                             Center(
                                               child: IconButton(
                                                  onPressed: (){
                                          
                                                    toggleController1.activeFunc1();
                                          
                                                  },
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(top: 0),
                                                  child: Center(
                                                    child: Icon(
                                                      toggleController1.active1.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                        color: toggleController1.active1.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                                    ),
                                                  ),
                                                ),
                                               ),
                                             ),
                                          ),
                                          Text('Skim Milk',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                        ],
                                      ),
                                    Row(
                                      children: [
                                        Obx(()=>
                                            Center(
                                              child: IconButton(
                                                onPressed: (){
                                          
                                                  toggleController1.activeFunc2();
                                          
                                                },
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(top: 0),
                                                  child: Center(
                                                    child: Icon(
                                                        toggleController1.active2.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                        color: toggleController1.active2.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),
                                        Text('Almond Milk',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Obx(()=>
                                            IconButton(
                                              onPressed: (){
                                          
                                                toggleController1.activeFunc3();
                                          
                                              },
                                              icon: Icon(
                                                  toggleController1.active3.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                  color: toggleController1.active3.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                              ),
                                            ),
                                        ),
                                        Text('Soy Milk',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Obx(()=>
                                            IconButton(
                                              onPressed: (){
                                          
                                                toggleController1.activeFunc4();
                                          
                                              },
                                              icon: Icon(
                                                  toggleController1.active4.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                  color: toggleController1.active4.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                              ),
                                            ),
                                        ),
                                        Text('Lactose Free Milk',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Obx(()=>
                                            IconButton(
                                              onPressed: (){
                                          
                                                toggleController1.activeFunc5();
                                          
                                              },
                                              icon: Icon(
                                                  toggleController1.active5.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                  color: toggleController1.active5.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                              ),
                                            ),
                                        ),
                                        Text('Full Cream Milk',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Obx(()=>
                                            IconButton(
                                              onPressed: (){
                                          
                                                toggleController1.activeFunc6();
                                          
                                              },
                                              icon: Icon(
                                                  toggleController1.active6.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                  color: toggleController1.active6.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                              ),
                                            ),
                                        ),
                                        Text('Full Cream Milk',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Obx(()=>
                                            IconButton(
                                              onPressed: (){
                                          
                                                toggleController1.activeFunc7();
                                          
                                              },
                                              icon: Icon(
                                                  toggleController1.active7.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                  color: toggleController1.active7.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                              ),
                                            ),
                                        ),
                                        Text('Oat Milk',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
          
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text("Choice of Sugar",style: Theme.of(context).textTheme.titleLarge,),
                          ),
          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Obx(()=>
                                            Center(
                                              child: IconButton(
                                                onPressed: (){
                                          
                                                  toggleController1.activeFunc8();
                                          
                                                },
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(top: 0),
                                                  child: Center(
                                                    child: Icon(
                                                        toggleController1.active8.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                        color: toggleController1.active8.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),
                                        Text('Sugar X1',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Obx(()=>
                                            Center(
                                              child: IconButton(
                                                onPressed: (){
                                          
                                                  toggleController1.activeFunc9();
                                          
                                                },
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(top: 0),
                                                  child: Center(
                                                    child: Icon(
                                                        toggleController1.active9.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                        color: toggleController1.active9.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),
                                        Text('1/2 Sugar',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Obx(()=>
                                            IconButton(
                                              onPressed: (){
                                          
                                                toggleController1.activeFunc10();
                                          
                                              },
                                              icon: Icon(
                                                  toggleController1.active10.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                  color: toggleController1.active10.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                              ),
                                            ),
                                        ),
                                        Text('Sugar X2',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Obx(()=>
                                            IconButton(
                                              onPressed: (){
                                          
                                                toggleController1.activeFunc11();
                                          
                                              },
                                              icon: Icon(
                                                  toggleController1.active11.value ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,size: 25,
                                                  color: toggleController1.active11.value ? const Color.fromRGBO(186, 186, 186, 1): const Color.fromRGBO(35, 133, 68, 1)
                                              ),
                                            ),
                                        ),
                                        Text('No Sugar',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          
                          Container(
                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: ClipRRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                            value:false,
                                            onChanged: (bool? value){

                                          setState(() {
                                            value = value!;

                                          });
                                        }),

                                        Text("High Priority",style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),),
                                        const Image(image: AssetImage('assets/images/error 1.png')),
                                      ],
                                    ),



                                    Container(
                                      height: 44,
                                      width: 146,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(7.5)
                                      ),
                                      child: ElevatedButton(
                                          onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              38, 38, 38, 0.3),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5))
                                        ),
                                          child: Text("Submit",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16),),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
          
                        ],
                      ),
                    ),
                  )
            ]
          ),
        )
      ),
    );
  }
  void checkBox(){

  }
}
