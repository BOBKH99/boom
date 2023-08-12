
import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rowculom/card.dart';
import 'package:rowculom/main.dart';
import 'package:rowculom/newscreen.dart';


void main() {
  runApp(HomeFood());
}

class HomeFood extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(

          title: const Text(
            'Food Panda', style: TextStyle(fontFamily: 'Montserrat'),),
          centerTitle: true,
          actions: const [
            Icon(Icons.person),
            SizedBox(width: 20,),
            Icon((Icons.settings)),
            SizedBox(width: 20,)
          ],
          elevation: 0,
        ),
        drawer: Drawer(
          width: MediaQuery
              .of(context)
              .size
              .width * .85,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                arrowColor: Colors.black,
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),

                  child: Image.network(
                      'https://i0.wp.com/www.solrazo.com/wp-content/uploads/2017/12/foodpanda-logo.jpg?fit=600%2C600&ssl=1'),
                ),
                accountName: null,
                accountEmail: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Khorn SoKhen',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Personal Account'),
                      ],

                    ),
                    Padding(padding: const EdgeInsets.only(right: 10),
                      child: FilledButton(onPressed: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) =>MyApp(),));
                      },
                        child: const Text('Swich'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,

                        ),),

                    )
                  ],
                ),


              ),

              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Become a pandapro'),
                  leading: Image.asset('lib/assets/crown.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Vouchers & offers'),
                  leading: Image.asset('lib/assets/coupon.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Favourite'),
                  leading: Image.asset('lib/assets/heart.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Orders & reordering'),
                  leading: Image.asset('lib/assets/order.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Profile'),
                  leading: Image.asset('lib/assets/user.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Addresses'),
                  leading: Image.asset('lib/assets/pin.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Payment methods'),
                  leading: Image.asset('lib/assets/card.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('panda rewards'),
                  leading: Image.asset('lib/assets/badge.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Help center'),
                  leading: Image.asset('lib/assets/help.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              TextButton(onPressed: () {},
                child: ListTile(title: const Text('Invite friends'),
                  leading: Image.asset('lib/assets/gift.png'),),
                style: TextButton.styleFrom(fixedSize: const ui.Size(200, 50),
                    padding: const EdgeInsets.only(bottom: 20)),),
              Divider(
                color: Colors.grey.shade300,
                height: 25,
                thickness: 1,
                // indent: 0,
                // endIndent: 5,
              ),
              Padding(padding: const EdgeInsets.only(left: 10),

                child:

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextButton(onPressed: () {}, child: const Text('Settings'),),
                    TextButton(onPressed: () {},
                      child: const Text('Terms & Conditions / Privacy'),),
                    TextButton(onPressed: () {}, child: const Text('Log out'),),
                  ],
                ),

              )
            ],

          ),
        ),
        body: ListView(
          //color: Colors.grey.shade100,
            children: [
              Container(
                height: 1160,
                color: Colors.grey.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 60,
                        color: Colors.pink,
                        padding: const EdgeInsets.only(bottom: 20,right: 10,left: 10),
                        child: InkWell(
                          onTap: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(Icons.search_outlined,size: 30,color: Colors.black54,),
                                SizedBox(width: 10,),
                                Text('Search for shops & restaurants')
                              ],
                            ),
                          ),
                        )
                    ),
                    const SizedBox(height: 20,),

                    Row(
                      children: [
                        const SizedBox(width: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()
                          ));},
                          child: Container(
                            width: 360,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    const ListTile(
                                      title: Text('Food delivery',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold),),
                                      subtitle: Text('Order food you love',style: TextStyle(fontFamily: 'BoldItalic',fontSize: 10,fontWeight: FontWeight.bold),),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(width: 250,),
                                        Image.asset('lib/assets/jan.png',width: 95,height: 78,),
                                      ],
                                    )
                                  ],
                                ),
                              ],

                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const SizedBox(width: 20,),
                        Container(
                          width: 170,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  const ListTile(
                                    title: Text('Shops',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold),),
                                    subtitle: Text('Groceries and more',style: TextStyle(fontFamily: 'BoldItalic',fontSize: 10,fontWeight: FontWeight.bold),),
                                  ),
                                  const SizedBox(height: 100,),
                                  Row(
                                    children: [
                                      const SizedBox(width: 50,),
                                      Image.asset('lib/assets/drink.jpg',height: 120,),
                                    ],
                                  )
                                ],
                              ),
                            ],

                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      const ListTile(
                                        title: Text('Pick-up',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold),),
                                        subtitle: Text('Up to 50% off',style: TextStyle(fontFamily: 'BoldItalic',fontSize: 10,fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(height: 8,),
                                      Row(
                                        children: [
                                          const SizedBox(width: 80,),
                                          Image.asset('lib/assets/pickup.png',width: 100,height: 110,),
                                        ],
                                      )
                                    ],
                                  ),
                                ],

                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                                width: 180,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text('pandasend',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 10,),
                                        Text('Express',style: TextStyle(fontFamily: 'BoldItalic',fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black45),),
                                        Text('Delivery',style: TextStyle(fontFamily: 'BoldItalic',fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black45),),
                                      ],
                                    ),
                                    Image.asset('lib/assets/send.jpg',width: 71,)
                                  ],
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                        color: Colors.white,
                        height: 600,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                            const Row(
                              children: [
                                SizedBox(width: 20,),
                                Text('Order it again',style: TextStyle(fontFamily: 'Montserrat',fontSize: 18,fontWeight: FontWeight.bold,),),
                              ],
                            ),
                            const SizedBox(height: 20,),
                        Container(
                          height: 270,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return MyCard();
                            },
                          ),
                        ),
                            Container(
                              height: 80,
                              width: 360,
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: Colors.black12)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Becomde a pro',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold)),
                                      SizedBox(height: 5,),
                                      Text('and get exclusive deals',style: TextStyle(fontFamily: 'Montserrat',fontSize: 12,fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(width: 90,),
                                  Transform.rotate(
                                    angle: 0,
                                      child: Image.asset('lib/assets/glasses.jpg',height: 60,))
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 80,
                              width: 360,
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: Colors.black12)
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Tru panda rewards!',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold)),
                                      SizedBox(height: 5,),
                                      Text('Earn points and win prizes',style: TextStyle(fontFamily: 'Montserrat',fontSize: 12,fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(width: 85,),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset('lib/assets/reward.png',width: 83,fit: BoxFit.cover,))
                                ],
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              height: 80,
                              width: 360,
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: Colors.black12),
                                  image: DecorationImage(
                                      image: AssetImage('lib/assets/Earn.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Earn a \$3 voucher',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold)),
                                      SizedBox(height: 5,),
                                      Text('when you refer a friend',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat',fontSize: 12,fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
            ]
        )

    );
  }
}
