import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: Color(0xFF5c7c8c), width: 2 )
    );
    const linkTextStyle = TextStyle (
        fontSize:18,
        fontWeight: FontWeight.bold,
        color: Color(0xFFf59300)
    );
    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/app-clipart.png"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 100,),
                const SizedBox(width: 90, height: 90, child: Image(image:AssetImage("assets/logo.png")),),
                const SizedBox(height: 60,),
                const Text("Введите логин в виде 10 цифр номера телефона", textAlign: TextAlign.center,
                  style: TextStyle (fontWeight: FontWeight.bold, fontSize:16, color: Color.fromRGBO(0,0,0,0.7) ),),

                const SizedBox(height: 20,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: "Телефон",
                  ),
                ),
                const SizedBox(height: 20,),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: "Пароль",
                  ),
                ),
                const SizedBox(height: 60,),
                SizedBox(width: 170, height: 50,child:
                ElevatedButton(onPressed: () {},
                  child: const Text("Войти",
                    style: TextStyle (fontWeight: FontWeight.bold, fontSize:18,
                        color: Color.fromRGBO(225,225,225,0.95) ),),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFf59300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                )
                ),
                const SizedBox(height: 32,),
                InkWell(child: const Text("Регистрация",
                  style: linkTextStyle,),onTap: () {
                  Navigator.pushNamed(context, '/registration');
                }),
                const SizedBox(height: 20,),
                InkWell(child: const Text ("Забыли пароль",
                  style: linkTextStyle,), onTap: () {}),
                const SizedBox(height: 20,),
                TextButton(
                    onPressed: () {Navigator.pop(context);},
                    child: const Text("Назад",
                    style: linkTextStyle,
                    ),
                )

              ],),
            ),
          )
      ),
    );
  }
}
