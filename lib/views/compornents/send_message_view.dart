import 'package:flutter/material.dart';
import 'package:flutter_massage_screen/models/message.dart';

class SendMessageView extends StatelessWidget {
  final Message message;

  SendMessageView({this.message});

  @override
  Widget build(BuildContext context) {
    final Color _backgroundColor = Theme.of(context).primaryColor;

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  //for right corner
                  Image.asset(
                    'images/send_message.png',
                    fit: BoxFit.scaleDown,
                    width: 40.0,
                    height: 40.0,
                    color: _backgroundColor,
                  ),

                  Container(
                    margin: const EdgeInsets.only(right: 6.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      border: Border.all(
                          color: _backgroundColor,
                          width: .25,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(5.0),
                        topLeft: const Radius.circular(5.0),
                      ),
                    ),
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      message.message,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),

              //date time
              Container(
                margin: const EdgeInsets.only(right: 6.0),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: _backgroundColor,
                  border: Border.all(
                      color: Colors.grey, width: .25, style: BorderStyle.solid),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                  ),
                ),
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  message.date,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
