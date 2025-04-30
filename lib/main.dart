import 'package:flutter/material.dart';

void main() {
  runApp(EzyApp());
}

class EzyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A40FF),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/ezy_logo.png', height: 120),
            SizedBox(height: 24),
            Text(
              'Добро пожаловать!',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Приветствуем вас на площадке аренды\nстроительной техники',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => RegistrationScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF8A40FF),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.white),
                ),
              ),
              child: Text("Регистрация"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("У меня уже есть аккаунт", style: TextStyle(color: Colors.white)),
            ),
            Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white),
                shape: StadiumBorder(),
                foregroundColor: Colors.white,
              ),
              child: Text("Магазин автозапчастей"),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A40FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
        title: Text("Регистрация", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            _buildInputField("Фамилия", "Иванов"),
            _buildInputField("Имя", "Иван"),
            _buildInputField("Номер телефона", "(+996) 500 000 000"),
            _buildPasswordField("Пароль"),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF8A40FF),
                minimumSize: Size(double.infinity, 55),
                shape: StadiumBorder(),
              ),
              child: Text("Зарегистрироваться"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.white70)),
        SizedBox(height: 8),
        TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white54),
            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white70),
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildPasswordField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.white70)),
        SizedBox(height: 8),
        TextField(
          obscureText: true,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.visibility, color: Colors.white),
            filled: true,
            hintText: "●●●●●●●●",
            hintStyle: TextStyle(color: Colors.white54),
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white70),
            ),
          ),
        ),
      ],
    );
  }
}
