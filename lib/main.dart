import 'package:flutter/material.dart';
import 'story_brain.dart';

storyBrain storybrain = storyBrain();
void main() {
  runApp( destini() );
}

class destini extends StatelessWidget {
  const destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: storypage(),
    );
  }
}

// Statefull Widget

class storypage extends StatefulWidget {
  const storypage({Key? key}) : super(key: key);

  @override
  State<storypage> createState() => _storypageState();
}

class _storypageState extends State<storypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/galaxy.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                    child: Text(

                      storybrain.getstory(),

                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),),
                ),

                Expanded(
                  flex: 2,
                  child: TextButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: (){
                          setState(() {
                            storybrain.nextstory(1);
                          });
                  },
                  child: Text( storybrain.getchoice1(),
                    style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                  ),),
                ),),

                 SizedBox( height: 20),

                Visibility(
                  visible: storybrain.buttonvisible(),
                  child: Expanded(
                    flex: 2,
                    child: TextButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                    onPressed: (){
                            setState(() {
                              storybrain.nextstory(2);
                            });
                    },
                    child: Text( storybrain.getchoice2(),
                      style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                    ),
                    ),),
                  ),
                ),
              ],
            ),
       ),
      ),
    );
  }
}


