import 'package:flutter/material.dart';
import 'package:deliveroo_clone_flutter/constants.dart';
import 'package:heroicons/heroicons.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
              Expanded(
                  child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "images/bike.jpg",
              width: 80.0,
              height: 100.0,
              alignment: Alignment.topLeft,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  const Text(
                    "Deliver now!",
                    style: kSmallTitleText,
                  ),
                  Row(
                    children:const <Widget> [
                      Text(
                        "Current Location",
                        style: kHomePageTitle,
                      ),
                      SizedBox(width: 10.0,),
                      HeroIcon(HeroIcons.chevronDown,
                        color: Color(0xff00CCB8),
                          style: HeroIconStyle.outline,
                          size: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: HeroIcon(HeroIcons.user, size: 44, style: HeroIconStyle.outline,color: Color(0xff00CCB8),),
            )
          ],
        )),
              const Expanded(
              child:  TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  icon: HeroIcon(HeroIcons.magnifyingGlass),
                  border: OutlineInputBorder(),
                  hintText: 'Restaurants and Cuisines',
                ),
              ),)
              
          ],
        ),
      ),
    );

  }
}
