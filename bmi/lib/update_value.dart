import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class UpdateValue extends StatelessWidget {
  UpdateValue({required this.value,required this.label,this.onPressAdd,this.onPressSubtract});
  final String label;
  int value;
  final VoidCallback ?onPressAdd;
  final VoidCallback ?onPressSubtract;
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveContainerColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label,style: kLabelTextStyle,),
          Text(value.toString(),style: kNumberTextStyle,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed:(){
                    onPressSubtract;
                  },
                  backgroundColor: Color(0xFF4C4F5E),
                  child: Icon(Icons.remove,color: Colors.white,),
                ),
                SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  onPressed:(){
                    onPressAdd;
                  },
                  backgroundColor: Color(0xFF4C4F5E),
                  child: Icon(Icons.add,color: Colors.white,),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
