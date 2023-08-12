
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            width: 150,
            height: 200,
            child: Stack(
                children: [ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('lib/assets/e1.png',fit: BoxFit.cover,)),

                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 50,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                      child: Center(child: Text('50%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),),
                  Positioned(
                      bottom: 10,
                      left: 10,
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)
                        ),

                        child: Center(
                            child: Text('Happy Newyear',style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,),maxLines: 1,)
                        ),
                      ))
                ]),
          ),

          Text('Buger King Super Shop sdfsfasdasdasd',style: TextStyle(fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 1,),
          Text('4.90\$ set Buger and coke',overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(color: Colors.black38),)
          ,Text('\$2.43')
        ],
      ),
    );
  }
}
