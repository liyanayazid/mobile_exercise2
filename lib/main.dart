import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();


int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Liyana_Exercise'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Welcome to MyApp',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/81/d3/6f/81d36fb05994148a3e3305d6331892a8.jpg'),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameInput,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailInput,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordInput,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                
                  Container(
                  padding: const EdgeInsets.all(20),
                  child:DropdownButton(
                  value: _value,
                  items: const [
                    DropdownMenuItem(
                      child: Text("Male"),
                      value: 1,
                     ),
                    DropdownMenuItem(
                      child: Text("Female"),
                      value: 2,
                    )
                  ],
             
                  onChanged: (int? value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  hint:const Text("Select item")
                    ),
                ),
                Container(
             height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ElevatedButton(
                      // textColor: Colors.white,
                      // color: Colors.blue,
                      child: Text('Sign Up'),
                      onPressed: () {
                        final snackBar = SnackBar(
                            content: const Text("Congratulations! You have signed up successfully"),
                        action: SnackBarAction(label: "Undo", onPressed: (){

                        },),);
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        print(nameInput.text);
                        print(emailInput.text);
                      
                       } 
                       ),
                       ),
              ],
            )));
  }
}
