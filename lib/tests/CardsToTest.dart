import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsToTest {

  String m_imageVal;
  String m_heading;
  double m_sizeCard;

  CardsToTest(String imageVal, String heading)
  {
    m_imageVal = imageVal;
    m_heading = heading;
    m_sizeCard = 150.0;
  }

  Container GetCard()
  {
    return
      Container(
      width: m_sizeCard,
        child: Card(
          child: InkWell(
            onTap: (){print(m_heading + ' was tapped');},
            child: Wrap(
              children: <Widget>[
                Image.network(m_imageVal,
                  height: m_sizeCard,
                  width: m_sizeCard,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Text(m_heading,),
                  ),
                )
              ],
            ),
          ),
        )
      );
  }
}