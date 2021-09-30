import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> data = ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'];

  String selectedIndex = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Dropdoown Button'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                // showClearButton: true,
                showSelectedItems: true,
                items: data,
                label: "Menu mode",
                hint: "country in menu mode",
                popupItemDisabled: (String s) => s.startsWith('I'),
                onChanged: (e) {
                  setState(() {
                    selectedIndex = e!;
                  });
                },
                dropdownSearchDecoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                // selectedItem: "Brazil",
              ),
            ),
            Text(
              (selectedIndex == "") ? "Belum Ada Yang Terpilih" : selectedIndex,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
