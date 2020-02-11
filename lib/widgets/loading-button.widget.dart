import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  Function func;
  var invert = false;
  var buttonText = "";

  LoadingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            margin: EdgeInsets.all(30),
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 60,
            margin: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: !invert ? Colors.white.withOpacity(0.8) : Theme.of(context).primaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: FlatButton(
              onPressed: func,
              child: Text(
                buttonText,
                style: TextStyle(
                  color: !invert ? Theme.of(context).primaryColor : Colors.white,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
  }
}
