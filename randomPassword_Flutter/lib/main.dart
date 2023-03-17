import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '随机密码-蓝不蓝编程'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String password = "";

  @override
  void initState() {
    super.initState();
    refreshPassword();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(password),
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    refreshPassword();
                  },
                  child: const Text('刷新'),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    copy();
                  },
                  child: const Text('复制'),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  refreshPassword() {
    setState(() {
      password = getRandomPassword();
    });
  }

  getRandomPassword() {
    var availableChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#%^&*()-+_=,.";
    var passwordLength = 32;
    var arr = List.filled(passwordLength, '');
    var len = availableChars.length;
    for (int i = 0; i < passwordLength; i++) {
      arr[i] = availableChars[_random(len)];
    }
    return arr.join('');
  }

  copy() {
    Clipboard.setData(ClipboardData(text: password));
  }

  /// 生成随机数，0=<结果<max
  _random(int maxValue) {
    return Random().nextInt(maxValue);
  }
}
