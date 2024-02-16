
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:goldabikia/AboutScreen/MobileAboutScreen.dart';
import 'package:goldabikia/CartScreen/MobileCartScreen.dart';
import 'package:goldabikia/Categories%20Screen/first_category/Mobile_firstCatrgory.dart';
import 'package:goldabikia/ContactScreen/MobileContactScreen.dart';
import 'package:goldabikia/Home%20Screen/DeskTopHomeScrren.dart';
import 'package:goldabikia/ProductScreen/MobileProductScreen.dart';
import 'package:goldabikia/StoreScreen/MobileStoreScreen.dart';
import 'package:url_launcher/link.dart';

import '../ss.dart';



class MobileHomeScrren extends StatefulWidget {
  ss data;

   MobileHomeScrren({
     required this.data,

     Key? key}) : super(key: key);

  @override
  State<MobileHomeScrren> createState() => _MobileHomeScrrenState();
}

class _MobileHomeScrrenState extends State<MobileHomeScrren> {
  Uri _url1 = Uri.parse('https://www.facebook.com/hasan.abd.180/');
  Uri _url2 = Uri.parse('https://www.instagram.com/hassanabdl10/');
  Uri _url3 = Uri.parse('https://www.linkedin.com/in/hassan-abdlkhalek-84b95a21b/');

  int count=0;

  @override
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
                        (contxet)=> MobileProductScreen(wid: 1.1,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 1.2,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 1.3,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 1.4,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 1.5,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 1.6,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 1.7,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 2.7,data: widget.data,)));
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
                       (contxet)=> MobileProductScreen(wid: 2.6,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 2.1,data: widget.data,)));
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
                        (contxet)=>MobileProductScreen(wid: 2.2,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 2.3,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 2.4,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 2.5,data: widget.data,)));
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
                        (contxet)=> MobileProductScreen(wid: 3.1,data: widget.data,)));
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
                       (contxet)=> MobileProductScreen(wid: 3.2,data: widget.data,)));
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

              GestureDetector(
                onTap: (){
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding:EdgeInsets.only(bottom:400.h,top: 130.h,right: 105.w,left: 20.w ),
                          // Adjust the left position as needed
                          child:list1(),
                        );
                      },
                    );

                  });
                },
                child: Row(
                  children: [
                    Text("18650 Battery",style: TextStyle(fontSize: 8.sp),),
                    SizedBox(width: 2.w,),
                    Icon(CupertinoIcons.arrowtriangle_down,size: 6.sp,)
                  ],
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding:EdgeInsets.only(bottom:400.h,top: 130.h,right: 185.w,left: 80.w ),
                          // Adjust the left position as needed
                          child:list2(),
                        );
                      },
                    );

                  });
                },
                child: Row(
                  children: [
                    Text("Battery packs",style: TextStyle(fontSize: 8.sp),),
                    SizedBox(width: 2.w,),
                    Icon(CupertinoIcons.arrowtriangle_down,size: 6.sp)
                  ],
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding:EdgeInsets.only(bottom:500.h,top: 130.h,right: 155.w,left: 130.w ),
                          // Adjust the left position as needed
                          child:list3(),
                        );
                      },
                    );

                  });
                },
                child: Row(
                  children: [
                    Text("Motors",style: TextStyle(fontSize: 8.sp),),
                    SizedBox(width: 2.w,),
                    Icon(CupertinoIcons.arrowtriangle_down,size: 6.sp)
                  ],
                ),
              ),
              SizedBox(width: 2.w,),
              Container(

                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              GestureDetector(
                child: Row(
                  children: [
                    Text("Electronics",style: TextStyle(fontSize: 8.sp),),
                    SizedBox(width: 2.w,),
                    Icon(CupertinoIcons.arrowtriangle_down,size: 6.sp)
                  ],
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),
              GestureDetector(
                child: Row(
                  children: [
                    Text("Power bank",style: TextStyle(fontSize: 8.sp),),
                    SizedBox(width: 2.w,),
                    Icon(CupertinoIcons.arrowtriangle_down,size: 6.sp)
                  ],
                ),
              ),
              SizedBox(width: 2.w,),
              Container(
                height: 30.h,
                width: 0.5.w,
                color: Colors.black,
              ),
              SizedBox(width: 2.w,),

              GestureDetector(
                child: Row(
                  children: [
                    Text("Lithium polymer",style: TextStyle(fontSize: 8.sp),),
                    SizedBox(width: 2.w,),
                    Icon(CupertinoIcons.arrowtriangle_down,size: 6.sp)
                  ],
                ),
              ),
              SizedBox(width: 5.w,),

            ],
          ),
        ),
      ) ,
    );
  }
  Widget sist(){
    return Scaffold(
      backgroundColor: Colors.black,
        body: Animate(
        effects: [FadeEffect(),SlideEffect()],
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFFBC02D)),

            color: Colors.black,
          ),
          child: Row(
            children: [
              SizedBox(width: 30.w,),
              CircleAvatar(
                radius: 30.sp,
                backgroundColor: Colors.white,),
              SizedBox(width: 40.w,),
              Column(
                children: [
                  SizedBox(height: 15.h,),
                  Row(children: [
                GestureDetector(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:
                       (contxet)=> MobileHomeScrren(data: widget.data,)));
                 },
                  child: Row(
                    children: [
                      Icon(Icons.home,color: Colors.white,size: 20.sp,),
                      SizedBox(width: 5.w,),
                      Text("Home",style: TextStyle(color: Colors.white,fontSize: 12.sp),),

                    ],
                  ),
                ),
                    SizedBox(width: 60.w,),
                         GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder:
                                (contxet)=> MobileStoreScreen(data: widget.data,)));
                          },
                           child: Row(
                             children: [
                               Icon(Icons.store,color: Colors.white54,size: 20.sp,),
                               SizedBox(width: 5.w,),
                               Text("Store",style: TextStyle(color: Colors.white54,fontSize: 12.sp),),

                             ],
                           ),
                         )
                  ],),
                  SizedBox(height: 5.h,),
                  Row(children: [
                   Container(
                     width: 50.w,
                     height: 2.h,
                     color: Colors.white,
                   ),
                    SizedBox(width: 80.w,),
                    Container(
                      width: 50.w,
                      height: 2.h,
                      color: Colors.white54,
                    ),
                  ],),
                  SizedBox(height: 10.h,),
                  Row(children: [
                          GestureDetector(
                           onTap: (){
                             Navigator.push(context,MaterialPageRoute(builder:
                                 (contxet)=> MobileContactScreen(data: widget.data,)));
                           },
                            child: Row(children: [
                              Icon(Icons.contact_support_outlined,color: Colors.white54,size: 20.sp,),
                              SizedBox(width: 5.w,),

                             Text("Contact",style: TextStyle(color: Colors.white54,fontSize: 12.sp),),

                            ],),
                          ),
                            SizedBox(width: 60.w,),
                    //Icon(Icons.store,color: Colors.white,size: 30,),
                         GestureDetector(
                           onTap: (){
                             Navigator.push(context,MaterialPageRoute(builder:
                                 (contxet)=> MobileAboutScreen(data: widget.data,)));
                           },
                           child: Row(
                             children: [
                               Icon(CupertinoIcons.bubble_left_bubble_right_fill,color: Colors.white54,size: 20.sp,),
                               SizedBox(width: 5.w,),

                               Text("About",style: TextStyle(color: Colors.white54,fontSize: 12.sp),),

                             ],
                           ),
                         )
                  ],),
                  SizedBox(height: 5.h,),

                  Row(children: [
                    Container(
                      width: 50.w,
                      height: 2.h,
                      color: Colors.white54,
                    ),
                    SizedBox(width: 80.w,),
                    Container(
                      width: 50.w,
                      height: 2.h,
                      color: Colors.white54,
                    ),
                  ],),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
  Widget MostSale(){
    return Container(
      width: 200.w,
      height: 250.h,
      // color: Colors.black,
      child: Column(
        children: [
          SizedBox(height: 15.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30.w,),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5.w,),
                      Container(
                        height: 30.h,
                        width: 1.w,
                        color: Colors.black,
                      ),
                      SizedBox(width: 2.w,),
                      Text("Most Sale",style: TextStyle(fontSize: 4.sp,color: Colors.black),),
                    ],
                  ),
                  SizedBox(width: 200.w,),
                  TextButton(onPressed: (){
                    setState(() {
                      count=0;
                    });
                  }, child: Text("Most Orderd",style: TextStyle(fontSize: 3.sp,color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.black),)
                  ,   SizedBox(width: 5.w,),
                  TextButton(onPressed: (){
                    setState(() {
                      count=1;
                    });
                  }, child: Text("Most Sale",style: TextStyle(fontSize: 3.sp,color: Colors.black),),style: TextButton.styleFrom(backgroundColor: Colors.amber),)

                ],
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 30.w,),
              Container(
                width: 70.w,
                height: 120.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 120.h,
                      width: 30.w,
                      color: Colors.grey,
                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 6.sp),),
                      SizedBox(height: 5.h,),
                      Text("name",style: TextStyle(color: Colors.black,fontSize: 4.sp),),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 4.sp),),
                          SizedBox(width: 4.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 3.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              ),
              SizedBox(width: 30.w,),

              Container(
                width: 70.w,
                height: 120.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 120.h,
                      width: 30.w,
                      color: Colors.grey,
                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 6.sp),),
                      SizedBox(height: 5.h,),
                      Text("name",style: TextStyle(color: Colors.black,fontSize: 4.sp),),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 4.sp),),
                          SizedBox(width: 4.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 3.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              ),

              SizedBox(width: 30.w,),
              Container(
                width: 70.w,
                height: 120.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 120.h,
                      width: 30.w,
                      color: Colors.grey,
                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 6.sp),),
                      SizedBox(height: 5.h,),
                      Text("name",style: TextStyle(color: Colors.black,fontSize: 4.sp),),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 4.sp),),
                          SizedBox(width: 4.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 3.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              ),

              SizedBox(width: 30.w,),
            ],
          ),
          SizedBox(height: 20.h,),


        ],
      ),
    );
  }
  Widget MostOrderd(){
    return Container(
      width: 350.w,
    //  height: 280.h,
      //  color: Colors.black,
      child: Column(

        children: [
          SizedBox(height: 5.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10.w,),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5.w,),
                      Container(
                        height: 30.h,
                        width: 1.w,
                        color: Colors.black,
                      ),
                      SizedBox(width: 2.w,),
                      Text("Most Orderd",style: TextStyle(fontSize: 15.sp,color: Colors.black),),
                    ],
                  ),
                  SizedBox(width: 110.w,),
                  TextButton(onPressed: (){
                    setState(() {
                      count=0;
                    });
                  }, child: Text("Most Orderd",style: TextStyle(color: Colors.black,fontSize: 6.sp),),style: TextButton.styleFrom(backgroundColor: Colors.amber),)
                  ,   SizedBox(width: 5.w,),
                  TextButton(onPressed: (){
                    setState(() {
                      count=1;
                    });
                  }, child: Text("Most Sale",style: TextStyle(fontSize:6.sp,color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.black),)


                ],
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Container(
                width: 160.w,
                height: 100.h,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                  child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 55.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,

                      ),
                      child: Image.network("https://i.imgur.com/1OhLh86.png",) ,

                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 17.sp),),
                      SizedBox(height: 8.h,),

                      Text("name",style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                      SizedBox(height: 4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 13.sp),),
                          SizedBox(width: 10.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 8.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              ),
              SizedBox(width: 10.w,),
              Container(
                width: 160.w,
                height: 100.h,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 55.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,

                      ),
                      child: Image.network("https://i.imgur.com/1OhLh86.png",) ,

                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 17.sp),),
                      SizedBox(height: 8.h,),

                      Text("name",style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                      SizedBox(height: 4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 13.sp),),
                          SizedBox(width: 10.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 8.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              )


            
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Container(
                width: 160.w,
                height: 100.h,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 55.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,

                      ),
                      child: Image.network("https://i.imgur.com/1OhLh86.png",) ,

                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 17.sp),),
                      SizedBox(height: 8.h,),


                      Text("name",style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                      SizedBox(height: 4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 13.sp),),
                          SizedBox(width: 10.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 8.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              ),
              SizedBox(width: 10.w,),
              Container(
                width: 160.w,
                height: 100.h,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 55.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,

                      ),
                      child: Image.network("https://i.imgur.com/1OhLh86.png",) ,

                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 17.sp),),
                      SizedBox(height: 8.h,),


                      Text("name",style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                      SizedBox(height: 4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 13.sp),),
                          SizedBox(width: 10.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 8.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              )


            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Container(
                width: 160.w,
                height: 100.h,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 55.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,

                      ),
                      child: Image.network("https://i.imgur.com/1OhLh86.png",) ,

                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 17.sp),),
                      SizedBox(height: 8.h,),


                      Text("name",style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                      SizedBox(height: 4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 13.sp),),
                          SizedBox(width: 10.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 8.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              ),
              SizedBox(width: 10.w,),
              Container(
                width: 160.w,
                height: 100.h,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 55.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,

                      ),
                      child: Image.network("https://i.imgur.com/1OhLh86.png",) ,

                    ),
                    SizedBox(width:5.w,),
                    Column(children: [
                      SizedBox(height: 5.h,),
                      Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.amber,fontSize: 17.sp),),
                      SizedBox(height: 8.h,),

                      Text("name",style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                      SizedBox(height: 4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2.w,),
                          Text("300 LE",style: TextStyle(color: Colors.amber,fontSize: 13.sp),),
                          SizedBox(width: 10.w,),
                          Text("350 LE",style: TextStyle(color: Colors.black87,fontSize: 8.sp),),
                        ],
                      )
                    ],)
                  ],
                ),
              )


            ],
          ),

        ],
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 90.h,
              color: Colors.black,
              child: Row(
                children: [
                  SizedBox(width:20.w),
                  GestureDetector(
                      onTap: (){
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding:EdgeInsets.only(bottom:530.h ),
                              // Adjust the left position as needed
                              child: sist(),
                            );
                          },
                        );

                      });
                      },
                      child: Icon(CupertinoIcons.list_dash,color: Colors.white,)),
                  SizedBox(width:60.w),
                  Column(
                    children: [
                      SizedBox(height: 10.h,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder:
                              (contxet)=> MobileHomeScrren(data: widget.data,)));
                        },
                        child: Container(
                            height: 80.h,
                            width: 140.w
                            ,child: Image.network("https://i.imgur.com/6Kb3hg4.gif",fit: BoxFit.fitWidth,scale: 20,)),
                      ),
                    ],
                  ),
                  SizedBox(width:40.w),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding:EdgeInsets.only(bottom:430.h,top: 80.h,right: 5.w,left: 5.w ),
                                // Adjust the left position as needed
                                child:Search(),
                              );
                            },
                          );

                        });
                      },
                      child: Icon(Icons.search_rounded,size: 17.sp,color: Colors.white,)),
                  SizedBox(width: 14.w,),
                  GestureDetector(
                     onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder:
                           (contxet)=>MobileCartScreen(data: widget.data,order: widget.data.Order,total: widget.data.price,)));
                     },
                      child: Icon(Icons.person_outline,size: 17.sp,color: Colors.white,)),
                  SizedBox(width: 8.w,),

                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200.h,
              color: Colors.black,
              child: Image.network("https://i.imgur.com/KH9SMca.gif",fit: BoxFit.fitWidth,) ,
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                SizedBox(width: MediaQuery.sizeOf(context).width/15,),
                OnHover(
                  child: GestureDetector(
                    onTap: (){
                   //   Navigator.push(context,MaterialPageRoute(builder:
                   //       (contxet)=> DeskTop_firstCategory()));
                      Navigator.push(context,MaterialPageRoute(builder:
                                (contxet)=> Mobile_firstCatagory(wid: 1,data: widget.data,)));
                    },
                    child: Container(
                      width: 90.w,

                      height: 120.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,

                      ),
                      child: Column(children: [
                        Container(
                          width: 90.w,

                          height: 100.h,
                          child:  Image.network("https://i.imgur.com/J3PVA4L.png",) ,
                        ),
                        SizedBox(height: 5.h,),
                        Text("18650 batteries")
                      ],),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width/15,),
                
                OnHover(
                  child: GestureDetector(
                    onTap: (){
                      //   Navigator.push(context,MaterialPageRoute(builder:
                      //       (contxet)=> DeskTop_firstCategory()));
                      Navigator.push(context,MaterialPageRoute(builder:
                          (contxet)=> Mobile_firstCatagory(wid: 2,data: widget.data,)));
                    },
                    child: Container(
                      width: 90.w,

                      height: 120.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,

                      ),
                      child: Column(children: [
                        Container(
                          width: 90.w,

                          height: 100.h,
                          child:  Image.network("https://i.imgur.com/bmnA6hf.png",) ,
                        ),
                        SizedBox(height: 5.h,),
                        Text("battery packs")
                      ],),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width/15,),
                GestureDetector(
                  onTap: (){
                    //   Navigator.push(context,MaterialPageRoute(builder:
                    //       (contxet)=> DeskTop_firstCategory()));
                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> Mobile_firstCatagory(wid: 3,data: widget.data,)));
                  },
                  child: Container(
                    width: 90.w,

                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,

                    ),
                    child: Column(children: [
                      Container(
                        width: 90.w,

                        height: 100.h,
                        child:  Image.network("https://i.imgur.com/UZaenyV.png",) ,
                      ),
                      SizedBox(height: 5.h,),
                      Text("motors")
                    ],),
                  ),
                ),

              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                SizedBox(width: MediaQuery.sizeOf(context).width/15,),
                GestureDetector(
                  onTap: (){
                    //   Navigator.push(context,MaterialPageRoute(builder:
                    //       (contxet)=> DeskTop_firstCategory()));
                  },
                  child: Container(
                    width: 90.w,

                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,

                    ),
                    child: Column(children: [
                      Container(
                        width: 90.w,
                        height: 100.h,
                        child:  Image.network("https://i.imgur.com/8xqDWgo.png",) ,
                      ),
                      SizedBox(height: 5.h,),
                      Text("Electronics")
                    ],),
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width/15,),
                GestureDetector(
                  onTap: (){
                    //   Navigator.push(context,MaterialPageRoute(builder:
                    //       (contxet)=> DeskTop_firstCategory()));
                  },
                  child: Container(
                    width: 90.w,

                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,

                    ),
                    child: Column(children: [
                      Container(
                        width: 90.w,

                        height: 100.h,
                        child:  Image.network("https://i.imgur.com/ZAi6T83.png",) ,
                      ),
                      SizedBox(height: 5.h,),
                      Text("Power bank")
                    ],),
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width/15,),
                GestureDetector(
                  onTap: (){
                    //   Navigator.push(context,MaterialPageRoute(builder:
                    //       (contxet)=> DeskTop_firstCategory()));
                  },
                  child: Container(
                    width: 90.w,

                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,

                    ),
                    child: Column(children: [
                      Container(
                        width: 90.w,
                        height: 100.h,
                        child:  Image.network("https://i.imgur.com/JBfTGbU.png",) ,
                      ),
                      SizedBox(height: 5.h,),
                      Text("Lithium polymer \n      batteries",style: TextStyle(fontSize: 5.sp),)
                    ],),
                  ),
                ),

              ],
            ),
            SizedBox(height: 25.h,),

            Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               if(count==0)...{
                 MostOrderd()
               },if(count==1)...{
                 MostSale()
               },
             ],
           ),
            SizedBox(height: 40.h,),
            Row(
              children: [
                SizedBox(width: 20.w,),
                Container(
                  height: 30.h,
                  width: 1.w,
                  color: Colors.black,
                ),
                SizedBox(width: 2.w,),
                Text("News",style: TextStyle(fontSize: 14.sp,color: Colors.black),),
              ],
            ),
            SizedBox(height: 5.h,),
            Container(
              width: 320.w,
              height: 200.h,
              color: Colors.black,
            ),
            SizedBox(height: 15.h,),
            Container(
              width: 320.w,
              height: 200.h,
              color: Colors.black,
            ),
            SizedBox(height: 15.h,),
            Container(
              width: 320.w,
              height: 200.h,
              color: Colors.black,
            ),
            SizedBox(height: 15.h,),
            Container(
              width: 320.w,
              height: 200.h,
              color: Colors.black,
            ),
            SizedBox(height: 15.h,),

            /*  Container(
              width: 230.w,
              height: 250.h,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 250.h,
                    width: 75.w,
                    color: Colors.black,
                    child: Image.network("https://i.imgur.com/v3dvpCE.gif",fit: BoxFit.fitHeight) ,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 125.h,
                        width:70.w ,
                        color: Colors.amber,
                        child: Image.network("https://i.imgur.com/jU5dLy7.png",fit: BoxFit.fill) ,
                      ),
                      Container(
                        height: 125.h,
                        width:70.w ,
                        color: Colors.orange,
                      ),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 125.h,
                        width:75.w ,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 125.h,
                        width:75.w ,
                        color: Colors.green,
                      ),

                    ],
                  ),

                ],
              ),
            ),


           */
            SizedBox(height: 15.h,),

            //footer
            Container(
              height: 105.h,
              width:MediaQuery.sizeOf(context).width ,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:40.h ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.phone,size: 10.sp,color: Colors.white,),
                                SizedBox(width: 3.w,),
                                Text("Phone",style: TextStyle(fontSize:9.sp,color: Colors.white ),)
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Text("+021113252175",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)
                            , SizedBox(height: 5.h,),
                            Text("+021113252175",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)

                          ],
                        ),
                      ),
                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:40.h ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.mail,size: 10.sp,color: Colors.white,),
                                SizedBox(width: 3.w,),
                                Text("Mail",style: TextStyle(fontSize:9.sp,color: Colors.white ),)
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Text("Goldabikia\n@gmail.com",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)

                          ],
                        ),
                      ),

                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:40.h ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.mobile_friendly_outlined,size: 10.sp,color: Colors.white,),
                                SizedBox(width: 3.w,),
                                Text("Whatsapp",style: TextStyle(fontSize:8.sp,color: Colors.white ),)
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Text("+021113252175",style: TextStyle(fontSize: 5.sp,color: Colors.white54),)

                          ],
                        ),
                      ),

                      SizedBox(width:30.w,),
                      Container(
                        //color: Colors.white,

                        width: 50.w,
                        height:40.h ,
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
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      SizedBox(width: 30.w,),
                      Row(
                        children: [
                          SizedBox(width: 20.w,),
                          Link(
                            uri:_url1,builder:(context,openLink)=>GestureDetector(
                              onTap: openLink,
                              child: Image.network('https://i.imgur.com/49ucOdE.png',scale: 60.sp)),
                          ),
                          SizedBox(width: 20,),
                          Link(   uri:_url2,builder:(context,openLink)=>GestureDetector(onTap:openLink,child: Image.network('https://i.imgur.com/5ftQTft.png',scale: 30.sp,))),
                          SizedBox(width: 20,),
                          Link(
                              uri:_url3,builder:(context,openLink)=>   GestureDetector(onTap:openLink,child: Image.network('https://i.imgur.com/Tl5VrEe.png',scale: 15.sp))),
                          SizedBox(width: 20,),




                        ],
                      ),
                      SizedBox(width: 60.w,),
                      Column(
                        children: [
                          Text(
                            "Copyright (c) 2023 Hassanola . All rights Reserved",
                            style: TextStyle(
                              fontSize: 6.sp,
                              color: Colors.white54,
                            ),
                          ),
                          SizedBox(height: 5.h,),
                          Text(
                            "Developed by Hassanola",
                            style: TextStyle(
                              fontSize: 7.sp,
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
          ],
        ),
      ),

    );
  }
}
/*
class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  List Screens=[
    MobileHomeScrren(),
    MobileStoreScreen(),
    MobileHomeScrren(),
    MobileContactScreen(),
    MobileAboutScreen(),

  ];
 int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.yellow,
        color: Colors.black,
        items: [
          Icon(Icons.home,color: Colors.white,size: 30,),
          Icon(Icons.store,color: Colors.white,size: 30,),
          Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 30,),
          Icon(CupertinoIcons.bubble_left_bubble_right_fill,color: Colors.white,size: 30,),
          Icon(Icons.contact_support_outlined,color: Colors.white,size: 30,),

        ],
        index: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },

      ),
      body: Screens[selectedIndex],
    );
  }
}


 */