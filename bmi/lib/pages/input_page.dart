import 'package:bmi/real_calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../reusable_card.dart';
import 'package:bmi/container_icon.dart';
import '../constants.dart';
import 'result_page.dart';
import '../real_calculator.dart';


enum Gender {male,female}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender ?selectedGender;
  int height=100;
  int weight=60;
  int age =16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('BMI Calculator')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(

              child: Row(
                children: [
                  ReusableCard(
                    colour: selectedGender==Gender.male?kActiveContainerColor:kInactiveContainerColor,
                    cardChild: ContainerIcon(icon: FontAwesomeIcons.mars,title: 'Male',),
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                  ReusableCard(
                    colour: selectedGender==Gender.female?kActiveContainerColor:kInactiveContainerColor,
                    cardChild: ContainerIcon(icon: FontAwesomeIcons.venus,title: 'Female',),
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  )
                ],
              ),
            ),
            ReusableCard(
                colour: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',
                  style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$height',
                      style: kNumberTextStyle),
                      Text('cm',style: kLabelTextStyle)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x1FEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      max: 220,
                      min: 80,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                      colour: kActiveContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',style: kLabelTextStyle,),
                        Text(weight.toString(),style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundButton(
                                icon: FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  ReusableCard(
                      colour: kActiveContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: kLabelTextStyle,),
                        Text(age.toString(),style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                RealCalculator brain = RealCalculator(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> ResultPage(
                      bmi: brain.calculateBMI(),
                      bmiResult: brain.getResult(),
                      desc: brain.getDescription(),
                    )));
              },
              child: Container(
                color: kBottomContainerColor ,
                height: kBottomContainerHeight,
                width: double.infinity,
                child: const Center(
                  child: Text('Calculate Your BMI',
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 1,
                      color: Colors.white,
                  ),),
                ),
              ),
            )
          ],
        )
    );
  }
}


class RoundButton extends StatelessWidget {
  RoundButton({required this.icon, this.onPress});
  final IconData icon;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 1,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      child: Icon(icon),
    );
  }
}
