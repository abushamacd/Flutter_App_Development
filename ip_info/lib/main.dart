import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ip_info/style/app_colors.dart';
import 'package:ip_info/style/asset_manager.dart';
import 'package:ip_info/widgets/info_text.dart';
import 'package:ip_info/widgets/info_title.dart';
import 'package:ip_info/widgets/tigger_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IP Info',
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(AssetManager.bg_highlight)),
              color: AppColor.BgColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetManager.logo,
                  height: 150.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.inputBg,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TiggerButton(
                      text: "My IP",
                      icon: AssetManager.my_ip,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    TiggerButton(
                      text: "Get Info",
                      icon: AssetManager.get_info,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Information About the IP",
                        style: TextStyle(
                          fontSize: 20.81,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "192.167.98.63",
                        style: TextStyle(
                          fontSize: 30.81,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InfoTitle(text: "City"),
                          InfoTitle(text: "Region"),
                          InfoTitle(text: "Country"),
                          InfoTitle(text: "Lang and Long"),
                          InfoTitle(text: "Operator"),
                          InfoTitle(text: "Postal Code"),
                          InfoTitle(text: "Time Zone"),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoText(text: "Text"),
                          InfoText(text: "Text"),
                          InfoText(text: "Text"),
                          InfoText(text: "text"),
                          InfoText(text: "Text"),
                          InfoText(text: "Text"),
                          InfoText(text: "Text"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
