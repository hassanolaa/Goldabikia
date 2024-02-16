import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:goldabikia/ss.dart';
import 'package:url_launcher/link.dart';

import '../AboutScreen/DeskTopAboutScreen.dart';
import '../ContactScreen/DeskTopContactScreen.dart';
import '../Home Screen/DeskTopHomeScrren.dart';
import '../ProductScreen/DeskTopProductScreen.dart';
import '../StoreScreen/DeskTopStoreScreen.dart';

class DeskTopCartScreen extends StatefulWidget {
  final String order;
  ss data;

   DeskTopCartScreen({
    required this.order,
     required this.data,

   }) ;

  @override
  State<DeskTopCartScreen> createState() => _DeskTopCartScreenState();
}

class _DeskTopCartScreenState extends State<DeskTopCartScreen> {
  Uri _url1 = Uri.parse('https://www.facebook.com/hasan.abd.180/');
  Uri _url2 = Uri.parse('https://www.instagram.com/hassanabdl10/');
  Uri _url3 = Uri.parse('https://www.linkedin.com/in/hassan-abdlkhalek-84b95a21b/');
  int num=0;
  final fullname=TextEditingController();
  final phone1=TextEditingController();
  final phone2=TextEditingController();
  final address=TextEditingController();
  final comment=TextEditingController();
  String Governorate="Governorate";
  int delivery=0;

  Future getUserinfo(String name,String order,String phone1,int total,String phone2,String address,String comment) async{
    await FirebaseFirestore.instance.collection('Orders').add({
      'name':name,
      'order':order,
      'phone1':phone1,
      'total':total,
      'phone2':phone2,
      'address':address,
      'comment':comment,

    });

    print('hassan');

  }


  @override
  void dispose(){
    fullname.dispose();
    phone1.dispose();
    phone2.dispose();
    address.dispose();
    comment.dispose();
    super.dispose();
  }
  Widget delivelyCost(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,

      ),
      width: 210.w,
      height: 440.h,

      child: Column(
        children: [
          SizedBox(height: 20.h,),
          Text("Select your governorate",style: TextStyle(fontSize: 8.sp),),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Column(children: [
                SizedBox(height: 10.h,),
                Text("Greater Cairo Area",style: TextStyle(fontSize: 5.sp),),
                SizedBox(height: 10.h,),
                Container(width: 35.w,height: 1.h,color: Colors.black,)
              ],),
              SizedBox(width: 110.w,),
              Text("45 LE",style: TextStyle(fontSize: 5.sp),)
            ],
          ),
          SizedBox(height: 15.h,),
          Row(children: [
            SizedBox(width: 20.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Cairo";
                    delivery=45;
                  });
                },
                child: Text("Cairo",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 20.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Giza";
                    delivery=45;
                  });
                },
                child: Text("Giza",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 20.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Qalyubia";
                    delivery=45;
                  });
                },
                child: Text("Qalyubia",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
          ],),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Column(children: [
                SizedBox(height: 10.h,),
                Text("coastal governorates",style: TextStyle(fontSize: 5.sp),),
                SizedBox(height: 10.h,),
                Container(width: 35.w,height: 1.h,color: Colors.black,)
              ],),
              SizedBox(width: 105.w,),
              Text("60 LE",style: TextStyle(fontSize: 5.sp),)
            ],
          ),
          SizedBox(height: 15.h,),
          Row(children: [
            SizedBox(width: 12.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Alexandria";
                    delivery=60;
                  });
                },
                child: Text("Alexandria",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Port Said";
                    delivery=60;
                  });
                },
                child: Text("Port Said",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Suez";
                    delivery=60;
                  });
                },
                child: Text("Suez",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Ismailia";
                    delivery=60;
                  });
                },
                child: Text("Ismailia",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Fayyum";
                    delivery=60;
                  });
                },
                child: Text("Fayyum",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Beheira";
                    delivery=60;
                  });
                },
                child: Text("	Beheira",style: TextStyle(fontSize: 6.sp),)),

          ],),
          SizedBox(height: 10.h,),
          Row(children: [
            SizedBox(width: 12.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Sharqia";
                    delivery=60;
                  });
                },
                child: Text("Sharqia",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Dakahlia";
                    delivery=60;
                  });
                },
                child: Text("Dakahlia",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Kafr el-Sheikh";
                    delivery=60;
                  });
                },
                child: Text("Kafr el-Sheikh",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Monufia";
                    delivery=60;
                  });
                },
                child: Text("Monufia",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Matruh";
                    delivery=60;
                  });
                },
                child: Text("Matruh",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Gharbia";
                    delivery=60;
                  });
                },
                child: Text("Gharbia",style: TextStyle(fontSize: 6.sp),)),

          ],),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Column(children: [
                SizedBox(height: 10.h,),
                Text("Upper governorates",style: TextStyle(fontSize: 5.sp),),
                SizedBox(height: 10.h,),
                Container(width: 35.w,height: 1.h,color: Colors.black,)
              ],),
              SizedBox(width: 110.w,),
              Text("70 LE",style: TextStyle(fontSize: 5.sp),)
            ],
          ),
          SizedBox(height: 15.h,),
          Row(children: [
            SizedBox(width: 12.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Red Sea";
                    delivery=70;
                  });
                },
                child: Text("Red Sea",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Minya";
                    delivery=70;
                  });
                },
                child: Text("Minya",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Qena";
                    delivery=70;
                  });
                },
                child: Text("Qena",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Asyut";
                    delivery=70;
                  });
                },
                child: Text("Asyut",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Sohag";
                    delivery=70;
                  });
                },
                child: Text("Sohag",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Beni suef";
                    delivery=70;
                  });
                },
                child: Text("Beni Suef",style: TextStyle(fontSize: 6.sp),)),

          ],),
          SizedBox(height: 10.h,),
          Row(children: [
            SizedBox(width: 12.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Aswan";
                    delivery=70;
                  });
                },
                child: Text("Aswan",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Luxor";
                    delivery=70;
                  });
                },
                child: Text("Luxor",style: TextStyle(fontSize: 6.sp),)),
            SizedBox(width: 10.w,),

          ],),

        ],
      ),
    );
  }
  Widget list1(){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Animate(
        effects: [FadeEffect(),SlideEffect()],
        child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFFBC02D)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 1.1,data: widget.data,)));
                  },
                  child: Text("500-1000 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 1.2,data: widget.data,)));
                  },
                  child: Text("1000-1500 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 1.3,data: widget.data,)));
                  },
                  child: Text("1500-1800 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 1.4,data: widget.data,)));
                  },
                  child: Text("1800-2200 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 1.5,data: widget.data,)));
                  },
                  child: Text("1800-2200 mAh Ch",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 1.6,data: widget.data,)));
                  },
                  child: Text("2200-2600 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 1.7,data: widget.data,)));
                  },
                  child: Text("2600-3000 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),

            ],
          ),
        ),
      ),
    );
  }
  Widget list2(){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Animate(
        effects: [FadeEffect(),SlideEffect()],
        child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFFBC02D)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 2.7,data: widget.data,)));
                  },
                  child: Text(" Hoverboard 4500 mAh ",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 2.6,data: widget.data,)));
                  },
                  child: Text("Hoverboard 2500 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 2.1,data: widget.data,)));
                  },
                  child: Text("12.6 v-3000 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 2.2,data: widget.data,)));
                  },
                  child: Text("12v-6600 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 2.3,data: widget.data,)));
                  },
                  child: Text("12v-10000 mAh ",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 2.4,data: widget.data,)));
                  },
                  child: Text("12v-12000 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 2.5,data: widget.data,)));
                  },
                  child: Text("12v-15000 mAh",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),

            ],
          ),
        ),
      ),
    );
  }
  Widget list3(){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Animate(
        effects: [FadeEffect(),SlideEffect()],
        child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFFBC02D)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 3.1,data: widget.data,)));
                  },
                  child: Text("Nema 17 ",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> DeskTopProductScreen(wid: 3.2,data: widget.data,)));
                  },
                  child: Text(" Nema 23",style: TextStyle(fontSize: 5.sp),)),
              SizedBox(height: 5.h,),
              Container(
                width: 50.w,
                height: 1.h,
                color: Colors.black54,
              ),
              SizedBox(height: 5.h,),

            ],
          ),
        ),
      ),
    );
  }
  Widget Search(){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:Animate(
        effects: [FadeEffect(),SlideEffect()],
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFFBC02D)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              SizedBox(width: 10.w,),

              OnHover(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding:EdgeInsets.only(bottom:300.h,top: 130.h,right: 245.w,left: 70.w ),
                            // Adjust the left position as needed
                            child:list1(),
                          );
                        },
                      );

                    });
                  },
                  child: Row(
                    children: [
                      Text("18650 Battery",style: TextStyle(fontSize: 4.sp),),
                      SizedBox(width: 2.w,),
                      Icon(CupertinoIcons.arrowtriangle_down,size: 5.sp,)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              OnHover(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding:EdgeInsets.only(bottom:300.h,top: 130.h,right: 185.w,left: 110.w ),
                            // Adjust the left position as needed
                            child:list2(),
                          );
                        },
                      );

                    });
                  },
                  child: Row(
                    children: [
                      Text("Battery packs",style: TextStyle(fontSize: 4.sp),),
                      SizedBox(width: 2.w,),
                      Icon(CupertinoIcons.arrowtriangle_down,size: 5.sp)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              OnHover(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding:EdgeInsets.only(bottom:300.h,top: 130.h,right: 155.w,left: 130.w ),
                            // Adjust the left position as needed
                            child:list3(),
                          );
                        },
                      );

                    });
                  },
                  child: Row(
                    children: [
                      Text("Motors",style: TextStyle(fontSize: 4.sp),),
                      SizedBox(width: 2.w,),
                      Icon(CupertinoIcons.arrowtriangle_down,size: 5.sp)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              OnHover(
                child: GestureDetector(
                  child: Row(
                    children: [
                      Text("Electronics",style: TextStyle(fontSize: 4.sp),),
                      SizedBox(width: 2.w,),
                      Icon(CupertinoIcons.arrowtriangle_down,size: 5.sp)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              OnHover(
                child: GestureDetector(
                  child: Row(
                    children: [
                      Text("Power bank",style: TextStyle(fontSize: 4.sp),),
                      SizedBox(width: 2.w,),
                      Icon(CupertinoIcons.arrowtriangle_down,size: 5.sp)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              OnHover(
                child: GestureDetector(
                  child: Row(
                    children: [
                      Text("Lithium polymer",style: TextStyle(fontSize: 4.sp),),
                      SizedBox(width: 2.w,),
                      Icon(CupertinoIcons.arrowtriangle_down,size: 5.sp)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 5.w,),

            ],
          ),
        ),
      ) ,
    );
  }
  Widget cartAdd(){
    return Container(
      width: 140.w,
      height: 300.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,

      ),
      child: Column(
        children: [
          SizedBox(height: 10.h,),
          Animate(
              effects: [FadeEffect(),SlideEffect()],
              child: Icon(CupertinoIcons.check_mark_circled,size: 28.sp,color: Colors.black,)),
          SizedBox(height: 30.h,),
          Animate(
              effects: [FadeEffect(),SlideEffect()],
              child: Text("Your Order Added Successfully",style: TextStyle(fontSize: 8.sp),)),
          SizedBox(height: 30.h,),
          Row(children: [
            SizedBox(width: 15.w,),
            Animate(
                effects: [FadeEffect(),SlideEffect()],
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black,fixedSize: Size(50.w, 40.h)),onPressed: (){}, child: Text("Continue Shopping"))),
            SizedBox(width: 10.w,),
            Animate(
                effects: [FadeEffect(),SlideEffect()],
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black,fixedSize: Size(50.w, 40.h)),onPressed: (){


                  Navigator.push(context,MaterialPageRoute(builder:
                      (contxet)=> DeskTopCartScreen(order:widget.data.Order,data: widget.data)));
                }, child: Text("Go To The Cart"))),

          ],)
        ],
      ),
    );
  }
  Widget showOrder(){
    return   Container(
      width: 350.w,
      height: 600.h,
      //     color: Colors.grey,
      child: Column(
        crossAxisAlignment:   CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h,),
          Row(
            children: [
              SizedBox(width: 30.h,),
              Text("MY CART",style: TextStyle(color: Colors.black,fontSize: 11.sp),),
            ],
          ),
          SizedBox(height: 45.h,),
          Row(
            children: [
              Container(
                width: 190.w,
                height: 450.h,
          //      color: Colors.grey,
                child: Column(
                  children: [
                    Text(widget.order),
                    SizedBox(height:30.h ,),
                    Padding(
                      padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
                      child: TextFormField(
                        // controller: note1,
                        style: TextStyle( color:  Colors.black, fontSize: 4.sp),
                        onChanged: (value){
                          //    note=value;

                        },
                        decoration: InputDecoration(
                          hintText: "Comment",
                          hintStyle: TextStyle(color:Colors.black ),
                          border:InputBorder.none ,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],),
              ),
              SizedBox(width: 10.w,),
              Container(width: 1.w,height: 400.h,color: Colors.black,),
              SizedBox(width: 15.w,),
              Container(
                width: 130.w,
                height: 450.h,
                //           color: Colors.yellowAccent,
                child: Column(
                  crossAxisAlignment:   CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20.h,),
                        Text(" CART TOTALS",style: TextStyle(color: Colors.black,fontSize: 8.sp),),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        SizedBox(width: 20.h,),
                        Container(width: 100.w,height: 2.h,color: Colors.black,),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 40.h,),
                        Text("Total Order Price",style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                        SizedBox(width: 50.w,),
                        Text(widget.data.price.toString(),style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        SizedBox(width: 40.h,),
                        Text("Tax",style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        SizedBox(width: 40.h,),
                        Text("Delivery ",style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 20.h,),
                        Container(width: 120.w,height: 4.h,color: Colors.black,),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 30.h,),
                        Text(" TOTAL",style: TextStyle(color: Colors.black,fontSize: 6.sp),),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 65.h,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(minimumSize: Size(100.w, 50.h),backgroundColor: Colors.black),
                            onPressed: (){
                              setState(() {
                                num=1;
                              });
                            }, child: Text("Process To Checkout")),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        SizedBox(width: 160.h,),
                        Text(" ❌ Cancel",style: TextStyle(color: Colors.black,fontSize: 4.sp),),
                        SizedBox(width: 10.h,),
                        Container(width: 1.w,height: 40.h,color: Colors.black,),
                        SizedBox(width: 10.h,),
                        Text(" ❌ Cancel",style: TextStyle(color: Colors.black,fontSize: 4.sp),),

                      ],
                    ),


                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget AddressOrder(){
    return Container(
      width: 350.w,
      height: 600.h,
      //     color: Colors.grey,
      child: Column(
        crossAxisAlignment:   CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h,),
          Row(
            children: [
              SizedBox(width: 30.h,),
              Text("MY CART",style: TextStyle(color: Colors.black,fontSize: 11.sp),),
            ],
          ),
          SizedBox(height: 45.h,),
          Row(
            children: [
              Container(
                width: 190.w,
                height: 450.h,
                //       color: Colors.grey,
                child: Column(
                  children: [
                    SizedBox(height:30.h ,),
                    Padding(
                      padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
                      child: TextFormField(
                        controller: fullname,
                        style: TextStyle( color:  Colors.black, fontSize: 4.sp),
                        onChanged: (value){
                          //    note=value;

                        },
                        decoration: InputDecoration(
                          hintText: "full name",
                          hintStyle: TextStyle(color:Colors.black ),
                          border:InputBorder.none ,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:20.h ,),
                    Padding(
                      padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
                      child: TextFormField(
                        controller: phone1,
                        style: TextStyle( color:  Colors.black, fontSize: 4.sp),
                        onChanged: (value){
                          //    note=value;

                        },
                        decoration: InputDecoration(
                          hintText: "Primary phone number",
                          hintStyle: TextStyle(color:Colors.black ),
                          border:InputBorder.none ,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:20.h ,),
                    Padding(
                      padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
                      child: TextFormField(
                         controller: phone2,
                        style: TextStyle( color:  Colors.black, fontSize: 4.sp),
                        onChanged: (value){
                          //    note=value;

                        },
                        decoration: InputDecoration(
                          hintText: "Secondary phone number",
                          hintStyle: TextStyle(color:Colors.black ),
                          border:InputBorder.none ,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:20.h ,),
                /*    Padding(
                      padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
                      child: TextFormField(
                        // controller: note1,
                        style: TextStyle( color:  Colors.black, fontSize: 4.sp),
                        onChanged: (value){
                          //    note=value;

                        },
                        decoration: InputDecoration(
                          hintText: "Governorate",
                          hintStyle: TextStyle(color:Colors.black ),
                          border:InputBorder.none ,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    */
                    Padding(
                      padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
                      child: TextFormField(
                         controller: address,
                        style: TextStyle( color:  Colors.black, fontSize: 4.sp),
                        onChanged: (value){
                          //    note=value;

                        },
                        decoration: InputDecoration(
                          hintText: "Address",
                          hintStyle: TextStyle(color:Colors.black ),
                          border:InputBorder.none ,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:20.h ,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          //      QuickAlert.show(backgroundColor:Color(0xFFFBC02D) ,width: 300,context: context,type: QuickAlertType.confirm,widget: All());
                          SmartDialog.show(builder: (context) {
                            return delivelyCost();
                          });


                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 40.w,),
                          Text(Governorate,style: TextStyle(fontSize: 5.sp),),
                          SizedBox(width: 70.w,),
                          Icon(CupertinoIcons.list_dash,size: 6.sp,color: Colors.black,)
                        ],
                      ),
                    ),
                    SizedBox(height:20.h ,),
                    Padding(
                      padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
                      child: TextFormField(
                         controller: comment,
                        style: TextStyle( color:  Colors.black, fontSize: 4.sp),
                        onChanged: (value){
                          //    note=value;

                        },
                        decoration: InputDecoration(
                          hintText: "note",
                          hintStyle: TextStyle(color:Colors.black ),
                          border:InputBorder.none ,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w, color: Colors.white),
                          ),
                        ),
                      ),
                    ),

                  ],),
              ),
              SizedBox(width: 10.w,),
              Container(width: 1.w,height: 400.h,color: Colors.black,),
              SizedBox(width: 15.w,),
              Container(
                width: 130.w,
                height: 450.h,
                //           color: Colors.yellowAccent,
                child: Column(
                  crossAxisAlignment:   CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20.h,),
                        Text(" CART TOTALS",style: TextStyle(color: Colors.black,fontSize: 8.sp),),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        SizedBox(width: 20.h,),
                        Container(width: 100.w,height: 2.h,color: Colors.black,),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 40.h,),
                        Text("Total Order Price",style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        SizedBox(width: 40.h,),
                        Text("Tax",style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        SizedBox(width: 40.h,),
                        Text("Delivery ",style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 20.h,),
                        Container(width: 120.w,height: 4.h,color: Colors.black,),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 30.h,),
                        Text(" TOTAL",style: TextStyle(color: Colors.black,fontSize: 6.sp),),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        SizedBox(width: 65.h,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(minimumSize: Size(100.w, 50.h),backgroundColor: Colors.black),
                            onPressed: (){
                            setState(() {
                              getUserinfo(fullname.text.trim(),widget.data.Order, phone1.text.trim(), widget.data.price, phone2.text.trim(), address.text.trim(),
                                  comment.text.trim());


                            });

                            }, child: Text("Confirm The Order")),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        SizedBox(width: 160.h,),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                num=0;
                              });
                            },
                            child: Text(" ⬅ Back",style: TextStyle(color: Colors.black,fontSize: 4.sp),)),
                        SizedBox(width: 10.h,),
                        Container(width: 1.w,height: 40.h,color: Colors.black,),
                        SizedBox(width: 10.h,),
                        Text(" ❌ Cancel",style: TextStyle(color: Colors.black,fontSize: 4.sp),),


                      ],
                    ),


                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.h,
              width:MediaQuery.sizeOf(context).width.w ,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 30.w,),
                  OnHover(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:
                            (contxet)=> DeskTopHomeScrren(data: widget.data,)));
                      },
                      child: Container(
                          height: 70,
                          width: 40.w
                          ,child: Image.network("https://i.imgur.com/6Kb3hg4.gif",fit: BoxFit.fitWidth,)),
                    ),
                  ),
                  SizedBox(width: 50.w,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:
                          (contxet)=> DeskTopHomeScrren(data: widget.data)));
                    },
                    child: OnHover(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text('Home',style: TextStyle(color: Colors.white,fontSize: 4.sp),),
                          SizedBox(height: 10,),
                          Container(width: 20.w,
                            height: 2,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:
                          (contxet)=> DeskTopStoreScreen(data: widget.data)));
                    },
                    child:
                    OnHover(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text('Store',style: TextStyle(color: Colors.white54,fontSize: 4.sp),),
                          SizedBox(height: 10,),
                          Container(width: 20.w,
                            height: 2,
                            color: Colors.white54,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:
                          (contxet)=> DeskTopAboutScreen(data: widget.data)));
                    },
                    child:
                    OnHover(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text('About',style: TextStyle(color:Colors.white54,fontSize: 4.sp),),
                          SizedBox(height: 10,),
                          Container(width: 20.w,
                            height: 2,
                            color: Colors.white54,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:
                          (contxet)=> DeskTopContactScreen(data: widget.data)));

                    },
                    child:
                    OnHover(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text('Contact',style: TextStyle(color: Colors.white54,fontSize: 4.sp),),
                          SizedBox(height: 10,),
                          Container(width: 20.w,
                            height: 2,
                            color: Colors.white54,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 70.w,),

                  GestureDetector(
                      onTap: (){
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding:EdgeInsets.only(bottom:560.h,top: 80.h,right: 70.w,left: 70.w ),
                                // Adjust the left position as needed
                                child:Search(),
                              );
                            },
                          );

                        });
                      },
                      child: OnHover(child: Icon(Icons.search_rounded,size: 6.sp,color: Colors.white,))),
                  SizedBox(width: 8.w,),

                  OnHover(child: Icon(Icons.person_outline,size: 6.sp,color: Colors.white,)),
                  SizedBox(width: 8.w,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:
                            (contxet)=> DeskTopCartScreen(order:widget.data.Order,data: widget.data)));

                      },
                      child:
                      OnHover(child: Icon(Icons.shopping_cart_outlined,size: 6.sp,color: Colors.white,))),
                  SizedBox(width: 8.w,),

                ],
              ),
            ),
            SizedBox(height: 1,),

            if(num==0)...{
              showOrder(),
            },
            if(num==1)...{
              AddressOrder(),
            },
            SizedBox(height: 100,),

            //footer
            Container(
              height: 235,
              width:MediaQuery.sizeOf(context).width ,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:130.h ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.phone,size: 10.sp,color: Colors.white,),
                                SizedBox(width: 3.w,),
                                Text("Phone",style: TextStyle(fontSize:9.sp,color: Colors.white ),)
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Text("+021113252175",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)
                            , SizedBox(height: 10.h,),
                            Text("+021113252175",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)

                          ],
                        ),
                      ),
                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:130.h ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.mail,size: 10.sp,color: Colors.white,),
                                SizedBox(width: 3.w,),
                                Text("Mail",style: TextStyle(fontSize:9.sp,color: Colors.white ),)
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Text("Goldabikia\n@gmail.com",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)

                          ],
                        ),
                      ),

                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:130.h ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.mobile_friendly_outlined,size: 10.sp,color: Colors.white,),
                                SizedBox(width: 3.w,),
                                Text("Whatsapp",style: TextStyle(fontSize:8.sp,color: Colors.white ),)
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Text("+021113252175",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)

                          ],
                        ),
                      ),

                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:130.h ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.phone,size: 10.sp,color: Colors.white,),
                                SizedBox(width: 3.w,),
                                Text("Phone",style: TextStyle(fontSize:9.sp,color: Colors.white ),)
                              ],
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: 13.h,),
                  Row(
                    children: [
                      SizedBox(width: 30.w,),
                      Row(
                        children: [
                          SizedBox(width: 20.w,),
                          Link(
                            uri:_url1,builder:(context,openLink)=>GestureDetector(
                              onTap: openLink,
                              child: Image.network('https://i.imgur.com/49ucOdE.png',scale: 45,)),
                          ),
                          SizedBox(width: 20,),
                          Link(   uri:_url2,builder:(context,openLink)=>GestureDetector(onTap:openLink,child: Image.network('https://i.imgur.com/5ftQTft.png',scale: 25,))),
                          SizedBox(width: 20,),
                          Link(
                              uri:_url3,builder:(context,openLink)=>   GestureDetector(onTap:openLink,child: Image.network('https://i.imgur.com/Tl5VrEe.png',scale: 12,))),
                          SizedBox(width: 20,),




                        ],
                      ),
                      SizedBox(width: 100.w,),
                      Column(
                        children: [
                          Text(
                            "Copyright (c) 2023 Hassanola . All rights Reserved",
                            style: TextStyle(
                              fontSize: 4.sp,
                              color: Colors.white54,
                            ),
                          ),
                          SizedBox(height: 5.h,),
                          Text(
                            "Developed by Hassanola",
                            style: TextStyle(
                              fontSize: 4.sp,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ],),
      ),
    );
  }
}
