import "package:flutter/material.dart";
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/forms/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.36,
                color: AppColors.primary,
              ),
              Positioned(
                  top: size.height * 0.10,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.person,
                    width: 208,
                    height: 350,
                  )),
              Positioned(
                  top: size.height * 0.55,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.logomini),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 16, left: 80, right: 80),
                        child: Text(
                          "Organize seus boletos em um só lugar",
                          style: TextStyles.titleHome,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50, top: 40),
                        child: SocialLoginButton(
                          onTap: () {
                            print("Cliclou");
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
