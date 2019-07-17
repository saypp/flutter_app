import 'package:flutter/material.dart';

/*
 * Navigator的基本用法，从一个页面跳转到另一个页面，通过第二页面上的返回按钮回到第一个页面
 */

// 创建两个页面，每个页面包含一个按钮。点击第一个页面上的按钮将导航到第二个页面。点击第二个页面上的按钮将返回到第一个页面。初始时显示第一个页面

// 定义一个函数
printInteger (int aNumber) {
  print('number is $aNumber');
}


void main() {
  // 声明并初始化变量
  var number = 42;
  
  printInteger(number);

  runApp(new MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:'Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('app Bar'),
        ),
        body: new Center(
          child: new Text('body'),
        ),
      )
      
    );
  }
}
