import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'custom.button.widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://m.media-amazon.com/images/M/MV5BZmQ5OGQ0NjQtNWJmZi00YjgxLTg5NTAtMjc5OTNjZjc0ZTlkXkEyXkFqcGdeQXVyODY5NzkyMjA@._V1_.jpg"))
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CustomButtonWidget(
                          title:"My List" ,
                          icon: Icons.add,
                        ),
                            _playbutton(),
                            const CustomButtonWidget(icon: Icons.info,
                             title: "info"
                             )
                      ],
                    ),
                  ),
                )
              ],
            );
  }
  TextButton _playbutton() {
    return TextButton.icon(onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white)
                          ),
                           icon: const Icon(Icons.play_arrow,size: 30,
                           color: Colors.black,
                           ),
                            label: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Play",style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                            ));
  }
}