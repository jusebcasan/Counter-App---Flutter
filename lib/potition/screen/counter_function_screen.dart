import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Function Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${counter == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CostumeFloatingButton(icon: Icons.refresh_outlined,
          onPressed: () {
            setState(() {
              counter = 0;
            });
          },),
          SizedBox(height: 14,),
          CostumeFloatingButton(icon: Icons.plus_one, 
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },),
          SizedBox(height: 14,),
          CostumeFloatingButton(icon: Icons.exposure_minus_1_outlined,
          onPressed: () {
            setState(() {
              if(counter == 0)return;
              counter -= 1;
            });
          },),
        ],
      ),
    );
  }
}

class CostumeFloatingButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CostumeFloatingButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
