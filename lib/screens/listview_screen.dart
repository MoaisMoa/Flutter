import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {

  final List<Widget> productWidgetList =
  List.generate(10, (index) => ListTile(
      leading: const Icon(Icons.label),
      title: Text("상품 제목 ${index+1}"),
      subtitle: Text("상품 설명 ${index+1} 입니다."),
      trailing: const Icon(Icons.arrow_forward),
      onTop: () {
        // 아이템 클릭 시 동작
      },
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("리스트 뷰"),),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        child: Center(
          child:
            ListView(
              children: productWidgetList,
            )
        ),
      ),
    );
  }
}