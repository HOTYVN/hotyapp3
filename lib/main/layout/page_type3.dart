import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:hoty/common/icons/my_icons.dart';

import '../../kin/kin_view.dart';


Container MainPage_Type3(section03List,coderesult, context) {

  return Container(
    width: 340 * (MediaQuery.of(context).size.width / 360),
  // height: 170 * (MediaQuery.of(context).size.height / 360),
    margin: EdgeInsets.fromLTRB(5, 0 * (MediaQuery.of(context).size.height / 360), 0, 0 * (MediaQuery.of(context).size.height / 360)),
  child: setList(section03List,coderesult, context),
  );
}

Column setList(section03List,coderesult, context) {
  // print('section03list');
  // print(section03List);
/*
  var table_nm = 'KIN';
  var _selecter = 'B02';



  List<dynamic> section03List = [];
  if(getlist.length > 0) {
    section03List.addAll(getlist[_selecter]);
  }


  print('section03list');
  print(section03List);

*/

  return Column(
    children: [
      if(section03List.length > 0)
        for(var i=0; i<section03List.length; i++)
          Container(
            // height: 35 * (MediaQuery.of(context).size.height / 360),
            margin: EdgeInsets.fromLTRB(5  * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360), 0, 0),
            padding: EdgeInsets.fromLTRB(0  * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360), 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 350 * (MediaQuery.of(context).size.width / 360),
                  // height: 35 * (MediaQuery.of(context).size.height / 360),
                  // color: Colors.purpleAccent,
                  child: Column(
                    children: [
                      Container(
                        height: 10 * (MediaQuery.of(context).size.height / 360),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: 200 * (MediaQuery.of(context).size.width / 360),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding : EdgeInsets.fromLTRB(0 * (MediaQuery.of(context).size.width / 360), 1 * (MediaQuery.of(context).size.width / 360),
                                                5 * (MediaQuery.of(context).size.width / 360), 3 * (MediaQuery.of(context).size.width / 360)),
                                            child: Text(
                                              "${section03List[i]['reg_nm']}",
                                              style: TextStyle(
                                                fontSize: 12 * (MediaQuery.of(context).size.width / 360),
                                                color: Color(0xff2F67D3),
                                                // fontFamily: 'NanumSquareB',
                                                // overflow: TextOverflow.ellipsis,
                                                fontWeight: FontWeight.w600,
                                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0 * (MediaQuery.of(context).size.width / 360), 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Icon(My_icons.rate,
                                          color: section03List[i]['group_seq'] == '4' ? Color(0xff27AE60) :
                                          section03List[i]['group_seq'] == '5' ? Color(0xff27AE60) :
                                          section03List[i]['group_seq'] == '6' ? Color(0xffFBCD58) :
                                          section03List[i]['group_seq'] == '7' ? Color(0xffE47421) :
                                          section03List[i]['group_seq'] == '10' ? Color(0xffE47421)
                                          : Color(0xff27AE60),
                                          size: 6 * (MediaQuery.of(context).size.height / 360),),
                                        // Image(image: AssetImage('assets/rate01.png')),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding : EdgeInsets.fromLTRB(0, 0, 5 * (MediaQuery.of(context).size.width / 360), 0),
                              // width: 135 * (MediaQuery.of(context).size.width / 360),
                              child: Text(
                                "${section03List[i]['reg_dt']}",
                                style: TextStyle(
                                  fontSize: 12 * (MediaQuery.of(context).size.width / 360),
                                  color: Color(0xffC4CCD0),
                                  fontFamily: 'NanumSquareR',
                                  // fontWeight: FontWeight.bold,
                                  // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin : EdgeInsets.fromLTRB(0, 2 * (MediaQuery.of(context).size.height / 360),
                            0 , 2 * (MediaQuery.of(context).size.height / 360) ),
                        // height: 25 * (MediaQuery.of(context).size.height / 360),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage("assets/question.png"),
                                color: Color(0xffE47421),
                                width: 22 * (MediaQuery.of(context).size.width / 360),),
                            ),
                            Container(
                              width: 310 * (MediaQuery.of(context).size.width / 360),
                              // alignment: Alignment.topLeft,
                              child: Wrap(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return KinView(article_seq : section03List[i]['article_seq'], table_nm : section03List[i]['table_nm'],
                                            adopt_chk: section03List[i]["adopt_chk"],);
                                        },
                                      ));
                                    },
                                    child: Container(
                                      margin : EdgeInsets.fromLTRB(10 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                          4 * (MediaQuery.of(context).size.width / 360) , 5 * (MediaQuery.of(context).size.height / 360) ),
                                      child :
                                      Text(
                                        "${section03List[i]['title']}",
                                        style: TextStyle(
                                          fontSize: 13 * (MediaQuery.of(context).size.width / 360),
                                          color: Color(0xff151515),
                                          fontFamily: 'NanumSquareB',
                                          // color: Colors.white,
                                          // fontWeight: FontWeight.w400 ,
                                          // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                          //   letterSpacing : 0.3,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if(section03List.length != i+1)
                  Divider(thickness: 1, height: 1 * (MediaQuery.of(context).size.height / 360), color: Color(0xffF3F6F8)),
              ],
            ),
          ),
    ],
  );
}


/*class MainPage_Type3 extends StatefulWidget{
  final List<dynamic> section03List;

  const MainPage_Type3({super.key, required this.section03List});

  @override
  _MainPage_Type3 createState() => _MainPage_Type3();
}*/


/*class _MainPage_Type3 extends State<MainPage_Type3> {

  List<dynamic> section03List = [];

  @override
  void initState() {
    super.initState();
    if(widget.section03List.length > 0) {
      section03List = widget.section03List;
    }
    print('section03List');
    print(widget.section03List);
  }


  // 섹션3
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340 * (MediaQuery.of(context).size.width / 360),
      // height: 170 * (MediaQuery.of(context).size.height / 360),
      margin: EdgeInsets.fromLTRB(5, 0 * (MediaQuery.of(context).size.height / 360), 0, 5 * (MediaQuery.of(context).size.height / 360)),
      child: setList(context),
    );
  }

  Column setList(BuildContext context) {
    return Column(
      children: [  // max4
        if(section03List.length > 0)
          for(var i=0; i<section03List.length; i++)
        Container(
          // height: 35 * (MediaQuery.of(context).size.height / 360),
          margin: EdgeInsets.fromLTRB(0, 5 * (MediaQuery.of(context).size.height / 360), 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350 * (MediaQuery.of(context).size.width / 360),
                // height: 35 * (MediaQuery.of(context).size.height / 360),
                // color: Colors.purpleAccent,
                child: Column(
                  children: [
                    Container(
                      height: 7 * (MediaQuery.of(context).size.height / 360),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 200 * (MediaQuery.of(context).size.width / 360),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          padding : EdgeInsets.fromLTRB(0 * (MediaQuery.of(context).size.width / 360),0,
                                              5 * (MediaQuery.of(context).size.width / 360), 0),
                                          child: Text(
                                            "mediacore",
                                            style: TextStyle(
                                              fontSize: 12 * (MediaQuery.of(context).size.width / 360),
                                              color: Colors.blue,
                                              fontFamily: 'NanumSquareB',
                                              // overflow: TextOverflow.ellipsis,
                                              fontWeight: FontWeight.bold,
                                              // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                DottedLine(
                                  lineThickness:1,
                                  dashLength: 2.0,
                                  dashColor: Color(0xffC4CCD0),
                                  direction: Axis.vertical,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(5 * (MediaQuery.of(context).size.width / 360), 0, 0, 0),
                                  child: Row(
                                    children: [
                                      Image(image: AssetImage('assets/rate01.png')),
                                      Container(
                                        margin : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360),0, 0, 0),
                                        child: Text(
                                          "Beginner",
                                          style: TextStyle(
                                            fontSize: 12 * (MediaQuery.of(context).size.width / 360),
                                            color: Color(0xff151515),
                                            fontFamily: 'NanumSquareB',
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.bold,
                                            // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding : EdgeInsets.fromLTRB(10 * (MediaQuery.of(context).size.height / 360), 0, 0, 0),
                            width: 135 * (MediaQuery.of(context).size.width / 360),
                            child: Text(
                              "2023/06/20 00:00",
                              style: TextStyle(
                                fontSize: 12 * (MediaQuery.of(context).size.width / 360),
                                color: Color(0xffC4CCD0),
                                fontFamily: 'NanumSquareB',
                                // fontWeight: FontWeight.bold,
                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.fromLTRB(0, 7 * (MediaQuery.of(context).size.height / 360),
                          0 , 5 * (MediaQuery.of(context).size.height / 360) ),
                      // height: 25 * (MediaQuery.of(context).size.height / 360),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20 * (MediaQuery.of(context).size.width / 360),
                            height: 15 * (MediaQuery.of(context).size.height / 360),

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/question2.png'),
                                // fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            width: 310 * (MediaQuery.of(context).size.width / 360),
                            // alignment: Alignment.topLeft,
                            child: Wrap(
                              children: [
                                Container(
                                  margin : EdgeInsets.fromLTRB(10 * (MediaQuery.of(context).size.width / 360), 3 * (MediaQuery.of(context).size.height / 360),
                                      4 * (MediaQuery.of(context).size.width / 360) , 5 * (MediaQuery.of(context).size.height / 360) ),
                                  child :
                                  Text(
                                    "My hair loss is so severe.",
                                    style: TextStyle(
                                      fontSize: 15 * (MediaQuery.of(context).size.width / 360),
                                      color: Color(0xff151515),
                                      fontFamily: 'NanumSquareB',
                                      // color: Colors.white,
                                      // fontWeight: FontWeight.w400 ,
                                      // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                      //   letterSpacing : 0.3,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if(section03List.length != i+1)
                Divider(thickness: 1, height: 1 * (MediaQuery.of(context).size.height / 360), color: Color(0xffF3F6F8)),
            ],
          ),
        ),
      ],
    );
  }
}*/
