import 'package:flutter/material.dart';

class NeumorphicBox extends StatefulWidget {
  final Color color;
  final double bLevel;
  final Offset offsetW;
  final double height1;
  final Offset offsetB;
  final double width1;
  final IconData iconData;
  final double iconSize;
  const NeumorphicBox(
      {Key key,
      this.color,
      this.offsetW,
      this.bLevel,
      this.height1,
      this.width1,
      this.offsetB,
      this.iconData,
      this.iconSize})
      : super(key: key);

  @override
  _NeumorphicBoxState createState() => _NeumorphicBoxState();
}

class _NeumorphicBoxState extends State<NeumorphicBox> {
  bool ispressed = false;
  void createTrue(PointerDownEvent event) {
    setState(() {
      ispressed = true;
    });
  }

  void createFalse(PointerUpEvent event) {
    setState(() {
      ispressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
        onPointerDown: createTrue,
        onPointerUp: createFalse,
        child:
            ispressed //here ispressed is FALSE( just like if (ispressed= false) then this container else other)
                ? Container(
                    height: widget.height1,
                    width: widget.width1,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: widget.color,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: widget.bLevel,
                              offset: widget
                                  .offsetW, //this is opposite to down one container (offset(3,3))
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: widget.bLevel,
                              offset: widget.offsetB,
                              color: Colors.black.withOpacity(.25))
                        ]),
                    child: new Icon(widget.iconData,
                        color: Colors.blue, size: widget.iconSize),
                  )
                //This is condition TRUE,(if true then this container)
                : Container(
                    height: widget.height1,
                    width: widget.width1,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: widget.color,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: widget.offsetB, //Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5,
                              offset: widget.offsetW, //Offset(3, 3),
                              color: Colors.black.withOpacity(.25))
                        ]),
                    child: Icon(
                      widget.iconData,
                      size: widget.iconSize,
                      color: Colors.yellow.withOpacity(.5),
                    ),
                  ));
  }
}
