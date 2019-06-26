import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String name;
  final AnimationController animationController;
  const ChatMessage({Key key, this.text, this.name, this.animationController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: CircleAvatar(
              child: Text(name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: Theme.of(context).textTheme.subhead,
              ),
              Container(
                child: Text(text),
                margin: EdgeInsets.only(top: 5),
              )
            ],
          )
        ],
      ),
    );
  }
}
