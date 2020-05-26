import 'package:flutter/material.dart';

class NeumorphicDesignWithListener extends StatefulWidget {
  final Offset offsetRight;
  final Offset offsetLeft;
  final IconData iconData;
  final double iconSize;
  final double height1;
  final double width;
  final Color colors;

  NeumorphicDesignWithListener(this.offsetRight, this.offsetLeft, this.iconData,
      this.iconSize, this.height1, this.width, this.colors);
  @override
  _NeumorphicDesignWithListenerState createState() =>
      _NeumorphicDesignWithListenerState();
}

class _NeumorphicDesignWithListenerState
    extends State<NeumorphicDesignWithListener> {
  bool isPressed = false; //at first the box isnt pressed
  void createTrue(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
  }

  void createFalse(PointerUpEvent event) {
    setState(() {
      isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerUp: createFalse,
      onPointerDown: createTrue,
      child: isPressed == false
          ? Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: widget.height1,
                width: widget.width,
                decoration: new BoxDecoration(
                    color: widget.colors,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          offset: widget.offsetRight,
                          color: Colors.black.withOpacity(.25)),
                      BoxShadow(
                          blurRadius: 7,
                          offset: widget.offsetLeft,
                          color: Colors.white.withOpacity(.7))
                    ]),
                child: Icon(
                  widget.iconData,
                  size: widget.iconSize,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: widget.height1 * 1.2,
                width: widget.width,
                decoration: new BoxDecoration(
                    color: widget.colors,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black.withOpacity(.25),
                        offset: widget.offsetLeft,
                      ),
                      BoxShadow(
                          blurRadius: 5,
                          offset: widget.offsetRight * 2,
                          color: Colors.white.withOpacity(.75))
                    ]),
                child: Icon(widget.iconData,
                    size: widget.iconSize * 1.2,
                    color: Colors.yellow[800].withOpacity(.5)),
              ),
            ),
    );
  }
}
