import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:increment_decrement_form_field/increment_decrement_form_field.dart';
import 'package:svg_flutter/svg.dart';

class buildtest extends StatelessWidget {
  const buildtest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              /*
    increment, decrement an int
*/
IncrementDecrementFormField<int>(
    // an initial value
    initialValue: 0,

    // return the widget you wish to hold the value, in this case Text
    // if no value set 0, otherwise display the value as a string
    displayBuilder: (value, field) {
        return Text(
            value == null ? "0" : value.toString(),
        );
    },

    // run when the left button is pressed (decrement)
    // the current value is passed as a parameter
    // return what you want to update the display value to
    // when decrement is pressed. In this case if null 0,
    // otherwise current value -1
    onDecrement: (currentValue) {
        return currentValue! - 1;
    },

    // run when the right button is pressed (increment)
    // the current value is passed as a parameter
    // return what you want to update the display value to
    // when increment is pressed. In this case if null 0,
    // otherwise current value +1
    onIncrement: (currentValue) {
        return currentValue! + 1;
    },
),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Container(
                  width: 360.w,
                  height: 170.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/soundwave.png'),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 16.w, top: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: Container(
                                    width: 90.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 138, 134, 134)
                                              .withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 0,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1k+ attending',
                                        style: GoogleFonts.outfit(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: Container(
                                    width: 90.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 138, 134, 134)
                                              .withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 0,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Music',
                                        style: GoogleFonts.outfit(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: SvgPicture.asset(
                                    'assets/images/Vector.svg'))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 9.5.h),
                        child: Container(
                          height: 50.h,
                          width: 310.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 94, 92, 92)
                                    .withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.w, top: 2.h, right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Soundwave Sessions',
                                      style: GoogleFonts.outfit(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                          size: 19.r,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Kochi • 17 Oct 2024',
                                          style: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.sp,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Container(
                  width: 360.w,
                  height: 170.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/soundwave.png'),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Parent Content (Blue Container)
                      Positioned.fill(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 16.w, top: 10.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.w),
                                        child: Container(
                                          width: 90.w,
                                          height: 30.h,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color.fromARGB(
                                                        255, 138, 134, 134)
                                                    .withOpacity(0.3),
                                                spreadRadius: 5,
                                                blurRadius: 0,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1k+ attending',
                                              style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.w),
                                        child: Container(
                                          width: 90.w,
                                          height: 30.h,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color.fromARGB(
                                                        255, 138, 134, 134)
                                                    .withOpacity(0.3),
                                                spreadRadius: 5,
                                                blurRadius: 0,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Music',
                                              style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: SvgPicture.asset(
                                        'assets/images/Vector.svg'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Red Container (Positioned at the Bottom)
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 50.h,
                          width: 360.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 94, 92, 92)
                                    .withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.w, top: 2.h, right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Soundwave Sessions',
                                      style: GoogleFonts.outfit(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                          size: 19.r,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          'Kochi • 17 Oct 2024',
                                          style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Container(
  width: 360.w,
  height: 140.h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Stack(
    children: [
      // Background Image
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/Mask group.jpg',
          fit: BoxFit.cover,
          width: 360.w,
          height: 140.h,
        ),
      ),
      
      // Positioned Text Button
      Positioned(
        bottom: 10.h, // Adjust bottom padding
        left: 0,
        right: 0,
        child: Center(
          child: Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(92, 132, 225, 1)
            ),
            child: Center(
              child: Text('View On Map',style: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 9.sp,
                                              color: Colors.white,
                                            ),),
            ),
          )
        ),
      ),
    ],
  ),
)

            ],
          ),
        ),
      )),
    );
  }
}
