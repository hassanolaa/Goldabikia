import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:goldabikia/CartScreen/DeskTopCartScreen.dart';
import 'package:goldabikia/ss.dart';
import 'package:url_launcher/link.dart';

import '../AboutScreen/DeskTopAboutScreen.dart';
import '../Categories Screen/first_category/DeskTop_firstCategory.dart';
import '../ContactScreen/DeskTopContactScreen.dart';
import '../Home Screen/DeskTopHomeScrren.dart';
import '../StoreScreen/DeskTopStoreScreen.dart';

class DeskTopProductScreen extends StatefulWidget {
  double wid=0;
   ss data;
   DeskTopProductScreen({
    required this.data,
    required this.wid,

     }) ;

  @override
  State<DeskTopProductScreen> createState() => _DeskTopProductScreenState();
}

class _DeskTopProductScreenState extends State<DeskTopProductScreen> {
  Uri _url1 = Uri.parse('https://www.facebook.com/hasan.abd.180/');
  Uri _url2 = Uri.parse('https://www.instagram.com/hassanabdl10/');
  Uri _url3 = Uri.parse('https://www.linkedin.com/in/hassan-abdlkhalek-84b95a21b/');
  String order="";
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
  Widget P1_1(String CollectionName,String name,String image1,String image2,String image3,String price,String brief,bool stock,
      String relimage1, String relimage1name, String relimage2,String relimage2name,String relimage3,String relimage3name,double reimage1,double reimage2,double reimage3,
     int pricee ){
    int Count=0;
    int num=0;
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
    return StatefulBuilder(
      builder: (context,mystatefun) {
        return Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 700.h,
            //   color: Colors.grey,
            child: Row(
              children: [
                SizedBox(width: 20.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h,),
                   if(num==0)...{
        Container(
        width: 150.w,
        height: 400.h,
        color: Colors.black,
        child: Image.network(image1,)

        ),
                   },  if(num==1)...{
        Container(
        width: 150.w,
        height: 400.h,
        color: Colors.black,
        child: Image.network(image2,)

        )
                    },  if(num==2)...{
        Container(
        width: 150.w,
        height: 400.h,
        color: Colors.black,
        child: Image.network(image3,)

        )
                    },

                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //SizedBox(width: 5.w,),
                        GestureDetector(
                        onTap:(){
                          mystatefun(()=>num=0);
                        } ,
                          child: Container(
                              width: 40.w,
                              height: 150.h,
                              color: Colors.black,
                              child: Image.network(image1,fit: BoxFit.fitWidth,)
                          ),
                        ),
                        SizedBox(width: 15.w,),

                        GestureDetector(
                          onTap:(){
                            mystatefun(()=>num=1);

                          } ,
                          child: Container(
                            width: 40.w,
                            height: 150.h,
                            color: Colors.black,
                              child: Image.network(image2,fit: BoxFit.fitWidth,)

                          ),
                        ),
                        SizedBox(width: 15.w,),

                        GestureDetector(
                          onTap:(){
                            mystatefun(()=>num=2);

                          } ,
                          child: Container(
                            width: 40.w,
                            height: 150.h,
                            color: Colors.black,
                              child: Image.network(image3,fit: BoxFit.fitWidth,)

                          ),
                        ),
                      ],)
                  ],
                ),
                SizedBox(width: 20.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h,),
                    Text(name,style: TextStyle(color: Colors.black,fontSize: 12.sp),),
                    SizedBox(height: 5.h,),
                    Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.yellowAccent,fontSize: 7.sp),),

                    SizedBox(height: 5.h,),
                    Text(price,style: TextStyle(color: Colors.black87,fontSize: 10.sp),),
                    SizedBox(height: 20.h,),
                    Text("Random Access Memory (RAM): In the context of computers, RAM stands for Random Access Memory.\n It is a type of computer memory that is used to store data that \nis actively being used or processed by the CPU (Central Processing Unit). ",style: TextStyle(color: Colors.black87,fontSize: 3.sp),),
                    SizedBox(height: 50.h,),
                    Row(
                      children: [
                        Row(children: [
                          SizedBox(width: 60,),

                          IconButton(onPressed: (){
                            mystatefun((){
                              Count++;
                              //    pricee=Count*pricee;
                            });

                          }, icon:Icon(CupertinoIcons.plus,size: 8.sp,)),
                          SizedBox(width: 5.w,),

                          Text(Count.toString(),style: TextStyle(fontSize: 9.5.sp,fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.w,),

                          IconButton(onPressed: (){
                            mystatefun(()=>Count--);

                          },

                              icon:Icon(CupertinoIcons.minus,size: 8.sp,)),




                        ],),
                        SizedBox(width: 20.w,),

                    if(stock==true)...{
                      TextButton(onPressed: (){
                   //     Navigator.push(context,MaterialPageRoute(builder:
                       //     (contxet)=> DeskTopCartScreen()));
                        pricee=Count*pricee;
                        order=order+"x"+Count.toString()+"- "+name+"                    "+pricee.toString()+"   \n";
                      //  print(order);

                       mystatefun((){

                    widget.data.Order=widget.data.Order+order;
                      widget.data.sc();
                     widget.data.price=widget.data.price+pricee;
                       });


                        /*
                        setState(() {
                          ss().SSS(order);
                          print(ss().Order);
                        });
                        */

                        print("//");

                      //  print(ss().Order);
                        SmartDialog.show(builder: (context) {
                          return cartAdd();
                        });

                      }, child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 6.sp),),style: TextButton.styleFrom(backgroundColor: Colors.black,)
                      )
                    },if(stock==false)...{
                          TextButton(onPressed: (){
                           // Navigator.push(context,MaterialPageRoute(builder:
                           //     (contxet)=> DeskTopCartScreen()));

                          }, child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 6.sp),),style: TextButton.styleFrom(backgroundColor: Colors.black38,)
                          )

                        }
                      ],),
                    SizedBox(height: 5.h,),
                    if(stock==true)...{
                      Text("In Stock",style: TextStyle(color: Colors.black87,fontSize: 3.sp),),

                    },if(stock==false)...{
                      Text("Not Available",style: TextStyle(color: Colors.redAccent,fontSize: 3.sp),),

                    },
                    SizedBox(height: 50.h,),
                    Container(
                      width: 150.w,
                      height: 300.h,
                      //       color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.h,),
                          Row(children: [
                            SizedBox(width: 10.w,),
                            Column(
                              children: [
                                // SizedBox(height: 30,),
                                Text('Properties',style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                                SizedBox(height: 10,),
                                Container(width: 20.w,
                                  height: 2.h,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            SizedBox(width: 10.w,),
                            Column(
                              children: [
                                // SizedBox(height: 30,),
                                Text('Home',style: TextStyle(color: Colors.black38,fontSize: 5.sp),),
                                SizedBox(height: 10,),
                                Container(width: 20.w,
                                  height: 2.h,
                                  color: Colors.black38,
                                )
                              ],
                            ),
                          ],),

                          Container(
                            width: 150.w,
                            height: 3.h,
                            color: Colors.black38,
                          ),
                          SizedBox(height: 10.h,),
                          Text(brief,style: TextStyle(color: Colors.black45,fontSize: 3.sp),),

                        ],
                      ),
                    ),





                  ],
                )
              ],),
          ),
          SizedBox(height: 100.h,),
          Container(
            width: 300.w,
            height: 300.h,
            //   color: Colors.grey,
            child: Column(
              children: [
                Text("Related Products",style: TextStyle(color: Colors.black,fontSize: 12.sp),),
                SizedBox(height: 40.h,),
                Row(
                  children: [
                    SizedBox(width: 30.w,),
                    GestureDetector(
                     onTap: (){
                       setState(() {
                         widget.wid=reimage1;
                       });
                     },
                      child: Container(
                        width: 60.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:NetworkImage(relimage1),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 150.h,),
                            Text(relimage1name,style: TextStyle(color: Colors.white,fontSize: 6.sp),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                         widget.wid=reimage2;
                        });
                      },
                      child: Container(
                        width: 60.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:NetworkImage(relimage2),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 150.h,),
                            Text(relimage2name,style: TextStyle(color: Colors.white,fontSize: 6.sp),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          widget.wid=reimage3;
                        });
                      },
                      child: Container(
                        width: 60.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:NetworkImage(relimage3),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 150.h,),
                            Text(relimage3name,style: TextStyle(color: Colors.white,fontSize: 6.sp),),
                          ],
                        ),
                      ),
                    ),
                  ],)
              ],
            ),
          ),
        ],
        );
      }
    );
  }

  Widget cartAdded(){
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
                      (contxet)=> DeskTopCartScreen(order:order,data: widget.data)));
                }, child: Text("Go To The Cart"))),

          ],)
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
                        ss nn=widget.data;

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
                      ss nn=widget.data;

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
                            (contxet)=> DeskTopCartScreen(order: widget.data.Order,data: widget.data)));

                      },
                      child:
                      OnHover(child: Icon(Icons.shopping_cart_outlined,size: 6.sp,color: Colors.white,))),
                  SizedBox(width: 8.w,),

                ],
              ),
            ),
            SizedBox(width: 1.w,),


            if(widget.wid==1.1)...{
              P1_1("18650 battery"," 18650 battery \n500 - 1000 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "5 LE","capacity : 500 - 1000  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.3,1.4,5
              ),
            },if(widget.wid==1.2)...{
              P1_1("18650 battery"," 18650 battery \n1000 - 1500 mAh","https://i.imgur.com/YLeZ10H.png","https://i.imgur.com/TfkWavF.png","https://i.imgur.com/YLeZ10H.png",
                  "15 LE","capacity : 1000 - 1500  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","500 - 1000 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.3,1.4,15
              ),
            },if(widget.wid==1.3)...{
              P1_1("18650 battery"," 18650 battery \n1500 - 1800 mAh","https://i.imgur.com/t95Q5H9.png","https://i.imgur.com/J3PVA4L.png","hhttps://i.imgur.com/t95Q5H9.png",
                  "17 LE","capacity : 1500 - 1800  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.1,1.2,1.4,17
              ),
            },if(widget.wid==1.4)...{
              P1_1("18650 battery"," 18650 battery \n1800 - 2200 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "27 LE","capacity : 1800 - 2200  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.1,1.2,1.3,27
              ),
            },if(widget.wid==1.5)...{
              P1_1("18650 battery"," 18650 battery \n1800 - 2200 mAh china","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "23 LE","capacity : 500 - 10  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.1,1.2,1.5,23
              ),
            },if(widget.wid==1.6)...{
              P1_1("18650 battery"," 18650 battery \n2200 - 2600 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "32 LE","capacity : 2200 - 2600  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.4,1.7,32
              ),
            },if(widget.wid==1.7)...{
              P1_1("18650 battery"," 18650 battery \n2600 - 3000 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "37 LE","capacity : 2600 - 3000  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.4,1.6,37
              ),
            },
            if(widget.wid==2.1)...{
              P1_1("Battery Packs"," 12.6 v - 3000 mAh","https://i.imgur.com/Nv6j7Cn.png","https://i.imgur.com/nKPcCJL.png","https://i.imgur.com/Nv6j7Cn.png",
                  "250 LE","voltage : 12.6  capacity : 3000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 20 * 70 * 60 mm",true,
                  "https://i.imgur.com/RosBU9r.png"," 12v - 6600 mAh","https://i.imgur.com/Dfh0XXx.png"," 12v - 10000 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.2,2.3,2.4,250
              ),
            },
            if(widget.wid==2.2)...{
              P1_1("Battery Packs"," 12.6 v - 6600 mAh","https://i.imgur.com/RosBU9r.png","https://i.imgur.com/RpxN2K9.png","https://i.imgur.com/2I1BrMq.png",
                  "400 LE","voltage : 12.6  capacity : 6600 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 6 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/Nv6j7Cn.png","12.6 v - 3000 mAh","https://i.imgur.com/Dfh0XXx.png"," 12v - 10000 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.1,2.3,2.4,400
              ),
            },
            if(widget.wid==2.3)...{
              P1_1("Battery Packs"," 12.6 v - 10000 mAh","https://i.imgur.com/Dfh0XXx.png","https://i.imgur.com/PoMtfsi.png","https://i.imgur.com/PC9eAqH.png",
                  "450 LE","voltage : 12.6  capacity : 10000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 8 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/Nv6j7Cn.png","12.6 v - 3000 mAh","https://i.imgur.com/RosBU9r.png"," 12v - 6600 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.1,2.2,2.4,450
              ),
            },
            if(widget.wid==2.4)...{
              P1_1("Battery Packs"," 12v - 12000 mAh","https://i.imgur.com/Exoldk4.png","https://i.imgur.com/Iwa2u2p.png","https://i.imgur.com/hpdww6y.png",
                  "500 LE","voltage : 12.6  capacity : 12000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 10 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/Nv6j7Cn.png","12.6 v - 3000 mAh","https://i.imgur.com/RosBU9r.png"," 12v - 6600 mAh",
                  "https://i.imgur.com/Dfh0XXx.png","12v - 10000 mAh",2.1,2.2,2.3,500
              ),
            },
            if(widget.wid==2.5)...{
              P1_1("Battery Packs"," 12v - 15000 mAh","https://i.imgur.com/RsI2WMW.png","https://i.imgur.com/WWHnaEG.png","https://i.imgur.com/aJs09la.png",
                  "550 LE","voltage : 12.6  capacity : 15000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 12 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/RosBU9r.png","12v - 6600 mAh","https://i.imgur.com/Dfh0XXx.png","12v - 10000 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.2,2.3,2.4,550
              ),
            },
            if(widget.wid==2.6)...{
              P1_1("Battery Packs"," Hoverboard 2500 mAh","https://i.imgur.com/mrYue96.png","https://i.imgur.com/BSh9rHW.png","https://i.imgur.com/ypknCOd.png",
                  "550 LE","Nominal voltage : 36 v  max voltage :42 v\n capacity : 2500 mAh\n max discharge : 5 A max charge : 5 A \ndimension : 123 * 74 * 58  mm",true,
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh","https://i.imgur.com/RsI2WMW.png","12v - 15000 mAh",
                  "https://i.imgur.com/LySIZO4.png"," Hoverboard 4500 mAh",2.4,2.5,2.7,550
              ),
            },
            if(widget.wid==2.7)...{
              P1_1("Battery Packs"," Hoverboard 4500 mAh","https://i.imgur.com/LySIZO4.png","https://i.imgur.com/ON9OmRu.png","https://i.imgur.com/vjGIC9R.png",
                  "800 LE","Nominal voltage : 36 v  max voltage :42 v \ncapacity : 4500 mAh\n max discharge : 5 A max charge : 5 A \ndimension : 123 * 74 * 58  mm",true,
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh","https://i.imgur.com/RsI2WMW.png","12v - 15000 mAh",
                  "https://i.imgur.com/mrYue96.png","Hoverboard 2500 mAh",2.4,2.5,2.6,800
              ),
            },
            if(widget.wid==3.1)...{
              P1_1("Motors"," Nema 17","https://i.imgur.com/nU2sQte.png","https://i.imgur.com/TSoFcST.png","https://i.imgur.com/nU2sQte.png",
                  "45 LE","Torque 3-5 kg.cm  \nstep 1.8  degree  12 v\n  1 - 2 A\n dimension : 42 * 42 mm * h ",true,
                  "https://i.imgur.com/P7LWDcv.png","Nema 23","https://i.imgur.com/LySIZO4.png","Hoverboard 4500 mAh",
                  "https://i.imgur.com/mrYue96.png","Hoverboard 2500 mAh",3.2,2.7,2.6,45
              ),
            },
            if(widget.wid==3.2)...{
              P1_1("Motors"," Nema 23","https://i.imgur.com/P7LWDcv.png","https://i.imgur.com/2MQfTAc.png","https://i.imgur.com/P7LWDcv.png",
                  "65 LE","Torque 8-10 kg.cm  \nstep 1.8  degree  12 v\n  1 - 2 A\n dimension : 57 * 57 mm * h ",true,
                  "https://i.imgur.com/nU2sQte.png","Nema 17","https://i.imgur.com/LySIZO4.png","Hoverboard 4500 mAh",
                  "https://i.imgur.com/mrYue96.png","Hoverboard 2500 mAh",3.1,2.7,2.6,65
              ),
            },
   /*
   18650 battery \n  2600 - 3000 mAh
    if(widget.wid==1)...{
    p1(name: "hassan", image1: "https://i.imgur.com/J3PVA4L.png", image2: "https://i.imgur.com/bmnA6hf.png",
    image3: "https://i.imgur.com/UZaenyV.png", price:"300 LE", brief: "hdihcidhcihdchih8shcshcis\nudhsuhsshsuhdshd89sdhsudhsihis\nsdhsiuhdshcs8hcsuichshcish"
    , stock: true, relimage1:"https://i.imgur.com/J3PVA4L.png" , relimage2: "https://i.imgur.com/bmnA6hf.png", relimage3: "https://i.imgur.com/UZaenyV.png",
    reimage1: 2, reimage2: 2, reimage3: 3, num: 0,wid: 1,)

    },if(widget.wid==2)...{
              p1(name: "hussian", image1: "https://i.imgur.com/J3PVA4L.png", image2: "https://i.imgur.com/bmnA6hf.png",
                  image3: "https://i.imgur.com/UZaenyV.png", price:"300 LE", brief: "hdihcidhcihdchih8shcshcis\nudhsuhsshsuhdshd89sdhsudhsihis\nsdhsiuhdshcs8hcsuichshcish"
                  , stock: true, relimage1:"https://i.imgur.com/J3PVA4L.png" , relimage2: "https://i.imgur.com/bmnA6hf.png", relimage3: "https://i.imgur.com/UZaenyV.png",
                  reimage1: 1, reimage2: 2, reimage3: 3, num: 0,wid: 2,)
            },
*/
            SizedBox(height: 100.h,),

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
          ],
        ),
      ),
    );
  }
}

class p1 extends StatefulWidget {
  String name;
  String image1;
  String image2;
  String image3;
  String price;
  String brief;
  bool stock;
  String relimage1;
  String relimage2;
      String relimage3;
      int reimage1;
      int reimage2;
      int reimage3;
      int num;
      int wid;
   p1({
   required this.name,
     required this.image1,
     required this.image2,
     required this.image3,
     required this.price,
     required this.brief,
     required this.stock,
     required this.relimage1,
     required this.relimage2,
     required this.relimage3,
     required this.reimage1,
     required this.reimage2,
     required this.reimage3,
     required this.num,
     required this.wid,










   }) ;

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 700.h,
          //   color: Colors.grey,
          child: Row(
            children: [
              SizedBox(width: 20.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h,),
                  if(widget.num==0)...{
    Container(
    width: 150.w,
    height: 400.h,
    color: Colors.black,
    child: Image.network(widget.image1,fit: BoxFit.fitWidth,)

    )
                  },  if(widget.num==1)...{
    Container(
    width: 150.w,
    height: 400.h,
    color: Colors.black,
    child: Image.network(widget.image2,fit: BoxFit.fitWidth,)

    )
                  },  if(widget.num==2)...{
    Container(
    width: 150.w,
    height: 400.h,
    color: Colors.black,
    child: Image.network(widget.image3,fit: BoxFit.fitWidth,)

    )
                  },

                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //SizedBox(width: 5.w,),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            widget.num=0;
                            print(num);
                          });
                        } ,
                        child: Container(
                            width: 40.w,
                            height: 150.h,
                            color: Colors.black,
                            child: Image.network(widget.image1,fit: BoxFit.fitWidth,)
                        ),
                      ),
                      SizedBox(width: 15.w,),

                      GestureDetector(
                        onTap:(){
                          setState(() {
                           widget.num=1;
                            print(num);

                          });
                        } ,
                        child: Container(
                            width: 40.w,
                            height: 150.h,
                            color: Colors.black,
                            child: Image.network(widget.image2,fit: BoxFit.fitWidth,)

                        ),
                      ),
                      SizedBox(width: 15.w,),

                      GestureDetector(
                        onTap:(){
                          setState(() {
                            widget.num=2;
                            print(num);

                          });
                        } ,
                        child: Container(
                            width: 40.w,
                            height: 150.h,
                            color: Colors.black,
                            child: Image.network(widget.image3,fit: BoxFit.fitWidth,)

                        ),
                      ),
                    ],)
                ],
              ),
              SizedBox(width: 20.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h,),
                  Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 12.sp),),
                  SizedBox(height: 5.h,),
                  Text("⭐⭐⭐⭐⭐",style: TextStyle(color: Colors.yellowAccent,fontSize: 7.sp),),

                  SizedBox(height: 5.h,),
                  Text(widget.price,style: TextStyle(color: Colors.black87,fontSize: 10.sp),),
                  SizedBox(height: 20.h,),
                  Text("Random Access Memory (RAM): In the context of computers, RAM stands for Random Access Memory.\n It is a type of computer memory that is used to store data that \nis actively being used or processed by the CPU (Central Processing Unit). ",style: TextStyle(color: Colors.black87,fontSize: 3.sp),),
                  SizedBox(height: 50.h,),
                  Row(
                    children: [
                      SizedBox(width: 60.w,),
                      TextButton(onPressed: (){
                     //   Navigator.push(context,MaterialPageRoute(builder:
                      //      (contxet)=> DeskTopCartScreen()));

                        
                        //print(DeskTopProductScreen(wid: widget.wid,order:""+widget.name ,).order);
                      }, child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 6.sp),),style: TextButton.styleFrom(backgroundColor: Colors.black,)
                      )
                    ],),
                  SizedBox(height: 5.h,),
                  if(widget.stock==true)...{
                    Text("In Stock",style: TextStyle(color: Colors.black87,fontSize: 3.sp),),

                  },if(widget.stock==false)...{
                    Text("Not Available",style: TextStyle(color: Colors.redAccent,fontSize: 3.sp),),

                  },
                  SizedBox(height: 50.h,),
                  Container(
                    width: 150.w,
                    height: 300.h,
                    //       color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.h,),
                        Row(children: [
                          SizedBox(width: 10.w,),
                          Column(
                            children: [
                              // SizedBox(height: 30,),
                              Text('Properties',style: TextStyle(color: Colors.black,fontSize: 5.sp),),
                              SizedBox(height: 10,),
                              Container(width: 20.w,
                                height: 2.h,
                                color: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(width: 10.w,),
                          Column(
                            children: [
                              // SizedBox(height: 30,),
                              Text('Home',style: TextStyle(color: Colors.black38,fontSize: 5.sp),),
                              SizedBox(height: 10,),
                              Container(width: 20.w,
                                height: 2.h,
                                color: Colors.black38,
                              )
                            ],
                          ),
                        ],),

                        Container(
                          width: 150.w,
                          height: 3.h,
                          color: Colors.black38,
                        ),
                        SizedBox(height: 10.h,),
                        Text(widget.brief,style: TextStyle(color: Colors.black45,fontSize: 3.sp),),

                      ],
                    ),
                  ),





                ],
              )
            ],),
        ),
        SizedBox(height: 100.h,),
        Container(
          width: 300.w,
          height: 300.h,
          //   color: Colors.grey,
          child: Column(
            children: [
              Text("Related Products",style: TextStyle(color: Colors.black,fontSize: 12.sp),),
              SizedBox(height: 40.h,),
              Row(
                children: [
                  SizedBox(width: 30.w,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                     //   Navigator.push(context,MaterialPageRoute(builder:
                    //        (contxet)=> DeskTopProductScreen(wid:widget.reimage1,)));
                        //wid=reimage1;
                      });
                    },
                    child: Container(
                        width: 60.w,
                        height: 200.h,
                        color: Colors.black,
                        child: Image.network(widget.relimage1,fit: BoxFit.fitWidth,)
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                       // wid=reimage2;
                      });
                    },
                    child: Container(
                        width: 60.w,
                        height: 200.h,
                        color: Colors.black,
                        child: Image.network(widget.relimage2,fit: BoxFit.fitWidth,)
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                     //   wid=reimage3;
                      });
                    },
                    child: Container(
                        width: 60.w,
                        height: 200.h,
                        color: Colors.black,
                        child: Image.network(widget.relimage3,fit: BoxFit.fitWidth,)
                    ),
                  ),
                ],)
            ],
          ),
        ),
      ],
    );
  }
}

