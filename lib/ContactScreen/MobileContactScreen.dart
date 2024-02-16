import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/link.dart';

import '../AboutScreen/MobileAboutScreen.dart';
import '../Home Screen/MobileHomeScrren.dart';
import '../StoreScreen/MobileStoreScreen.dart';
import '../ss.dart';

class MobileContactScreen extends StatefulWidget {
  ss data;

   MobileContactScreen({
     required this.data,

     Key? key}) : super(key: key);

  @override
  State<MobileContactScreen> createState() => _MobileContactScreenState();
}

class _MobileContactScreenState extends State<MobileContactScreen> {
  Uri _url1 = Uri.parse('https://www.facebook.com/hasan.abd.180/');
  Uri _url2 = Uri.parse('https://www.instagram.com/hassanabdl10/');
  Uri _url3 = Uri.parse('https://www.linkedin.com/in/hassan-abdlkhalek-84b95a21b/');
  final name=TextEditingController();
  final phone=TextEditingController();
  final massage=TextEditingController();

  Future getUserinfo(String name,String phone,String massage) async{
    await FirebaseFirestore.instance.collection('Massages').add({
      'name':name,
      'phone':phone,
      'massage':massage,

    });

    print('hassan');

  }
  @override
  void dispose(){
    name.dispose();
    phone.dispose();
    massage.dispose();
    super.dispose();
  }
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
                  Icon(Icons.search_rounded,size: 17.sp,color: Colors.white,),
                  SizedBox(width: 14.w,),
                  Icon(Icons.person_outline,size: 17.sp,color: Colors.white,),
                  SizedBox(width: 8.w,),

                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Container(
              height: 280.h,
              width: 350.w,
              child: Column(
                children: [
                  SizedBox(height: 13.h,),
                  Text("Get in touch with us !",style: TextStyle(color: Colors.black,fontSize: 14.sp),),
                  SizedBox(height: 17.h,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width:45.w,),
                          Container(
                            //color: Colors.white,

                            width: 100.w,
                            height:80.h ,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone,size: 14.sp,color: Colors.black,),
                                    SizedBox(width: 3.w,),
                                    Text("Phone",style: TextStyle(fontSize:15.sp,color: Colors.black ),)
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Text("+021113252175",style: TextStyle(fontSize: 10.sp,color: Colors.black54),)
                                , SizedBox(height: 10.h,),
                                Text("+021113252175",style: TextStyle(fontSize: 10.sp,color: Colors.black54),)

                              ],
                            ),
                          ),
                          SizedBox(width:25.w,),
                          Container(
                            height: 50.h,
                            width:1.w ,
                            color: Colors.black,
                          ),

                          SizedBox(width:25.w,),
                          Container(
                            //color: Colors.white,

                            width: 100.w,
                            height:80.h ,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.mail,size: 14.sp,color: Colors.black,),
                                    SizedBox(width: 3.w,),
                                    Text("Mail",style: TextStyle(fontSize:15.sp,color: Colors.black ),)
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Text("Goldabikia\n@gmail.com",style: TextStyle(fontSize: 10.sp,color: Colors.black54),)

                              ],
                            ),
                          ),
                          SizedBox(width:15.w,),

                        ],
                      ),
                        SizedBox(height: 20.h,),
                      Row(
                        children: [
                          SizedBox(width:45.w,),

                          Container(
                            //color: Colors.white,

                            width: 100.w,
                            height:80.h ,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.mobile_friendly_outlined,size: 14.sp,color: Colors.black,),
                                    SizedBox(width: 3.w,),
                                    Text("Whatsapp",style: TextStyle(fontSize:15.sp,color: Colors.black ),)
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Text("+021113252175",style: TextStyle(fontSize: 10.sp,color: Colors.black45),)

                              ],
                            ),
                          ),

                          SizedBox(width:25.w,),
                          Container(
                            height: 50.h,
                            width:1.w ,
                            color: Colors.black,
                          ),
                          SizedBox(width:25.w,),
                          Container(
                            //color: Colors.white,

                            width: 100.w,
                            height:80.h ,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone,size: 12.sp,color: Colors.black,),
                                    SizedBox(width: 3.w,),
                                    Text("Phone",style: TextStyle(fontSize:11.sp,color: Colors.black ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h,),
            Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 50.sp,right: 50.sp),
                child: TextFormField(
                  controller: name,
                  style: TextStyle( color:  Colors.black, fontSize: 10.sp),
                  onChanged: (value){
                    //    note=value;

                  },
                  decoration: InputDecoration(
                    hintText: "Full name",
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
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.only(left: 50.sp,right: 50.sp),
                child: TextFormField(
                   controller: phone,
                  style: TextStyle( color:  Colors.black, fontSize: 10.sp),
                  onChanged: (value){
                    //    note=value;

                  },
                  decoration: InputDecoration(
                    hintText: "Phone Number",
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
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.only(left: 50.sp,right: 50.sp),
                child: TextFormField(
                   controller: massage,
                  style: TextStyle( color:  Colors.black, fontSize: 10.sp),
                  onChanged: (value){
                    //    note=value;

                  },
                  decoration: InputDecoration(
                    hintText: "Massage",
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
              SizedBox(height: 28.h,),
              TextButton(onPressed: (){
                setState(() {
                  getUserinfo(name.text.trim(), phone.text.trim(), massage.text.trim());
                });
              }, child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 7.sp),),style: TextButton.styleFrom(backgroundColor: Colors.black),)
            ],),
            SizedBox(height: 35.h,),
            Column(children: [
              Text("Connect with us !",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
              SizedBox(height: 17.h,),
              Row(

                children: [
                  SizedBox(width: 140.w,),
                  Container(
                    width: 32.w,
                    height: 30.w,
                    color: Colors.black,
                    child: Link(
                      uri:_url1,builder:(context,openLink)=>GestureDetector(
                        onTap: openLink,
                        child: Image.network('https://i.imgur.com/49ucOdE.png',scale: 20.sp,)),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                      width: 32.w,
                      height: 30.w,
                      color: Colors.black,child: Link(   uri:_url2,builder:(context,openLink)=>GestureDetector(onTap:openLink,child: Image.network('https://i.imgur.com/5ftQTft.png',scale: 25.sp,)))),
                  SizedBox(width: 20,),




                ],
              ),

            ],),
            SizedBox(height: 25.h,),

            //footer
            Container(
              height: 70.h,
              width:MediaQuery.sizeOf(context).width ,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 13.h,),
                  Row(
                    children: [
                      SizedBox(width: 30.w,),

                      SizedBox(width: 60.w,),
                      Column(
                        children: [
                          Text(
                            "Copyright (c) 2023 Hassanola . All rights Reserved",
                            style: TextStyle(
                              fontSize: 8.sp,
                              color: Colors.white54,
                            ),
                          ),
                          SizedBox(height: 5.h,),
                          Text(
                            "Developed by Hassanola",
                            style: TextStyle(
                              fontSize: 10.sp,
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
