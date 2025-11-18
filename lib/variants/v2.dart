import 'package:flutter/material.dart';

class V2 extends StatefulWidget {
  @override
  State<V2> createState() => _V2State();
}

class _V2State extends State<V2> {
  double _size = 150.0;
  double _topLeftRadius = 0.0;
  double _topRightRadius = 0.0;
  double _bottomLeftRadius = 0.0;
  double _bottomRightRadius = 0.0;

  _onChangeBorderRadiusTopLeft(double value) {
    setState(() {
      _topLeftRadius = value;
    });
  }

  _onChangeBorderRadiusTopRight(double value) {
    setState(() {
      _topRightRadius = value;
    });
  }

  _onChangeBorderRadiusBottomLeft(double value) {
    setState(() {
      _bottomLeftRadius = value;
    });
  }

  _onChangeBorderRadiusBottomRight(double value) {
    setState(() {
      _bottomRightRadius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Container(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(_topLeftRadius),
              topRight: Radius.circular(_topRightRadius),
              bottomLeft: Radius.circular(_bottomLeftRadius),
              bottomRight: Radius.circular(_bottomRightRadius),
            ),
          ),
        ),

        // TOP ROW
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text("Top Left: ${_topLeftRadius.toStringAsFixed(2)}"),
                  Slider(
                    value: _topLeftRadius,
                    min: 0,
                    max: 100,
                    onChanged: _onChangeBorderRadiusTopLeft,
                  ),
                ],
              ),
            ),

            SizedBox(width: 16),

            Expanded(
              child: Column(
                children: [
                  Text("Top Right: ${_topRightRadius.toStringAsFixed(2)}"),
                  Slider(
                    value: _topRightRadius,
                    min: 0,
                    max: 100,
                    onChanged: _onChangeBorderRadiusTopRight,
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 16),

        // BOTTOM ROW
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text("Bottom Left: ${_bottomLeftRadius.toStringAsFixed(2)}"),
                  Slider(
                    value: _bottomLeftRadius,
                    min: 0,
                    max: 100,
                    onChanged: _onChangeBorderRadiusBottomLeft,
                  ),
                ],
              ),
            ),

            SizedBox(width: 16),

            Expanded(
              child: Column(
                children: [
                  Text(
                    "Bottom Right: ${_bottomRightRadius.toStringAsFixed(2)}",
                  ),
                  Slider(
                    value: _bottomRightRadius,
                    min: 0,
                    max: 100,
                    onChanged: _onChangeBorderRadiusBottomRight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
