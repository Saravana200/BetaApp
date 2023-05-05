import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeScreen()
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<String> names=["sports","games","music","travel","cooking","science"];
  static List<String> gifLinks = [
    'https://media.tenor.com/ioaHMGrl93QAAAAi/sports-sports-manias.gif',  // sports
    'https://media.tenor.com/3klZkDif0nsAAAAd/gaming-gif.gif',  // games
    'https://media.tenor.com/Yg9cr-N09a4AAAAM/music.gif',  // music
    'https://media0.giphy.com/media/dYUslDahf6Uw71gH3t/giphy.gif?cid=6c09b9522wi0sr216an3vuawlj9n6nro3i2z4ajsyizs3v4y&ep=v1_stickers_related&rid=giphy.gif&ct=s',  // travel
    'https://media0.giphy.com/media/YoKaNSoTHog8Y3550r/giphy.gif?cid=6c09b952c17a56103d88ef80d330695ed1206d38dc510cf3&ep=v1_internal_gifs_gifId&rid=giphy.gif&ct=s',  // cooking
    'https://media.tenor.com/imaiKuaHij0AAAAM/science.gif',  // science
  ];

  static List<String> imageLinks = [
    'https://images.pexels.com/photos/4495929/pexels-photo-4495929.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/4011983/pexels-photo-4011983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/7658148/pexels-photo-7658148.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2085105/pexels-photo-2085105.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/7057575/pexels-photo-7057575.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/7018532/pexels-photo-7018532.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  ];

  static List<List<String>> title= [
    [ "Date: May 15, Time: 6:30pm", "Dinner Party" ],
    [ "Date: June 3, Time: 9:00am", "Yoga Class" ],
    [ "Date: July 9, Time: 2:00pm", "Team Building Exercise" ],
    [ "Date: August 22, Time: 7:30pm", "Dinner and Drinks" ],
    [ "Date: September 8, Time: 11:00am", "Sales Meeting" ],
    [ "Date: November 2, Time: 4:00pm", "Product Demo" ]
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title:Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment(-1, 0),
                  child:Text(
                      "Find events in",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10
                      )
                    ),
                ),
                Align(
                  alignment: Alignment(-1, 0),
                  child: Row(
                    children: const [
                    Text(
                      "Bangalore",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      )
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,

                    )

                      ],
                    ),
                ),
                ]
                ),

            ),
        body: body(context),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded,color: Colors.black),
            label: 'search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,color: Colors.black),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one,color: Colors.black,),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.black),
            label: 'Notifications',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black),
            label: 'Profile',
          ),
        ],
        selectedIconTheme:IconThemeData(
          size:24
        ),
      ),
    );
  }



  Widget body(BuildContext context){
    return ListView(
        children: [
          const Divider(
            height:10
          ),
      Container(
        height: 50,
        padding:EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.white,
                width: 2
            ),
            borderRadius: BorderRadius.circular(30)

        ),
        child: const Padding(
          padding: EdgeInsets.only(left:10,top: 1,right: 30),
          child:TextField(
            decoration: InputDecoration(
              icon: Icon(
                  Icons.search_rounded
              ),
              hintText: "Search upcoming events",
            ),
          )
        )
      ),
      Container(
          height:50,
          padding: const EdgeInsets.only(left: 10,right:10,top:10,bottom: 10),
          child:const Text(
            "Browse by categories",
            style: TextStyle(
              fontSize: 25
            )
          )
      ),
      Container(
          height: 160,
          child:ListView.separated(
              scrollDirection:Axis.horizontal,
              itemCount: names.length,
              itemBuilder: categories,
              separatorBuilder: (BuildContext context, int index) { return const Padding(padding: EdgeInsets.all(10)); }
          )
      ),
          Container(
              height:50,
              padding: const EdgeInsets.only(left: 10,right:10,top:10,bottom: 10),
              child:const Text(
                  "Upcoming events",
                  style: TextStyle(
                      fontSize: 25
                  )
              )
          ),
      Container(
          height: 300,
          padding: const EdgeInsets.only(left: 10,right:10,top:10,bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0)
          ),
          child:ListView.separated(
            itemCount: names.length,
            scrollDirection:Axis.horizontal,
            itemBuilder:events,
            separatorBuilder: (BuildContext context, int index) { return const Padding(padding: EdgeInsets.all(10)); },
          ),
      )
    ]);
  }


  Widget events(BuildContext context,int position){
    return InkWell(
      onTap: (){Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>SecondScreen(position: position))
      );},
      child: Container(
          padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
          color: Colors.white,
          child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: NetworkImage(imageLinks[position]),
                            height: 200,
                            width: 400,
                            fit: BoxFit.cover
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left:10),
                            child: Text(
                              title[position][0],
                              style: const TextStyle(
                                fontSize: 17,
                                  color: Color(0xFF5B460E)
                              ),

                            )
                        ),
                        Container(
                            margin: EdgeInsets.only(left:10),
                            child: Text(
                              title[position][1],
                              style: const TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFF5B460E)
                              ),

                            )
                        ),
                        Container(
                            width: 220,
                            margin: EdgeInsets.only(left:10),
                            child: const Text(
                              "Hosted by RaineJoe",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF5B460E)
                              ),

                            )
                        ),
                      ],
                    )
                ),
      ),
    );
  }

  Widget categories(BuildContext context,int position)
  {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
              child: Image(
                image:NetworkImage(gifLinks[position]),
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
          ),
          Container(
            child: Text(
              names[position],
              style: const TextStyle(
                fontSize: 19
              ),
            ),
          )
        ],
      ),
    );
  }

}

