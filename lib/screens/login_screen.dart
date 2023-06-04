import 'package:facebook/base/base_color.dart';
import 'package:facebook/bloc/bloc.dart';
import 'package:facebook/bloc/event.dart';
import 'package:facebook/bloc/state.dart';
import 'package:facebook/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../base/base_button.dart';
import '../base/base_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassVisible = true;

  @override
  Widget build(BuildContext context) {
    String email = '';
    String pass = '';
    void onTapIcon() {
      setState(
        () {
          isPassVisible = !isPassVisible;
        },
      );
    }

    return BlocBuilder<FaceBookBloc, BaseState>(
      builder: (context, state) {
        var bloc = context.read<FaceBookBloc>();
        return Scaffold(
          backgroundColor: AppColor.colorWhite,
          body: BlocListener<FaceBookBloc, BaseState>(
            listener: (context, state) {
              state is LoginStateSuccess
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    )
                  : showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Thông báo',
                          ),
                          content: const Text(
                            'Đăng nhập sai. Vui lòng thử lại.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Đóng',
                              ),
                            ),
                          ],
                        );
                      },
                    );
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: SvgPicture.asset(
                      'assets/images/Background_LoginScreen.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Column(
                      children: [
                        BaseInput(
                          onChanged: (value) {
                            email = value;
                          },
                          content: 'Phone or Email',
                          underlineBorderColor: AppColor.colorAAAAAA,
                          focusedColor: AppColor.colorAAAAAA,
                          cursorColor: AppColor.color000000,
                          contentStyle: TextStyle(
                            color: AppColor.colorAAAAAA,
                            fontSize: 14,
                          ),
                        ),
                        BaseInput(
                          isPassHide: isPassVisible,
                          onChanged: (value) {
                            pass = value;
                          },
                          onTap: onTapIcon,
                          content: 'Password',
                          underlineBorderColor: AppColor.colorAAAAAA,
                          focusedColor: AppColor.colorAAAAAA,
                          cursorColor: AppColor.color000000,
                          contentStyle: TextStyle(
                            color: AppColor.colorAAAAAA,
                            fontSize: 14,
                          ),
                          isPassword: true,
                          suffixIconColor: AppColor.color000000,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Button(
                          onTap: () {
                            state.email = email;
                            state.password = pass;
                            bloc.add(
                              OnLoginButtonPressed(),
                            );
                          },
                          sizeBorder: 15,
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          content: 'Log In',
                          contentStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Button(
                          colorButton: AppColor.colorWhite,
                          sizeBorder: 15,
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          content: 'Forgot Password?',
                          contentStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColor.color384CFF,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
