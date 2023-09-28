import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/view/auth/login_screen.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(color: Colors.black,fontSize: 23.sp, fontWeight:FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 10,
              bottom: 10
          ),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    const CircleAvatar(foregroundColor: Colors.white,backgroundImage: AssetImage("assets/images/profile.png",),backgroundColor: Colors.white,
                    radius: 40,),
                    SizedBox(width: 15.w,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lara Zain"),
                        Text("larazain94@gmail.com"),
                      ],
                    ),
                    SizedBox(width: 45.w,),
                    IconButton(onPressed: (){}, icon:const Icon (Icons.arrow_forward_ios_outlined)),
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              Container(
                color: Colors.white,
                height: 300.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.notifications_active_outlined),
                            SizedBox(width: 20.w,),
                            Text("Notification",style: TextStyle(fontSize: 20.sp,)),
                            SizedBox(width: 115.w,),
                          ],
                        ),
                        IconButton(onPressed: (){}, icon:const Icon (Icons.arrow_forward_ios_outlined)),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           const Icon(Icons.help),
                           SizedBox(width: 20.w,),
                           Text("Help Center",style: TextStyle(fontSize: 20.sp,)),
                         ],
                       ),
                        IconButton(onPressed: (){}, icon:const Icon (Icons.arrow_forward_ios_outlined)),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           const Icon(Icons.headphones),
                           SizedBox(width: 20.w,),
                           Text("Contact Support",style: TextStyle(fontSize: 20.sp,)),

                         ],
                       ),
                        IconButton(onPressed: (){}, icon:const Icon (Icons.arrow_forward_ios_outlined)),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                         children: [
                           const Image(image: AssetImage("assets/images/privacy.png")),
                           SizedBox(width: 20.w,),
                           Text("Privacy policy",style: TextStyle(fontSize: 20.sp,)),
                         ],
                      ),
                        IconButton(onPressed: (){}, icon:const Icon (Icons.arrow_forward_ios_outlined)),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Image(image: AssetImage("assets/images/privacy.png")),
                            SizedBox(width: 20.w,),
                            Text("Terms & Condition",style: TextStyle(fontSize: 20.sp,)),
                          ],
                        ),
                        IconButton(onPressed: (){}, icon:const Icon (Icons.arrow_forward_ios_outlined)),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 40.h,),
              Container(
                color: Colors.white,
                child: Row(
                   children: [
                     IconButton(onPressed: (){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                      });
                     }, icon:const Icon (Icons.exit_to_app,color: Color.fromRGBO(255, 51, 51, 1),)),
                     TextButton(onPressed: (){
                       setState(() {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const LoginScreen()),
                         );
                       });
                     }, child: Text("Log out",style: TextStyle(color: const Color.fromRGBO(255, 51, 51, 1),fontSize: 20.sp),)
                     )
                   ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
