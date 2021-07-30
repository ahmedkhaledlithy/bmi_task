import 'package:bmi_task/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Alert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    BmiProvider provider=Provider.of<BmiProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              AnimatedPositioned(
                width: provider.selected ? 400.0 : 250.0,
                height:  provider.selected ? 400.0 : 250.0,
                top:  provider.selected ? 100.0 : 200.0,
                left: provider.selected ? 100.0 : 90.0,
                duration: const Duration(seconds: 2),

                child: AnimatedPadding(
                  padding: EdgeInsets.all(provider.padding),
                  duration: const Duration(seconds: 3),
                  child: GestureDetector(
                    onTap: (){
                      Provider.of<BmiProvider>(context,listen: false).changePosition();
                      Provider.of<BmiProvider>(context,listen: false).changePadding(provider.padding == 0.0 ? 100.0 : 0.0);
                    },
                    child: Container(
                     color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Gender = ${provider.isMale?"Male":"Female"}".toUpperCase()),
                          Text("height = ${provider.height.round()}".toUpperCase()),
                          Text("weight = ${provider.weight}".toUpperCase()),
                          Text("age = ${provider.age}".toUpperCase()),
                          Text("BMI = ${provider.result!.round()}".toUpperCase(),style: TextStyle(fontSize: 40),),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
