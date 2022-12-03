import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dribe',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.card_giftcard_rounded),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('87'),
                    ),
                    Icon(Icons.woman_rounded),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'Hello, Kim',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 150.0,
              width: double.infinity,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Upgrade to Pro',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'want to see more features that will benifit you',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_right_alt_sharp),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Complete Tasks',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Reload',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 370.0,
              width: 300.0,
              color: Colors.white,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Card(
                    elevation: 0.5,
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.sports_football),
                      title: Text('Hello'),
                      subtitle: Text('Hi'),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: SizedBox(
      //   height: 65.0,
      //   width: 65.0,
      //   child: FittedBox(
      //     child: FloatingActionButton(
      //       onPressed: () {},
      //       child: Icon(
      //         Icons.add,
      //         color: Colors.white,
      //       ),
      //       // elevation: 5.0,
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // elevation: 20.0,

        // shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                // padding: EdgeInsets.only(left: 28.0),
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                // padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                // padding: EdgeInsets.only(left: 20.0, right: 20.0),
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                // padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                  iconSize: 30.0,
                  // padding: EdgeInsets.only(right: 28.0),
                  icon: Icon(Icons.list),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
