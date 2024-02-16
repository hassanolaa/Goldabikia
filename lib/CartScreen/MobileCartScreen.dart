import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../AboutScreen/MobileAboutScreen.dart';
import '../ContactScreen/MobileContactScreen.dart';
import '../Home Screen/MobileHomeScrren.dart';
import '../StoreScreen/MobileStoreScreen.dart';
import '../ss.dart';

class MobileCartScreen extends StatefulWidget {
  ss data;
  String order;
  int total;
   MobileCartScreen({
     required this.data,
     required this.order,
     required this.total,
     Key? key}) : super(key: key);

  @override
  State<MobileCartScreen> createState() => _MobileCartScreenState();
}

class _MobileCartScreenState extends State<MobileCartScreen> {
  int num=1;
  final fullname=TextEditingController();
  final phone1=TextEditingController();
  final phone2=TextEditingController();
  final address=TextEditingController();
  final comment=TextEditingController();
  String Governorate="Governorate";
  int delivery=0;

  Future getUserinfo(String order,String phone1,int total,String phone2,String address,String comment) async{
    await FirebaseFirestore.instance.collection('Orders').add({
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
  @override
  Widget delivelyCost(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,

      ),
      width: 320.w,
      height: 360.h,

      child: Column(
        children: [
          SizedBox(height: 20.h,),
          Text("Select your governorate",style: TextStyle(fontSize: 14.sp),),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Column(children: [
                SizedBox(height: 10.h,),
                Text("Greater Cairo Area",style: TextStyle(fontSize: 12.sp),),
                SizedBox(height: 10.h,),
                Container(width: 95.w,height: 2.h,color: Colors.black,)
              ],),
              SizedBox(width: 110.w,),
              Text("45 LE",style: TextStyle(fontSize: 11.sp),)
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
                child: Text("Cairo",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 20.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Giza";
                    delivery=45;
                  });
                },
                child: Text("Giza",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 20.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Qalyubia";
                    delivery=45;
                  });
                },
                child: Text("Qalyubia",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
          ],),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Column(children: [
                SizedBox(height: 10.h,),
                Text("coastal governorates",style: TextStyle(fontSize: 12.sp),),
                SizedBox(height: 10.h,),
                Container(width: 105.w,height: 2.h,color: Colors.black,)
              ],),
              SizedBox(width: 105.w,),
              Text("60 LE",style: TextStyle(fontSize: 11.sp),)
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
                child: Text("Alexandria",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Port Said";
                    delivery=60;
                  });
                },
                child: Text("Port Said",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Suez";
                    delivery=60;
                  });
                },
                child: Text("Suez",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Ismailia";
                    delivery=60;
                  });
                },
                child: Text("Ismailia",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Fayyum";
                    delivery=60;
                  });
                },
                child: Text("Fayyum",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Beheira";
                    delivery=60;
                  });
                },
                child: Text("	Beheira",style: TextStyle(fontSize: 10.sp),)),

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
                child: Text("Sharqia",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Dakahlia";
                    delivery=60;
                  });
                },
                child: Text("Dakahlia",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Kafr el-Sheikh";
                    delivery=60;
                  });
                },
                child: Text("Kafr el-Sheikh",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Monufia";
                    delivery=60;
                  });
                },
                child: Text("Monufia",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Matruh";
                    delivery=60;
                  });
                },
                child: Text("Matruh",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Gharbia";
                    delivery=60;
                  });
                },
                child: Text("Gharbia",style: TextStyle(fontSize: 10.sp),)),

          ],),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 10.w,),
              Column(children: [
                SizedBox(height: 10.h,),
                Text("Upper governorates",style: TextStyle(fontSize: 12.sp),),
                SizedBox(height: 10.h,),
                Container(width: 105.w,height: 2.h,color: Colors.black,)
              ],),
              SizedBox(width: 110.w,),
              Text("70 LE",style: TextStyle(fontSize: 11.sp),)
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
                child: Text("Red Sea",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Minya";
                    delivery=70;
                  });
                },
                child: Text("Minya",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Qena";
                    delivery=70;
                  });
                },
                child: Text("Qena",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Asyut";
                    delivery=70;
                  });
                },
                child: Text("Asyut",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Sohag";
                    delivery=70;
                  });
                },
                child: Text("Sohag",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Beni suef";
                    delivery=70;
                  });
                },
                child: Text("Beni Suef",style: TextStyle(fontSize: 10.sp),)),

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
                child: Text("Aswan",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    Governorate="Luxor";
                    delivery=70;
                  });
                },
                child: Text("Luxor",style: TextStyle(fontSize: 10.sp),)),
            SizedBox(width: 10.w,),

          ],),

        ],
      ),
    );
  }
  Widget Adrees(){
    return SingleChildScrollView(child:
    Column(children: [
     Column(children: [
       SizedBox(height:30.h ,),
       Padding(
         padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
         child: TextFormField(
            controller: fullname,
           style: TextStyle( color:  Colors.black, fontSize: 12.sp),
           onChanged: (value){
             //    note=value;

           },
           decoration: InputDecoration(
             hintText: "full name",
             hintStyle: TextStyle(color:Colors.black,fontSize: 12.sp ),
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
           style: TextStyle( color:  Colors.black, fontSize: 12.sp),
           onChanged: (value){
             //    note=value;

           },
           decoration: InputDecoration(
             hintText: "Primary phone number",
             hintStyle: TextStyle(color:Colors.black,fontSize: 12.sp  ),
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
           style: TextStyle( color:  Colors.black, fontSize: 12.sp),
           onChanged: (value){
             //    note=value;

           },
           decoration: InputDecoration(
             hintText: "Secondary phone number",
             hintStyle: TextStyle(color:Colors.black,fontSize: 12.sp  ),
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
       /*
       Padding(
         padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
         child: TextFormField(
           // controller: note1,
           style: TextStyle( color:  Colors.black, fontSize: 12.sp),
           onChanged: (value){
             //    note=value;

           },
           decoration: InputDecoration(
             hintText: "Governorate",
             hintStyle: TextStyle(color:Colors.black ,fontSize: 12.sp ),
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
       SizedBox(height:20.h ,),
       Padding(
         padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
         child: TextFormField(
           controller: address,
           style: TextStyle( color:  Colors.black, fontSize: 12.sp),
           onChanged: (value){
             //    note=value;

           },
           decoration: InputDecoration(
             hintText: "Address",
             hintStyle: TextStyle(color:Colors.black ,fontSize: 12.sp ),
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
             Text(Governorate,style: TextStyle(fontSize: 18.sp),),
             SizedBox(width: 140.w,),
             Icon(CupertinoIcons.list_dash,size: 16.sp,color: Colors.black,)
           ],
         ),
       ),
       SizedBox(height:20.h ,),
       Padding(
         padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
         child: TextFormField(
           controller: comment,
           style: TextStyle( color:  Colors.black, fontSize: 12.sp),
           onChanged: (value){
             //    note=value;

           },
           decoration: InputDecoration(
             hintText: "Note",
             hintStyle: TextStyle(color:Colors.black,fontSize: 12.sp  ),
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
      SizedBox(height: 40.h,),
      Container(width: 250.w,
        height: 2.h,
        color: Colors.black,
      ),
      Column(
        crossAxisAlignment:   CrossAxisAlignment.start,
        children: [

          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 70.h,),
              Text("Total Order Price",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 70.h,),
              Text("Tax",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 70.h,),
              Text("Delivery ",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
            ],
          ),
          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 60.h,),
              Container(width: 200.w,height: 4.h,color: Colors.black,),
            ],
          ),
          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 70.h,),
              Text(" TOTAL",style: TextStyle(color: Colors.black,fontSize: 22.sp),),
            ],
          ),
          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 115.w,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(70.w, 50.h),backgroundColor: Colors.black),
                  onPressed: (){
                    setState(() {
                      setState(() {
                        getUserinfo(widget.data.Order, phone1.text.trim(), widget.data.price, phone2.text.trim(), address.text.trim(),
                            comment.text.trim());
                      });
                    });
                  }, child: Text("Confirm The Order")),
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 100.w,),
              GestureDetector(
                  onTap: (){
                    setState(() {
                        num=1;
                    });
                  },
                  child: Text(" ⬅ Back",style: TextStyle(color: Colors.black,fontSize: 14.sp),)),
              SizedBox(width: 10.h,),
              Container(width: 1.w,height: 40.h,color: Colors.black,),
              SizedBox(width: 10.h,),
              GestureDetector(
                  onTap: (){},
                  child: Text(" ❌ Cancel",style: TextStyle(color: Colors.black,fontSize: 14.sp),)),

            ],
          ),


        ],
      ),
    ],) ,);
  }
  Widget seeOrder(){
    return SingleChildScrollView(child:
     Column(children: [
       Text(widget.order,style: TextStyle(fontSize: 20.sp),),
       SizedBox(height: 40.h,),
       Container(width: 250.w,
         height: 2.h,
         color: Colors.black,
       ),
       Column(
         crossAxisAlignment:   CrossAxisAlignment.start,
         children: [

           SizedBox(height: 30.h,),
           Row(
             children: [
               SizedBox(width: 70.h,),
               Text("Total Order Price",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
               SizedBox(width: 140.h,),
               Text(widget.total.toString(),style: TextStyle(color: Colors.black,fontSize: 15.sp),),
             ],
           ),
           SizedBox(height: 20.h,),
           Row(
             children: [
               SizedBox(width: 70.h,),
               Text("Tax",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
             ],
           ),
           SizedBox(height: 20.h,),
           Row(
             children: [
               SizedBox(width: 70.h,),
               Text("Delivery ",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
             ],
           ),
           SizedBox(height: 30.h,),
           Row(
             children: [
               SizedBox(width: 60.h,),
               Container(width: 200.w,height: 4.h,color: Colors.black,),
             ],
           ),
           SizedBox(height: 30.h,),
           Row(
             children: [
               SizedBox(width: 70.h,),
               Text(" TOTAL",style: TextStyle(color: Colors.black,fontSize: 22.sp),),
             ],
           ),
           SizedBox(height: 30.h,),
           Row(
             children: [
               SizedBox(width: 115.w,),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(minimumSize: Size(70.w, 50.h),backgroundColor: Colors.black),
                   onPressed: (){
                     setState(() {
                         num=2;
                     });
                   }, child: Text("Process To Checkout")),
             ],
           ),
           SizedBox(height: 20.h,),
           Row(
             children: [
               SizedBox(width: 100.w,),
               Text(" ❌ Cancel",style: TextStyle(color: Colors.black,fontSize: 14.sp),),
               SizedBox(width: 10.h,),
               Container(width: 1.w,height: 40.h,color: Colors.black,),
               SizedBox(width: 10.h,),
               Text(" ❌ Cancel",style: TextStyle(color: Colors.black,fontSize: 14.sp),),

             ],
           ),


         ],
       ),
     ],) ,);
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
          SizedBox(height: 40.h,),
         if(num==1)...{
           seeOrder(),
         },
          if(num==2)...{
            Adrees(),
          }
        ],),
      ),
    );
  }
}
