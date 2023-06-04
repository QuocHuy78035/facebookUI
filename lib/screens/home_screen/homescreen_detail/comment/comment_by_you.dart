import 'package:facebook/base/base_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentByYou extends StatelessWidget {
  const CommentByYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/Avt_comment.png'),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            cursorColor: AppColor.color000000,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: (){},
                child: Stack(
                  children: [
                    Positioned(
                      child: SvgPicture.asset('assets/images/Camera_icon.svg'),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      right: 7,
                      child: SvgPicture.asset('assets/images/Emotion_icon.svg'),
                    )
                  ],
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              // Đặt lề và padding
              hintText: 'Write a comment...',
              hintStyle: TextStyle(fontSize: 12, color: AppColor.color555555),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.colorDDDDDD,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.color000000),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
