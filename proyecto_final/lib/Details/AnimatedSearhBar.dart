import 'package:flutter/material.dart';
import 'package:proyecto_final/dashboard/screens/dashboard/components/cards.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({Key? key}) : super(key: key);

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  double boxHeight = 100;
  double boxWidth = 90;
  bool _plegable = true;

  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 90;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 400),
            width: _plegable ? 56 : 440,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
              boxShadow: kElevationToShadow[6]!,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 6),
                    child: !_plegable
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    child: Cards(),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  SizedBox(
                                    child: Cards(),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  SizedBox(
                                    child: Cards(),
                                  ),
                                ],
                              )

                              /*GestureDetector(
                                onTap: _expandedBox,
                                child:  AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  height: boxHeight,
                                  width: boxWidth,
                                  child: const Text("oe"),
                                ),
                              ),

                              AnimatedContainer(
                                duration: Duration(milliseconds: 20),
                                child: const Text("oe"),
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 20),
                                child: const Text("oe"),
                              )*/
                            ],
                          )
                        /*TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.blue[300]),
                        border: InputBorder.none,
                      ),
                    )*/
                        : null,
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(_plegable ? 32 : 0),
                        topRight: Radius.circular(32),
                        bottomLeft: Radius.circular(_plegable ? 32 : 0),
                        bottomRight: Radius.circular(32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          _plegable ? Icons.search : Icons.close,
                          color: Colors.blue[900],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _plegable = !_plegable;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
