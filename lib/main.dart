import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return GetMaterialApp(
	title: 'Flutter Demo',
	theme: ThemeData(
		
		primarySwatch: Colors.blue,
	),
	home: Page1(),
	debugShowCheckedModeBanner: false,
	);
}
}

class Page1 extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text("Tugas Motion"),
		centerTitle: true,
		backgroundColor: Colors.green,
	),
	body: Center(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
			Text("Page 1", textScaleFactor: 2,),
			Container(
			child: ElevatedButton(
				child: Text("Navigate to next screen"),
				onPressed: () {
				Get.to(Page2());
				}
			),
			),
		],
		),
	),
	);
}
}


class Page2 extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text("GeekforGeeks GFG"),
		backgroundColor: Colors.green,
	),
	body: Center(
	child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
		Text("Page 2", textScaleFactor: 2,),
		Container(
			child: ElevatedButton(
				child: Text("Navigate to previous screen"),
				onPressed: ()=> Get.back()
			),
			),
		],
	),
	),
	);
}
}
