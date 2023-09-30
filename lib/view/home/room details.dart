import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/view/home/search.dart';
import 'package:iconly/iconly.dart';

import 'carousel slider.dart';

class roomDetails extends StatefulWidget {
  String photoPath;
  String rate;

  roomDetails({required this.photoPath, required this.rate});

  @override
  State<roomDetails> createState() => _roomDetailsState();
}

class _roomDetailsState extends State<roomDetails> {

  List<String> icons = [
    'assets/images/wifi.png',
    'assets/images/sport.png',
    'assets/images/food.png',
    'assets/images/bus.png',
    'assets/images/wind.png'
  ];
  bool isFavorite = false;
  // String Rates = widget.rate;
  // double _rating = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 10,
              bottom: 10
          ),
          child: SafeArea(
            child: Column(
               children: [
                 SizedBox(
                     height: 210,
                     width: 400,
                     child: CarouselSliderDemo(img1:widget.photoPath, img2: widget.photoPath,
                       img3: widget.photoPath, img4: widget.photoPath,)),
                 SizedBox(height: 20.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Star Hotel",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                     Column(
                       children: [
                         Text("\$75 ",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: const Color.fromRGBO(255, 115, 29, 1))),
                         Text("/Per day ",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.grey)),
                       ],
                     ),
                   ],
                 ),
                 SizedBox(height: 15.h,),
                 Row(
                   children: [
                     Text("Enjoy comfort, tranquility, privacy,\n the beauty of the sea and plenty of \n amenities at an affordable \n price",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.grey,)),
                   ],
                 ),
                 SizedBox(height: 15.h,),
                 Row(

                   children: [
                     Expanded(
                       flex: 2,
                       child: Row(
                         children: [
                           Center(
                             child: RatingBar.builder(
                               initialRating: double.parse(widget.rate),
                               minRating: 1,
                               direction: Axis.horizontal,
                               allowHalfRating: true,
                               itemCount: 5,
                               itemSize: 20.0,
                               itemBuilder: (context, _) => Icon(
                                 Icons.star,
                                 color: Colors.amber,
                               ),
                               onRatingUpdate: (rating) {
                                 setState(() {
                                   double _rating = double.parse(widget.rate);
                                   _rating = rating;
                                 });
                               },
                             ),
                           ),
                           SizedBox(width: 10.w,),
                           Text(widget.rate, style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Expanded(
                       child: Row(
                         children: [
                         TextButton(onPressed: (){}, child:  Text("87 reviews >",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.black, decoration: TextDecoration.underline,)),
                         )
                         ],
                       ),
                     ),


                   ],
                 ),
                 SizedBox(height: 20.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Amenities",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: Colors.black,)),
                     TextButton(onPressed: (){}, child:   Text("View all >",style: TextStyle(fontSize: 20.sp,color: Colors.black,)),)
                   ],
                 ),
                 SizedBox(height: 20.h,),
                 SizedBox(
                   height: 89.h,
                   child: ListView.separated(itemBuilder: (context,index)=>
                       Padding(
                         padding: const EdgeInsets.all(9.0),
                         child: Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(70),
                             boxShadow: const [
                               BoxShadow(
                                 color: Color(0x3F000000),
                                 blurRadius: 4,
                                 offset: Offset(0, 2),
                                 spreadRadius: 0,
                               )
                             ],
                             color: Colors.white,
                           ),

                  child: Image(image: AssetImage(icons[index])),
                   ),
                       ),
                       scrollDirection: Axis.horizontal,
                       separatorBuilder:(context,index)=> SizedBox(width: 10.w),
                       itemCount: icons.length),

                 ),
                 SizedBox(height: 20.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Location",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                   ],
                 ),
                 SizedBox(height: 20.h,),
                 const Stack(
                   children: [
                     Image(image: AssetImage("assets/images/location.png")),
                     Positioned(
                         left: 150,
                         top: 130,
                         child: Image(image: AssetImage("assets/images/location2.png"))),
                   ],
                 ),

                 SizedBox(height: 20.h,),
                 MaterialButton(onPressed: (){},color: const Color.fromRGBO(255, 115, 29, 1),
                 shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)), minWidth: double.infinity,height: 50.h,child:  Text("Book now",style:TextStyle( fontSize: 20.sp,color: Colors.white,
                 )),)
               ],
            ),
          ),
        ),
      ),
    );
  }
}
