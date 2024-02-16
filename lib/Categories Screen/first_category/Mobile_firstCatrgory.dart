import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goldabikia/ProductScreen/MobileProductScreen.dart';

import '../../AboutScreen/MobileAboutScreen.dart';
import '../../ContactScreen/MobileContactScreen.dart';
import '../../Home Screen/MobileHomeScrren.dart';
import '../../StoreScreen/MobileStoreScreen.dart';
import '../../ss.dart';

class Mobile_firstCatagory extends StatefulWidget {
  int wid=1;
  ss data;

  Mobile_firstCatagory({
    required this.wid,
    required this.data,

    Key? key}) : super(key: key);

  @override
  State<Mobile_firstCatagory> createState() => _Mobile_firstCatagoryState();
}

class _Mobile_firstCatagoryState extends State<Mobile_firstCatagory> {
  @override
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
  Widget Category18650battery(){
    return Column(children: [
      Column(
        children: [
          SizedBox(height: 15.h,),
          Text("18650 battery ",style: TextStyle(fontSize: 22.sp),),
          SizedBox(height: 12.h,),
          Text("Capacity : 500 - 3000 mAh",style: TextStyle(fontSize: 15.sp),),
          SizedBox(height: 20.h,),
          Container(
            color: Colors.black,
            width: 250.w,
            height: 3.h,
          ),
        ],
      ),
      SizedBox(height: 25.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 1.1,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/TfkWavF.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 500 - 1000 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("5 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 1.2,data: widget.data,)));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              width: 160.w,
              height: 250.h,

              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/ljLwHLj.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 1000 - 1500 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("15 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 40.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 1.3,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/t95Q5H9.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 1500 - 1800 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("17 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 1.4,data: widget.data,)));
            },

            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              width: 160.w,
              height: 250.h,

              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/AKVG7xl.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 1800 - 2200 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("27 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 40.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 1.5,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/YLeZ10H.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 1800 - 2200 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("23 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 1.6,data: widget.data,)));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              width: 160.w,
              height: 250.h,

              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/ilLBgEd.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 2200 - 2600 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("32 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 40.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 1.7,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/3tNYEFa.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 2600 - 3000 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("37 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),

        ],
      ),
    ],);
  }
  Widget Bettarypack(){
    return Column(children: [
      Column(
        children: [
          SizedBox(height: 15.h,),
          Text("Battery Packs ",style: TextStyle(fontSize: 22.sp),),
          SizedBox(height: 12.h,),
          Text("Capacity : 500 - 3000 mAh",style: TextStyle(fontSize: 15.sp),),
          SizedBox(height: 20.h,),
          Container(
            color: Colors.black,
            width: 250.w,
            height: 3.h,
          ),
        ],
      ),
      SizedBox(height: 25.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 2.1,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/Nv6j7Cn.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text("  12.6 v - 3000 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("250 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 2.2,data: widget.data,)));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              width: 160.w,
              height: 250.h,

              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/RosBU9r.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 12v - 6600 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("400 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 40.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 2.3,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/Dfh0XXx.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 12v - 10000 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("450 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 2.4,data: widget.data,)));
            },

            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              width: 160.w,
              height: 250.h,

              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/Exoldk4.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text("12v - 12000 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("500 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 40.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 2.5,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/RsI2WMW.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" 12 v 15000 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("550 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 2.6,data: widget.data,)));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              width: 160.w,
              height: 250.h,

              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/mrYue96.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" Hoverboard 2500 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("550 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 40.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 2.7,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/LySIZO4.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text("Hoverboard 4500 mAh",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("800 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),

        ],
      ),
    ],);
  }
  Widget Motors(){
    return Column(children: [
      Column(
        children: [
          SizedBox(height: 15.h,),
          Text("Motors ",style: TextStyle(fontSize: 22.sp),),
          SizedBox(height: 12.h,),
          Text("Nema 17 - Nema 23",style: TextStyle(fontSize: 15.sp),),
          SizedBox(height: 20.h,),
          Container(
            color: Colors.black,
            width: 250.w,
            height: 3.h,
          ),
        ],
      ),
      SizedBox(height: 25.h,),
      Row(
        children: [
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 3.1,data: widget.data,)));
            },
            child: Container(
              width: 160.w,
              height: 250.h,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/TSoFcST.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" Nema 17",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("45 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:
                  (contxet)=> MobileProductScreen(wid: 3.2,data: widget.data,)));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
              ),
              width: 160.w,
              height: 250.h,

              child: Column(
                children: [
                  Container(
                    width: 160.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Image.network("https://i.imgur.com/P7LWDcv.png",) ,

                  ),
                  SizedBox(height: 20.h,),
                  Text(" Nema 23",style: TextStyle(fontSize: 17.sp),),
                  SizedBox(height: 12.h,),
                  Text("65 LE",style: TextStyle(fontSize: 13.sp),),



                ],
              ),
            ),
          ),
        ],
      ),


    ],);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(child:
      Column(
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
                Icon(Icons.search_rounded,size: 17.sp,color: Colors.white,),
                SizedBox(width: 14.w,),
                Icon(Icons.person_outline,size: 17.sp,color: Colors.white,),
                SizedBox(width: 8.w,),

              ],
            ),
          ),
          SizedBox(height: 1.h,),
         if(widget.wid==1)...{
           Category18650battery(),
         },
          if(widget.wid==2)...{
            Bettarypack()
          },
          if(widget.wid==3)...{
            Motors()
          },
          SizedBox(height: 110.h,),



        ],
      ),),
    );
  }
}
