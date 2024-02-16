import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AboutScreen/MobileAboutScreen.dart';
import '../ContactScreen/MobileContactScreen.dart';
import '../Home Screen/MobileHomeScrren.dart';
import '../ss.dart';

class MobileStoreScreen extends StatefulWidget {
  ss data;

  MobileStoreScreen({
    required this.data,

    Key? key}) : super(key: key);

  @override
  State<MobileStoreScreen> createState() => _MobileStoreScreenState();
}

class _MobileStoreScreenState extends State<MobileStoreScreen> {
  bool _showContainerA = true;
  @override
  void initState() {
    super.initState();
    // Start a timer to automatically toggle containers every 2 seconds.
    Timer.periodic(Duration(seconds: 5), (timer) {
      _toggleContainer();
    });
  }

  void _toggleContainer() {
    setState(() {
      _showContainerA = !_showContainerA;
    });
  }
  @override
  Widget sist(){
    return Scaffold(
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SingleChildScrollView(child:
        Column(children: [
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
          SizedBox(height: 15.h,),
          Container(
            width: 350.w,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(

                  children: [
                    SizedBox(width: 10.w,),
                    Container(
                      width: 110.w,
                      height: 90.h,
                      color: Colors.black,
                      child: Image.network("https://i.imgur.com/RW6RJtN.png",fit: BoxFit.fill,) ,
                    ),
                    SizedBox(width: 5.w,),

                    Container(
                      width: 110.w,
                      height: 90.h,
                      color: Colors.green,
                      child: Image.network("https://i.imgur.com/gkKs4A9.png",fit: BoxFit.fill,) ,

                    ),
                    SizedBox(width: 5.w,),

                    Container(
                      width: 110.w,
                      height: 90.h,
                      color: Colors.orange,
                      child: Image.network("https://i.imgur.com/RW6RJtN.png",fit: BoxFit.fill,) ,

                    ),
                  ],),

              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
            width: 300.w,
          //  height: 175.h,
            // color: Colors.grey,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 5.w,),
                    Container(
                      height: 30.h,
                      width: 2.w,
                      color: Colors.black,
                    ),
                    SizedBox(width: 8.w,),
                    Text("18650 battery",style: TextStyle(fontSize: 25.sp,color: Colors.black),),
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10.w,),

                    Container(
                      width: 90.w,
                      height: 135.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,


                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,


                            ),
                            width: 90.w,
                            height: 75.h,
                            child: Image.network("https://i.imgur.com/3tNYEFa.png",) ,

                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              SizedBox(width:5.w ,),
                              Text("500 - 1000 mAh ",style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                            ],
                          ),
                          SizedBox(height: 9.h,),
                          Row(
                            children: [
                              SizedBox(width:10.w ,),
                              Text("5 LE",style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 90.w,
                      height: 135.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,


                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,


                            ),
                            width: 90.w,
                            height: 75.h,
                            child: Image.network("https://i.imgur.com/YLeZ10H.png",) ,

                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              SizedBox(width:5.w ,),
                              Text("1000 - 1500 mAh",style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                            ],
                          ),
                          SizedBox(height: 9.h,),
                          Row(
                            children: [
                              SizedBox(width:10.w ,),
                              Text("15 LE",style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 90.w,
                      height: 135.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,


                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,


                            ),
                            width: 90.w,
                            height: 75.h,
                            child: Image.network("https://i.imgur.com/t95Q5H9.png",) ,

                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              SizedBox(width:5.w ,),
                              Text("1500 - 1800 mAh ",style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                            ],
                          ),
                          SizedBox(height: 9.h,),
                          Row(
                            children: [
                              SizedBox(width:10.w ,),
                              Text("17 LE",style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10.w,),

                    Container(
                      width: 90.w,
                      height: 135.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,


                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,


                            ),
                            width: 90.w,
                            height: 75.h,
                            child: Image.network("https://i.imgur.com/3tNYEFa.png",) ,

                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              SizedBox(width:5.w ,),
                              Text("1800 - 2200 mAh ",style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                            ],
                          ),
                          SizedBox(height: 9.h,),
                          Row(
                            children: [
                              SizedBox(width:10.w ,),
                              Text("27 LE",style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 90.w,
                      height: 135.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,


                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,


                            ),
                            width: 90.w,
                            height: 75.h,
                            child: Image.network("https://i.imgur.com/3tNYEFa.png",) ,

                          ),
                          SizedBox(height: 6.h,),
                          Row(
                            children: [
                              SizedBox(width:5.w ,),
                              Text("1800 - 2200 mAh \nchina",style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                            ],
                          ),
                          SizedBox(height: 3.h,),
                          Row(
                            children: [
                              SizedBox(width:10.w ,),
                              Text("23 LE",style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 90.w,
                      height: 135.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,


                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,


                            ),
                            width: 90.w,
                            height: 75.h,
                            child: Image.network("https://i.imgur.com/3tNYEFa.png",) ,

                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              SizedBox(width:5.w ,),
                              Text("2200 - 2600 mAh ",style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                            ],
                          ),
                          SizedBox(height: 9.h,),
                          Row(
                            children: [
                              SizedBox(width:10.w ,),
                              Text("32 LE",style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            width: 330.w,
            height: 150.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    height: 55.h,
                    width: 1.w,
                    color: Colors.black,
                  ),
                  SizedBox(width: 4.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bettery packs"),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          SizedBox(width: 1.w,),
                          Text("Capacity : 500 - 3000 mAh"),
                        ],
                      ),
                    ],
                  )
                ],),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      width: 78.w,
                      height:90.h,
                      //    color: Colors.grey,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),

                          color:Colors.black,
                          image: DecorationImage(

                            image:NetworkImage('https://i.imgur.com/Nv6j7Cn.png'),
                            //   fit: BoxFit.cover
                          )
                      ),
                      child:  Row(
                        children: [
                          SizedBox(width: 5.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 42.h,width: 10.w,),
                              Text("12v - 3000 mAh",style: TextStyle(fontSize:9.sp,color: Colors.white),),
                              SizedBox(height: 5.h,),
                              Row(
                                children: [
                                SizedBox(width: 10.w,),
                                  Text("250 LE",style: TextStyle(color: Colors.white,fontSize: 11.sp),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      width: 78.w,
                      height:90.h,
                      //    color: Colors.grey,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),

                          color:Colors.black,
                          image: DecorationImage(

                            image:NetworkImage('https://i.imgur.com/RosBU9r.png'),
                            //   fit: BoxFit.cover
                          )
                      ),
                      child:  Row(
                        children: [
                          SizedBox(width: 5.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 42.h,width: 10.w,),
                              Text("12v - 6600 mAh ",style: TextStyle(fontSize:9.sp,color: Colors.white),),
                              SizedBox(height: 5.h,),
                              Row(
                                children: [
                                  SizedBox(width: 10.w,),
                                  Text("400 LE",style: TextStyle(color: Colors.white,fontSize: 11.sp),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      width: 78.w,
                      height:90.h,
                      //    color: Colors.grey,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),

                          color:Colors.black,
                          image: DecorationImage(

                            image:NetworkImage('https://i.imgur.com/Dfh0XXx.png'),
                            //   fit: BoxFit.cover
                          )
                      ),
                      child:  Row(
                        children: [
                          SizedBox(width: 5.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 42.h,width: 10.w,),
                              Text("12v - 10000 mAh ",style: TextStyle(fontSize:9.sp,color: Colors.white),),
                              SizedBox(height: 5.h,),
                              Row(
                                children: [
                                  SizedBox(width: 10.w,),
                                  Text("450 LE",style: TextStyle(color: Colors.white,fontSize: 11.sp),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      width: 78.w,
                      height:90.h,
                      //    color: Colors.grey,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),

                          color:Colors.black,
                          image: DecorationImage(

                            image:NetworkImage('https://i.imgur.com/Exoldk4.png'),
                            //   fit: BoxFit.cover
                          )
                      ),
                      child:  Row(
                        children: [
                          SizedBox(width: 5.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 42.h,width: 10.w,),
                              Text("12v - 12000 mAh",style: TextStyle(fontSize:9.sp,color: Colors.white),),
                              SizedBox(height: 5.h,),
                              Row(
                                children: [
                                  SizedBox(width: 10.w,),
                                  Text("500 LE",style: TextStyle(color: Colors.white,fontSize: 11.sp),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),



                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 20.h,),
          //
          Center(child: AnimatedSwitcher(duration:  Duration(seconds: 5),
          child: _showContainerA
              ?  Animate(
            effects: [FadeEffect(),SlideEffect()],
            child: Container(
            width: 320.w,
            height: 110.h,
            child: Column(
                children: [

                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey,

                        ),
                        width: 155.w,
                        height:100.h,
                        child: Image.network("https://i.imgur.com/RW6RJtN.png",fit: BoxFit.fill,) ,

                      ),
                      SizedBox(width: 3.w,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey,

                        ),
                        width: 155.w,
                        height: 100.h,

                        child: Image.network("https://i.imgur.com/gkKs4A9.png",fit: BoxFit.fill,) ,

                      ),


                    ],
                  ),
                ],
            ),
          ),
              )
              :  Animate(
            effects: [FadeEffect(duration: Duration(milliseconds: 500) ),SlideEffect(duration: Duration(milliseconds: 500))],
            child: Container(
            width: 320.w,
            height: 110.h,
            child: Column(
                children: [

                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey,

                        ),
                        width: 155.w,
                        height:100.h,
                        child: Image.network("https://i.imgur.com/RW6RJtN.png",fit: BoxFit.fill,) ,

                      ),
                      SizedBox(width: 3.w,),



                    ],
                  ),
                ],
            ),
          ),
              ),
          ),),
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



          SizedBox(height: 50.h,),
        ],)
        ,),
    );
  }
}
