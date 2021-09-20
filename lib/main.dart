import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'อาหาร',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      // home: FirstPage(),
      routes: {
        '/': (context) => const FirstPage(),
        // '/second': (context) => const SecondPage()
        SecondPage.routeName: (context) => const SecondPage(),
        ThirdPage.routeName: (context) => const ThirdPage(),
        FourPage.routeName: (context) => const FourPage(),
        FivePage.routeName: (context) => const FivePage(),
        SixPage.routeName: (context) => const SixPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false

      appBar: AppBar(
        title: Text("อาหาร"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "ข้าวมันไก่",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[600],
                  shadows: [
                    Shadow(
                      blurRadius: 0.5,
                      color: Colors.black,
                      offset: Offset(1.5, 1.5),
                    ),
                  ],
                ),
              )),
          const Image(
            height: 240.0,
            image: AssetImage('../assets/images/1.jpg'),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () =>
                {Navigator.pushNamed(context, SecondPage.routeName)},
            child: Text("ส่วนผสม",
                style: TextStyle(fontSize: 26, color: Colors.white)),
            style: ElevatedButton.styleFrom(primary: Colors.green[600]),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Text.rich(
            TextSpan(
              text: "ข้าวมันไก่ทอด",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                shadows: [
                  Shadow(
                    blurRadius: 0.5,
                    color: Colors.black,
                    offset: Offset(1.5, 1.5),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Image(
              height: 240.0, image: NetworkImage('../assets/images/2.jpg')),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () =>
                {Navigator.pushNamed(context, ThirdPage.routeName)},
            child: Text("ส่วนผสม",
                style: TextStyle(fontSize: 26, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[600],
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Text.rich(
            TextSpan(
              text: "ข้าวขาหมู ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
                shadows: [
                  Shadow(
                    blurRadius: 0.5,
                    color: Colors.black,
                    offset: Offset(1.5, 1.5),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Image(
              height: 240.0, image: NetworkImage('../assets/images/3.jpg')),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, FourPage.routeName)},
            child: Text("ส่วนผสม ",
                style: TextStyle(fontSize: 26, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              primary: Colors.green[600],
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Text.rich(
            TextSpan(
              text: "ข้าหน้าไก่เทอริยากิ ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
                shadows: [
                  Shadow(
                    blurRadius: 0.5,
                    color: Colors.black,
                    offset: Offset(1.5, 1.5),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Image(
              height: 240.0, image: NetworkImage('../assets/images/4.jpg')),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, FivePage.routeName)},
            child: Text("ส่วนผสม",
                style: TextStyle(fontSize: 26, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue[600],
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Text.rich(
            TextSpan(
              text: "ข้าวเปล่า ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                shadows: [
                  Shadow(
                    blurRadius: 0.5,
                    color: Colors.black,
                    offset: Offset(1.5, 1.5),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          const Image(
              height: 240.0, image: NetworkImage('../assets/images/5.jpg')),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, SixPage.routeName)},
            child: Text("ส่วนผสม",
                style: TextStyle(fontSize: 26, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              primary: Colors.purpleAccent[200],
            ),
          ),
        ])),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const routeName = "/SecondPage";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้าวมันไก่"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "ส่วนผสม",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[600],
                  shadows: [
                    Shadow(
                      blurRadius: 0.5,
                      color: Colors.black,
                      offset: Offset(1.5, 1.5),
                    ),
                  ],
                ),
              )),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('น่องไก่/สะโพกไก่/อกไก่'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('กระเทียม 3 - 4 หัว'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('รากผักชี 6 ราก'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ขิงแก่หั่นเป็นแผ่นบาง 6 แผ่น'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('พริกไทย 30 เม็ด'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ข้าวสารดิบ 2 ถ้วยตวง'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('น้ำซุป'),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("กลับหน้าหลัก"),
            style: ElevatedButton.styleFrom(primary: Colors.yellow[600]),
          ),
        ])),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const routeName = "/ThirdPage";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้าวมันไก่ทอด"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "ส่วนผสม",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  shadows: [
                    Shadow(
                      blurRadius: 0.5,
                      color: Colors.black,
                      offset: Offset(1.5, 1.5),
                    ),
                  ],
                ),
              )),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ไก่ทอด'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('เกลือ'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text(' ข้าวมัน'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('แตง'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ซอสไก่'),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("กลับหน้าหลัก"),
            style: ElevatedButton.styleFrom(primary: Colors.yellow[600]),
          ),
        ])),
      ),
    );
  }
}

class FourPage extends StatelessWidget {
  const FourPage({Key? key}) : super(key: key);
  static const routeName = "/FourPage";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้าวขาหมู"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "ส่วนผสม",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600],
                  shadows: [
                    Shadow(
                      blurRadius: 0.5,
                      color: Colors.black,
                      offset: Offset(1.5, 1.5),
                    ),
                  ],
                ),
              )),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ขาหมู'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ไข่ต้ม'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ข้าวเปล่า'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ซอสขาหมู'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('กำหล่ำดอง'),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("กลับหน้าหลัก"),
            style: ElevatedButton.styleFrom(primary: Colors.green[600]),
          ),
        ])),
      ),
    );
  }
}

class FivePage extends StatelessWidget {
  const FivePage({Key? key}) : super(key: key);
  static const routeName = "/FiverPage";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้าวหน้าไก่เทอริยากิ"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "ส่วนผสม",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent[600],
                  shadows: [
                    Shadow(
                      blurRadius: 0.5,
                      color: Colors.black,
                      offset: Offset(1.5, 1.5),
                    ),
                  ],
                ),
              )),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ไก่เทอริยากิ'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ข้าวสวย'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ซอสยี่ปุ่น'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('งา'),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("กลับหน้าหลัก"),
            style: ElevatedButton.styleFrom(primary: Colors.lightBlue[600]),
          ),
        ])),
      ),
    );
  }
}

class SixPage extends StatelessWidget {
  const SixPage({Key? key}) : super(key: key);
  static const routeName = "/SixPage";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้าวเปล่า"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "ส่วนผสม ",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[600],
                  shadows: [
                    Shadow(
                      blurRadius: 0.5,
                      color: Colors.black,
                      offset: Offset(1.5, 1.5),
                    ),
                  ],
                ),
              )),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('ข้าวเปล่า'),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          ElevatedButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("กลับหน้าหลัก"),
            style: ElevatedButton.styleFrom(primary: Colors.purpleAccent[600]),
          ),
        ])),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(20.0),
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text('ABC'),
      ),
    );
  }
}
