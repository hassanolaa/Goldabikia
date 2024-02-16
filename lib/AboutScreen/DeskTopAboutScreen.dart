import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goldabikia/ss.dart';
import 'package:url_launcher/link.dart';

import '../CartScreen/DeskTopCartScreen.dart';
import '../ContactScreen/DeskTopContactScreen.dart';
import '../Home Screen/DeskTopHomeScrren.dart';
import '../ProductScreen/DeskTopProductScreen.dart';
import '../StoreScreen/DeskTopStoreScreen.dart';

class DeskTopAboutScreen extends StatefulWidget {
  ss data;

   DeskTopAboutScreen({
     required this.data,

     Key? key}) : super(key: key);

  @override
  State<DeskTopAboutScreen> createState() => _DeskTopAboutScreenState();
}

class _DeskTopAboutScreenState extends State<DeskTopAboutScreen> {
  Uri _url1 = Uri.parse('https://www.facebook.com/hasan.abd.180/');
  Uri _url2 = Uri.parse('https://www.instagram.com/hassanabdl10/');
  Uri _url3 = Uri.parse('https://www.linkedin.com/in/hassan-abdlkhalek-84b95a21b/');
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
                            (contxet)=> DeskTopHomeScrren(data: widget.data)));
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
                          (contxet)=> DeskTopHomeScrren(data: widget.data,)));
                    },
                    child: OnHover(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text('Home',style: TextStyle(color: Colors.white54,fontSize: 4.sp),),
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
                          Text('About',style: TextStyle(color:Colors.white,fontSize: 4.sp),),
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
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 500,
              color: Colors.black,
              child: Image.network("https://i.imgur.com/v3dvpCE.gif",fit: BoxFit.fitWidth,scale: 20,) ,
            ),
            SizedBox(height: 100,),
           Container(
             width: 350.w,
             height: 250.h,
             child: Row(
               children: [
                 SizedBox(width: 15.w,),
                 Column(
                   children: [
                     Text("Goldabikia",style: TextStyle(color: Colors.black,fontSize: 8.sp),),
                     SizedBox(height: 15.h,),
                     Text("\"Goldabikia is a cutting-edge hardware startup focused on revolutionizing the technology landscape.\n With a team of passionate engineers and innovators,\n they specialize in designing and manufacturing advanced consumer electronics and IoT devices.\n Their commitment to quality and sustainability sets them apart in the industry. \nGoldabikia's products are poised to disrupt markets and enhance everyday life.\n Keep an eye on this rising star in the tech world.\"",
                     style: TextStyle(fontSize: 4.sp,color: Colors.black),
                     )
                   ],
                 ),
                 SizedBox(width: 50.w,),
                 Container(width: 90.w,
                 height: 60.w,
                   color: Colors.black,
                 )
               ],
             ),
           ),
            SizedBox(height: 100,),
            Container(
              width: 350.w,
              height: 250.h,
              child: Row(
                children: [
                  SizedBox(width: 15.w,),
                  Container(width: 90.w,
                    height: 60.w,
                    color: Colors.black,
                  ),
                  SizedBox(width: 50.w,),
                  Column(
                children: [
                  Text("Goldabikia",style: TextStyle(color: Colors.black,fontSize: 8.sp),),
                  SizedBox(height: 15.h,),
                  Text("\"Goldabikia is a cutting-edge hardware startup focused on revolutionizing the technology landscape.\n With a team of passionate engineers and innovators,\n they specialize in designing and manufacturing advanced consumer electronics and IoT devices.\n Their commitment to quality and sustainability sets them apart in the industry. \nGoldabikia's products are poised to disrupt markets and enhance everyday life.\n Keep an eye on this rising star in the tech world.\"",
                    style: TextStyle(fontSize: 4.sp,color: Colors.black),
                  )
                ],
              ),
                ],

              ),
            ),
            SizedBox(height: 100,),
            Container(
              width: 350.w,
              height: 150.h,
              child: Row(
                children: [
                  SizedBox(width: 30.w,),
                  Container(
                    width:50.w ,
                    height: 130.h,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 30.h,),
                        Text("+2000",style: TextStyle(color: Colors.white,fontSize: 6.sp),),
                        SizedBox(height: 5.h,),
                        Text("Completed Orders",style: TextStyle(color: Colors.white54,fontSize: 5.sp),),

                      ],
                    ),
                  ),
                  SizedBox(width: 30.w,),
                  Container(
                    width:50.w ,
                    height:130.h,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 30.h,),
                        Text("+700",style: TextStyle(color: Colors.white,fontSize: 6.sp),),
                        SizedBox(height: 5.h,),
                        Text("customer",style: TextStyle(color: Colors.white54,fontSize: 5.sp),),

                      ],
                    ),
                  ),
                  SizedBox(width: 30.w,),
                  Container(
                    width:50.w ,
                    height: 130.h,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 30.h,),
                        Text("+20",style: TextStyle(color: Colors.white,fontSize: 6.sp),),
                        SizedBox(height: 5.h,),
                        Text("Employee",style: TextStyle(color: Colors.white54,fontSize: 5.sp),),

                      ],
                    ),
                  ),
                  SizedBox(width: 30.w,),
                  Container(
                    width:50.w ,
                    height:130.h,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 30.h,),
                        Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.white,fontSize: 7.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5.h,),
                        Text("5 Star Rating",style: TextStyle(color: Colors.white54,fontSize: 5.sp),),

                      ],
                    ),
                  ),
                  SizedBox(width: 30.w,),
                ],
              ),
            ),
            SizedBox(height: 100,),
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

          ],
        ),
      ),
    );
  }
}
