import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/link.dart';

import '../ContactScreen/MobileContactScreen.dart';
import '../Home Screen/MobileHomeScrren.dart';
import '../StoreScreen/MobileStoreScreen.dart';
import '../ss.dart';

class MobileAboutScreen extends StatefulWidget {
  ss data;

   MobileAboutScreen({
     required this.data,

     Key? key}) : super(key: key);

  @override
  State<MobileAboutScreen> createState() => _MobileAboutScreenState();
}

class _MobileAboutScreenState extends State<MobileAboutScreen> {

  Uri _url1 = Uri.parse('https://www.facebook.com/hasan.abd.180/');
  Uri _url2 = Uri.parse('https://www.instagram.com/hassanabdl10/');
  Uri _url3 = Uri.parse('https://www.linkedin.com/in/hassan-abdlkhalek-84b95a21b/');

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
      body: SingleChildScrollView(
        child: Column(children: [
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
          Container(
            width: 350.w,
            height: 350.h,
            child: Column(
              children: [
                SizedBox(height: 15.w,),
                Column(
                  children: [
                    Container(width: 190.w,
                      height: 150.h,
                      color: Colors.black,
                    ),
                    SizedBox(height: 20.h,),
                    Text("Goldabikia",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                    SizedBox(height: 15.h,),
                    Text("\"Goldabikia is a cutting-edge hardware startup focused on revolutionizing the technology landscape.\n With a team of passionate engineers and innovators,\n they specialize in designing and manufacturing advanced consumer electronics and IoT devices.\n Their commitment to quality and sustainability sets them apart in the industry. \nGoldabikia's products are poised to disrupt markets and enhance everyday life.\n Keep an eye on this rising star in the tech world.\"",
                      style: TextStyle(fontSize: 8.sp,color: Colors.black),
                    )
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 15.h,),
          Container(
            width: 350.w,
            height: 230.h,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 45.w,),
                    Container(
                      width:100.w ,
                      height: 90.h,
                      color: Colors.black,
                      child: Column(
                        children: [
                          SizedBox(height: 30.h,),
                          Text("+2000",style: TextStyle(color: Colors.white,fontSize: 11.sp),),
                          SizedBox(height: 5.h,),
                          Text("Completed Orders",style: TextStyle(color: Colors.white54,fontSize: 10.sp),),

                        ],
                      ),
                    ),
                    SizedBox(width: 30.w,),
                    Container(
                      width:100.w ,
                      height:90.h,
                      color: Colors.black,
                      child: Column(
                        children: [
                          SizedBox(height: 30.h,),
                          Text("+700",style: TextStyle(color: Colors.white,fontSize:11.sp),),
                          SizedBox(height: 5.h,),
                          Text("customer",style: TextStyle(color: Colors.white54,fontSize: 10.sp),),

                        ],
                      ),
                    ),
                    SizedBox(width: 30.w,),
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(children: [
                  SizedBox(width: 45.w,),

                  Container(
                    width:100.w ,
                    height: 90.h,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 30.h,),
                        Text("+20",style: TextStyle(color: Colors.white,fontSize:11.sp),),
                        SizedBox(height: 5.h,),
                        Text("Employee",style: TextStyle(color: Colors.white54,fontSize: 10.sp),),

                      ],
                    ),
                  ),
                  SizedBox(width: 30.w,),
                  Container(
                    width:100.w ,
                    height:90.h,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 30.h,),
                        Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.white,fontSize:11.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5.h,),
                        Text("5 Star Rating",style: TextStyle(color: Colors.white54,fontSize: 10.sp),),

                      ],
                    ),
                  ),
                  SizedBox(width: 30.w,),
                ],),

              ],
            ),
          ),

          SizedBox(height: 50.h,),
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

        ],),
      ),
    );
  }
}
