import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../AboutScreen/MobileAboutScreen.dart';
import '../CartScreen/MobileCartScreen.dart';
import '../ContactScreen/MobileContactScreen.dart';
import '../Home Screen/MobileHomeScrren.dart';
import '../StoreScreen/MobileStoreScreen.dart';
import '../ss.dart';

class MobileProductScreen extends StatefulWidget {
  double wid=0;
  ss data;

  MobileProductScreen({
    required this.wid,
    required this.data,

    Key? key}) : super(key: key);

  @override
  State<MobileProductScreen> createState() => _MobileProductScreenState();
}

class _MobileProductScreenState extends State<MobileProductScreen> {
  String order="";
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
  Widget Pro(String CollectionName,String name,String image1,String image2,String image3,String price,String brief,bool stock,
      String relimage1, String relimage1name, String relimage2,String relimage2name,String relimage3,String relimage3name,double reimage1,double reimage2,double reimage3,
    int pricee  ){
    int Count=0;
    int num=1;
    Widget cartAdd(){
      return Container(
        width: 200.w,
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,

        ),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Animate(
                effects: [FadeEffect(),SlideEffect()],
                child: Icon(CupertinoIcons.check_mark_circled,size: 38.sp,color: Colors.black,)),
            SizedBox(height: 30.h,),
            Animate(
                effects: [FadeEffect(),SlideEffect()],
                child: Text("Your Order Added Successfully",style: TextStyle(fontSize: 14.sp),)),
            SizedBox(height: 30.h,),
            Row(children: [
              SizedBox(width: 8.w,),
              Animate(
                  effects: [FadeEffect(),SlideEffect()],
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black,fixedSize: Size(87.w, 40.h)),onPressed: (){}, child: Text("Continue Shopping",style: TextStyle(fontSize: 7.sp),))),
              SizedBox(width: 10.w,),
              Animate(
                  effects: [FadeEffect(),SlideEffect()],
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black,fixedSize: Size(87.w, 40.h)),onPressed: (){

                    Navigator.push(context,MaterialPageRoute(builder:
                        (contxet)=> MobileCartScreen(order:widget.data.Order,data: widget.data,total: widget.data.price,)));
//                    Navigator.push(context,MaterialPageRoute(builder:
  //                      (contxet)=> DeskTopCartScreen(order:widget.data.Order)));

                  }, child: Text("Go To The Cart",style: TextStyle(fontSize: 7.sp)))),

            ],)
          ],
        ),
      );
    }
    return StatefulBuilder(
        builder: (context,mystatefun){
       return   Column(children: [
            Row(children: [
              SizedBox(width: 20.w,),
              Text(CollectionName,style: TextStyle(fontSize: 16.sp),),
              SizedBox(width: 7.w,),
              Text(" /",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
              SizedBox(width: 7.w,),
              Text(name,style: TextStyle(fontSize: 13.sp),),

            ],),
            SizedBox(height: 25.h,),
            Text(name,style: TextStyle(fontSize: 25.sp),),
            SizedBox(height: 10.h,),
         if(num==1)...{
           Container(
             width: 260.w,
             height: 230.h,
             child: Image.network(image1),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Colors.black
             ),
           ),

         },
         if(num==2)...{
           Container(
             width: 260.w,
             height: 230.h,
             child: Image.network(image2),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Colors.black
             ),
           ),

         }
         ,if(num==3)...{
           Container(
             width: 260.w,
             height: 230.h,
             child: Image.network(image3),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Colors.black
             ),
           ),

         },

            SizedBox(height: 15.h,),
            Row(children: [
              SizedBox(width: 30.w,),
              GestureDetector(
                onTap: (){
                  mystatefun(()=>num=1);

                },
                child: Container(
                  width: 90.w,
                  height: 90.h,
                  child: Image.network(image1),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
              GestureDetector(
                onTap: (){
                  mystatefun(()=>num=2);

                },
                child: Container(
                  width: 90.w,
                  height: 90.h,
                  child: Image.network(image2),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
              GestureDetector(
                onTap: (){
                  mystatefun(()=>num=3);

                },
                child: Container(
                  width: 90.w,
                  height: 90.h,
                  child: Image.network(image3),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black
                  ),
                ),
              ),


            ],),
            SizedBox(height: 35.h,),
            Row(children: [
              Row(children: [
                SizedBox(width: 60,),

                IconButton(onPressed: (){
                  mystatefun((){
                    Count++;
                //    pricee=Count*pricee;
                  });

                }, icon:Icon(CupertinoIcons.plus,size: 22.sp,)),
                SizedBox(width: 15.w,),

                Text(Count.toString(),style: TextStyle(fontSize: 20.5.sp,fontWeight: FontWeight.bold)),
                SizedBox(width: 15.w,),

                IconButton(onPressed: (){
                  mystatefun(()=>Count--);

                },

                    icon:Icon(CupertinoIcons.minus,size: 22.sp,)),




              ],),
              SizedBox(width: 40.w,),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),onPressed: (){
                pricee=pricee*Count;
                order=order+"x"+Count.toString()+"- "+name+"                    "+pricee.toString()+"   \n";
//                print(order);

                mystatefun((){

                  widget.data.Order=widget.data.Order+order;
                  widget.data.sc();
                  widget.data.price=widget.data.price+pricee;
                });

                SmartDialog.show(builder: (context) {
                  return cartAdd();
                });
              }, child: Text('Add TO Cart',style: TextStyle(color: Colors.white,fontSize: 14.sp),))
            ],),
            SizedBox(height: 45.h,),
            Column(children: [
              Row(children: [
                SizedBox(width: 20.w,),
                Text("Properties : ",style: TextStyle(fontSize: 15.sp),),

              ],),
              SizedBox(height: 5.h,),
              Row(children: [
                SizedBox(width: 20.w,),
                Container(
                  width: 80.w,
                  height: 3.h,
                  color: Colors.black,
                )

              ],),
              SizedBox(height: 15.h,),
              Row(children: [
                SizedBox(width: 35.w,),
                Text(brief,style: TextStyle(fontSize: 12.sp,color: Colors.black54),),

              ],),



            ],),
            SizedBox(height: 55.h,),

            Column(children: [
              Text("Related Products ",style: TextStyle(fontSize: 22.sp),),
              SizedBox(height: 15.h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:
                      (contxet)=> MobileProductScreen(wid: reimage1,data: widget.data,)));
                },
                child: Container(
                  width: 220.w,
                  height: 180.h,
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
                      SizedBox(height: 130.h,),
                      Text(relimage1name,style: TextStyle(color: Colors.white,fontSize: 17.sp),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:
                      (contxet)=> MobileProductScreen(wid: reimage2,data: widget.data,)));
                },
                child: Container(
                  width: 220.w,
                  height: 180.h,

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
                      SizedBox(height: 130.h,),
                      Text(relimage2name,style: TextStyle(color: Colors.white,fontSize: 17.sp),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:
                      (contxet)=> MobileProductScreen(wid: reimage3,data: widget.data,)));
                },
                child: Container(
                  width: 220.w,
                  height: 180.h,

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
                      SizedBox(height: 130.h,),
                      Text(relimage3name,style: TextStyle(color: Colors.white,fontSize: 17.sp),),
                    ],
                  ),
                ),
              ),
            ],),
          ],);
        });

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
                  Icon(Icons.search_rounded,size: 17.sp,color: Colors.white,),
                  SizedBox(width: 14.w,),
                  Icon(Icons.person_outline,size: 17.sp,color: Colors.white,),
                  SizedBox(width: 8.w,),

                ],
              ),
            ),
            SizedBox(height: 12.h,),
            if(widget.wid==1.1)...{
              Pro("18650 battery","500 - 1000 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
              "5 LE","capacity : 500 - 1000  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.3,1.4,5
              ),
            },
            if(widget.wid==1.2)...{
              Pro("18650 battery","1000 - 1500 mAh","https://i.imgur.com/YLeZ10H.png","https://i.imgur.com/TfkWavF.png","https://i.imgur.com/YLeZ10H.png",
                  "15 LE","capacity : 1000 - 1500  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","500 - 1000 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.3,1.4,15
              ),
            },
            if(widget.wid==1.3)...{
              Pro("18650 battery","1500 - 1800 mAh","https://i.imgur.com/t95Q5H9.png","https://i.imgur.com/J3PVA4L.png","hhttps://i.imgur.com/t95Q5H9.png",
                  "17 LE","capacity : 1500 - 1800  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.1,1.2,1.4,17
              ),
            },
            if(widget.wid==1.4)...{
              Pro("18650 battery","1800 - 2200 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "27 LE","capacity : 1800 - 2200  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.1,1.2,1.3,27
              ),
            },
            if(widget.wid==1.5)...{
              Pro("18650 battery","1800 - 2200 mAh china","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "23 LE","capacity : 500 - 10  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.1,1.2,1.5,23
              ),
            },
            if(widget.wid==1.6)...{
              Pro("18650 battery","2200 - 2600 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "32 LE","capacity : 2200 - 2600  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.4,1.7,32
              ),
            },
            if(widget.wid==1.7)...{
              Pro("18650 battery","2600 - 3000 mAh","https://i.imgur.com/3tNYEFa.png","https://i.imgur.com/ilLBgEd.png","https://i.imgur.com/AKVG7xl.png",
                  "37 LE","capacity : 2600 - 3000  Max voltage : 4.2 V\n Nominal voltage :3.7   max discharge : 1A",true,
                  "https://i.imgur.com/J3PVA4L.png","1000 - 1500 mAh","https://i.imgur.com/bmnA6hf.png","1500 -1800 mAh",
                  "https://i.imgur.com/UZaenyV.png","1800 - 2200 mAh",1.2,1.4,1.6,37
              ),
            },
            if(widget.wid==2.1)...{
              Pro("Battery Packs"," 12.6 v - 3000 mAh","https://i.imgur.com/Nv6j7Cn.png","https://i.imgur.com/nKPcCJL.png","https://i.imgur.com/Nv6j7Cn.png",
                  "250 LE","voltage : 12.6  capacity : 3000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 20 * 70 * 60 mm",true,
                  "https://i.imgur.com/RosBU9r.png"," 12v - 6600 mAh","https://i.imgur.com/Dfh0XXx.png"," 12v - 10000 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.2,2.3,2.4,250
              ),
            },
            if(widget.wid==2.2)...{
              Pro("Battery Packs"," 12.6 v - 6600 mAh","https://i.imgur.com/RosBU9r.png","https://i.imgur.com/RpxN2K9.png","https://i.imgur.com/2I1BrMq.png",
                  "400 LE","voltage : 12.6  capacity : 6600 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 6 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/Nv6j7Cn.png","12.6 v - 3000 mAh","https://i.imgur.com/Dfh0XXx.png"," 12v - 10000 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.1,2.3,2.4,400
              ),
            },
            if(widget.wid==2.3)...{
              Pro("Battery Packs"," 12.6 v - 10000 mAh","https://i.imgur.com/Dfh0XXx.png","https://i.imgur.com/PoMtfsi.png","https://i.imgur.com/PC9eAqH.png",
                  "450 LE","voltage : 12.6  capacity : 10000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 8 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/Nv6j7Cn.png","12.6 v - 3000 mAh","https://i.imgur.com/RosBU9r.png"," 12v - 6600 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.1,2.2,2.4,450
              ),
            },
            if(widget.wid==2.4)...{
              Pro("Battery Packs"," 12v - 12000 mAh","https://i.imgur.com/Exoldk4.png","https://i.imgur.com/Iwa2u2p.png","https://i.imgur.com/hpdww6y.png",
                  "500 LE","voltage : 12.6  capacity : 12000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 10 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/Nv6j7Cn.png","12.6 v - 3000 mAh","https://i.imgur.com/RosBU9r.png"," 12v - 6600 mAh",
                  "https://i.imgur.com/Dfh0XXx.png","12v - 10000 mAh",2.1,2.2,2.3,500
              ),
            },
            if(widget.wid==2.5)...{
              Pro("Battery Packs"," 12v - 15000 mAh","https://i.imgur.com/RsI2WMW.png","https://i.imgur.com/WWHnaEG.png","https://i.imgur.com/aJs09la.png",
                  "550 LE","voltage : 12.6  capacity : 15000 mAh \nmax discharge : 5A   max charge : 5A \ndimension : 12 * 6 * 6.5 mm",true,
                  "https://i.imgur.com/RosBU9r.png","12v - 6600 mAh","https://i.imgur.com/Dfh0XXx.png","12v - 10000 mAh",
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh",2.2,2.3,2.4,550
              ),
            },
            if(widget.wid==2.6)...{
              Pro("Battery Packs"," Hoverboard 2500 mAh","https://i.imgur.com/mrYue96.png","https://i.imgur.com/BSh9rHW.png","https://i.imgur.com/ypknCOd.png",
                  "550 LE","Nominal voltage : 36 v  max voltage :42 v\n capacity : 2500 mAh\n max discharge : 5 A max charge : 5 A \ndimension : 123 * 74 * 58  mm",true,
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh","https://i.imgur.com/RsI2WMW.png","12v - 15000 mAh",
                  "https://i.imgur.com/LySIZO4.png"," Hoverboard 4500 mAh",2.4,2.5,2.7,550
              ),
            },
            if(widget.wid==2.7)...{
              Pro("Battery Packs"," Hoverboard 4500 mAh","https://i.imgur.com/LySIZO4.png","https://i.imgur.com/ON9OmRu.png","https://i.imgur.com/vjGIC9R.png",
                  "800 LE","Nominal voltage : 36 v  max voltage :42 v \ncapacity : 4500 mAh\n max discharge : 5 A max charge : 5 A \ndimension : 123 * 74 * 58  mm",true,
                  "https://i.imgur.com/Exoldk4.png","12v - 12000 mAh","https://i.imgur.com/RsI2WMW.png","12v - 15000 mAh",
                  "https://i.imgur.com/mrYue96.png","Hoverboard 2500 mAh",2.4,2.5,2.6,800
              ),
            },
            if(widget.wid==3.1)...{
              Pro("Motors"," Nema 17","https://i.imgur.com/nU2sQte.png","https://i.imgur.com/TSoFcST.png","https://i.imgur.com/nU2sQte.png",
                  "45 LE","Torque 3-5 kg.cm  \nstep 1.8  degree  12 v\n  1 - 2 A\n dimension : 42 * 42 mm * h ",true,
                  "https://i.imgur.com/P7LWDcv.png","Nema 23","https://i.imgur.com/LySIZO4.png","Hoverboard 4500 mAh",
                  "https://i.imgur.com/mrYue96.png","Hoverboard 2500 mAh",3.2,2.7,2.6,45
              ),
            },
            if(widget.wid==3.2)...{
              Pro("Motors"," Nema 23","https://i.imgur.com/P7LWDcv.png","https://i.imgur.com/2MQfTAc.png","https://i.imgur.com/P7LWDcv.png",
                  "65 LE","Torque 8-10 kg.cm  \nstep 1.8  degree  12 v\n  1 - 2 A\n dimension : 57 * 57 mm * h ",true,
                  "https://i.imgur.com/nU2sQte.png","Nema 17","https://i.imgur.com/LySIZO4.png","Hoverboard 4500 mAh",
                  "https://i.imgur.com/mrYue96.png","Hoverboard 2500 mAh",3.1,2.7,2.6,65
              ),
            },
            SizedBox(height: 115.h,),
          ],
        ),
      ),
    );
  }
}
