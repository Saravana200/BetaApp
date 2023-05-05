import 'package:beta_01/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:image_stack/image_stack.dart';

class SecondScreen extends StatelessWidget {
  final int position;
  SecondScreen({super.key,required this.position});


  final String customLoremIpsumText = lorem(paragraphs: 2, words: 60);



  @override
  Widget build(BuildContext context) {
    String image_url="https://www.shutterstock.com/image-vector/smiling-boy-flat-icon-design-260nw-1314420785.jpg";
    List<String> user_ics=[image_url,image_url,image_url,image_url,image_url];
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: MediaQuery.of(context).size.height/4,
              color: Colors.blue,
              child: Image(
                  image:NetworkImage(HomeScreen.imageLinks[position]),
                  fit: BoxFit.cover
              )
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    HomeScreen.title[position][0],
                    style:const TextStyle(
                      fontSize: 14,
                        color: Color(0xFF5B460E)
                    )
                ),
                Text(
                    HomeScreen.title[position][1],
                    style:const TextStyle(
                      fontSize: 24,
                      color: Colors.black
                    )
                ),
              ],
            ),
          ),
          Container(
            height: 130,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ClipOval(
                              child: Image(
                                image:NetworkImage('https://www.shutterstock.com/image-vector/smiling-boy-flat-icon-design-260nw-1314420785.jpg'),
                                height: 60,
                                fit: BoxFit.cover,
                              )
                          ),
                            Text(
                            "Host",
                            style: TextStyle(
                            fontSize: 20
                            ),
                              )
                        ],
                    ),
                    Column(
                      children: [
                        ImageStack(imageList: user_ics, totalCount: user_ics.length,imageRadius: 60),
                        Text(
                          "${user_ics.length} joined",
                          style: const TextStyle(
                              fontSize: 20
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                    "About",
                    style:TextStyle(
                      fontSize: 24,
                    )
                ),
                Text(
                    customLoremIpsumText,
                    style:const TextStyle(
                      fontSize: 14,
                    )
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {  },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                color:Colors.green,
                width:1
              ),
              backgroundColor:Colors.green
            ),
            child: const Text('RSVP for this event'),
          )
        ],
      ),




        floatingActionButton: Align(
            alignment:const Alignment(-0.9,-0.8),
          child: FloatingActionButton(onPressed:() {Navigator.pop(context);},
            backgroundColor: const Color(0x9E7BA3FA),
            hoverColor: const Color(0xFF67C42A),
            child: const Icon(Icons.arrow_back,color: Color(0xFFFFFFFF),),)
        )
    );
  }



  Widget User_icons()
  {
    return const ClipOval(
        child: Image(
          image:NetworkImage('https://www.shutterstock.com/image-vector/smiling-boy-flat-icon-design-260nw-1314420785.jpg'),
          height: 60,
          fit: BoxFit.cover,
        )
    );
  }

}