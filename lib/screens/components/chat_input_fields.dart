import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChatInputField extends StatelessWidget {
  final Function onTap;
  const ChatInputField({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 32,
                offset: Offset(0, 4),
                color: Color(0xff087949).withOpacity(0.3))
          ]),
      child: SafeArea(
          child: Row(
        children: [
          //InkWell(child: Icon(Icons.image, color: kPrimaryColor)),
          SizedBox(width: kDefaultPadding),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
              // decoration: BoxDecoration(
              //   color: kPrimaryColor.withOpacity(0.07),
              //   borderRadius: BorderRadius.circular(40),
              // ),
              // child: Row(
              //   children: [
              //     SizedBox(width: kDefaultPadding / 2),
              //     Expanded(
              //         child: Container(
              //             padding: EdgeInsets.symmetric(vertical: 15),
              //             child: Text(''))),
              //   ],
              // ),
            ),
          ),
          SizedBox(width: kDefaultPadding),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.07),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  SizedBox(width: kDefaultPadding / 2),
                  Expanded(
                      child: InkWell(
                    onTap: onTap,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Next')),
                  )),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
