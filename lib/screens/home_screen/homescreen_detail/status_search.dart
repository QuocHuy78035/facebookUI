import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../base/base_color.dart';
import '../../../base/search_button.dart';

class StatusAndSearch extends StatelessWidget {
  final String? linkAvt;
  final String? contentHintText;
  final bool isSubFixIcon;
  final void Function()? onTap;
  final bool isHomeScreen;
  final String? title;
  final TextStyle? textStyle;
  final bool isHasIcon;

  const StatusAndSearch({
    Key? key,
    this.linkAvt,
    this.contentHintText,
    this.isSubFixIcon = true,
    this.onTap,
    this.isHomeScreen = true,
    this.title,
    this.textStyle,
    this.isHasIcon = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isHomeScreen ?
        Flexible(
          child: Row(
            children: [
              Image.asset('$linkAvt'),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                child: TextFormField(
                  cursorColor: AppColor.color000000,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColor.colorEEEEEE)),
                      filled: true,
                      fillColor: AppColor.colorEEEEEE,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: AppColor.color000000),
                      ),
                      suffixIcon: isSubFixIcon
                          ? SizedBox(
                              width: 12,
                              height: 12,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    bottom: 0,
                                    right: 10,
                                    child: SvgPicture.asset(
                                        'assets/images/ImageStatus_icon.svg'),
                                  )
                                ],
                              ),
                            )
                          : null,
                      hintText: contentHintText),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
            ],
          ),
        ) : Text('$title', style: textStyle,),
        SizedBox(
          child: isHasIcon ? SearchButton(
            onTap: onTap,
          ) : null,
        )
      ],
    );
  }
}
