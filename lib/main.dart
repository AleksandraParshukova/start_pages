import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
        color: Colors.black12, width: 1));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column (children: [
            SizedBox(height: 60,),
            SizedBox (width: 74, height: 28, child: Placeholder(),),
            SizedBox(height: 20,),
            Text('Введите логин в виде 10 цифр номера телефона',
            style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 0, 0, 60) ),),
            SizedBox(height: 20,),
            const SizedBox(width: 324,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Телефон',
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(width: 324,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Пароль',
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(width: 154, height: 42, child:
            ElevatedButton(onPressed: () {},
            child: Text ('Войти'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36.0),
               ),
              ) ,
             ),
            ),
            SizedBox(height: 32,),
            InkWell(child: const Text('Регистрация',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(0, 0, 0, 6)
              ),
            ), onTap: () {}),
              SizedBox(height: 20,),
            InkWell(child: Text('Забыли пароль?'),onTap: (){}),
          ],),
        )
      ),
    );
  }
}

