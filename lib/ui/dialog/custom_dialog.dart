import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:init_app/ui/_style/text_styles.dart';
import 'package:init_app/ui/_theme/app_theme.dart';

extension customDialog on BuildContext {
  alertMessageDialog(
    String content, {
    String? title,
    bool? isRequiredField,
  }) {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        elevation: 0,
        backgroundColor: ThemeData().background(),
        title: Text(
          (title ?? '').tr,
          textAlign: TextAlign.center,
          style: context.textLargeBold,
        ),
        content: RichText(
          text: TextSpan(
            text: content.tr,
            style: context.textMedium,
            children: <TextSpan>[
              if (isRequiredField ?? false)
                TextSpan(
                  text: " *",
                  style:
                      context.textMedium.copyWith(color: ThemeData().alert()),
                ),
            ],
          ),
        ),
        actions: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: ThemeData().alert(), // background
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'close',
                    style: context.textSmallBold
                        .copyWith(color: ThemeData().accent()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
