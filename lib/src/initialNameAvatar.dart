import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'utils.dart';

class InitialNameAvatar extends StatelessWidget {
  final String fullname;
  final Color borderColor;
  final Color backgroundColor;
  final Color foregroundColor;
  final double textSize;
  final double borderSize;
  final double padding;
  final bool circleAvatar;

  const InitialNameAvatar(
    this.fullname, {
    Key key,
    this.borderColor,
    this.borderSize,
    this.backgroundColor,
    this.foregroundColor,
    this.textSize,
    this.padding,
    this.circleAvatar,
  }) : assert(fullname != null);

  Widget renderCircleAvatar() {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(
            color: this.borderColor != null
                ? this.borderColor
                : Colors.transparent,
            width: this.borderSize != null ? this.borderSize : 2.0,
          )),
      child: CircleAvatar(
        backgroundColor: this.backgroundColor,
        radius: 40.0,
        child: Text(
          getInitials(this.fullname),
          style: TextStyle(
              color: this.foregroundColor,
              fontSize:
                  (this.textSize != null) ? this.textSize : this.textSize),
        ),
      ),
    );
  }

  Widget renderSquareAvatar() {
    return new Container(
      padding: EdgeInsets.all(this.padding != null ? this.padding : 5.0),
      decoration: BoxDecoration(
        color: this.backgroundColor,
        border: Border.all(
          color:
              this.borderColor != null ? this.borderColor : Colors.transparent,
          width: this.borderSize != null ? this.borderSize : 2.0,
        ),
      ),
      child: Text(
        getInitials(this.fullname),
        style: TextStyle(
            color: this.foregroundColor,
            fontSize: (this.textSize != null) ? this.textSize : this.textSize),
      ),
    );
  }

  Widget build(BuildContext context) {
    return this.circleAvatar ? renderCircleAvatar() : renderSquareAvatar();
  }
}
