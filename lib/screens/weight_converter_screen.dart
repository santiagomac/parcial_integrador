import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/my_drawer.dart';

class WeightConverterScreen extends StatefulWidget {
  const WeightConverterScreen({super.key});

  @override
  State<WeightConverterScreen> createState() => _WeightConverterScreenState();
}

class _WeightConverterScreenState extends State<WeightConverterScreen> {
  TextEditingController gramosController = new TextEditingController();
  double kilogramos = 0.0;
  double gramos = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/bi.png'),
              ),
              Text(
                "Gráficos de costo económico de racionamiento",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Estos gráficos representan el costo de racionar energía en la ciudad de Bogotá, "
                "y su costo según el porcentaje de consumo a través de los años",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
              Icon(CupertinoIcons.battery_75_percent),
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
