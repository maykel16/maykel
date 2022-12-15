import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/first': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'WELCOME'
                '',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.indigo[300],
                fontFamily: 'Source Sans Pro'),
          ),
          backgroundColor: Colors.grey[100],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'image/mm.jpg',
              height: 100,
              width: 300,
              fit: BoxFit.fitWidth,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 55),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Please Enter your email';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Please Enter your password';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: MaterialButton(
                              minWidth: double.infinity,
                              onPressed: () {
                                Navigator.pushNamed(context, '/first');
                              },
                              child: Text('Login'),
                              color: Colors.lightBlue.shade300,
                              textColor: Colors.black)),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}


class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Background'),
        backgroundColor: Colors.black,
      ), // AppBar
      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.lime[600],
              backgroundImage: AssetImage('image/12.png'),
            ),
            Text(
              '.',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 40.0,
                color: Colors.cyan[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' BS Information Technology ',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.cyan[900],
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.green,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'ankingbarberan@gmail.com'
                      '',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Colors.black,
                ),
                title: Text(
                  'mancup calasiao ,Pangasinan',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Colors.black,
                ),
                title: Text(
                  '@John Michael',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Educational Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ), // ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text(' Personal Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],

        ),

      ),
    ); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.black,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Philippine College of Science and Technology'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Bachelor of Science in Information Technology 2020-2024'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Calasiao Comprehensive National High School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Senior High School 2018-2020'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Calasiao Comprehensive national High School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2018'
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Macabito Elimentary school Pangasinan',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('2016-2012'
                ),
              ),
            ),
          ],

        ),
      ), // Center
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Background"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Town or City",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Calasiao"
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.album,
                  color: Colors.black,
                ),
                title: Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("single"
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("creating web based"
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(" Ojt certificate ,NCII holder in Computer System Servicing , Graduation certificate"
                ),
              ),
            ),
          ],

        ),
      ), /// AppBar

    );
    // Scaffold
  }
}

