import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hoty/categorymenu/providers/living_provider.dart';
import 'package:hoty/community/device_id.dart';
import 'package:intl/intl.dart';

import '../../community/privatelesson/lesson_view.dart';

Container MainPage_Type6(section06List,coderesult, context) {
  var urlpath = 'http://www.hoty.company';

  return Container(
    height: 140 * (MediaQuery.of(context).size.height / 360),
    margin : EdgeInsets.fromLTRB(7 * (MediaQuery.of(context).size.width / 360), 0 * (MediaQuery.of(context).size.height / 360), 0, 5 * (MediaQuery.of(context).size.height / 360)),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(section06List.length, (index) =>
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LessonView(article_seq : section06List[index]['article_seq'], table_nm : section06List[index]['table_nm'], params: {}, checkList: [],);
                    },
                  ));
                },
                child: Container(
                  width: 290 * (MediaQuery.of(context).size.width / 360),
                  height: 125 * (MediaQuery.of(context).size.height / 360),
                  margin : EdgeInsets.fromLTRB(8 * (MediaQuery.of(context).size.width / 360), 0 * (MediaQuery.of(context).size.height / 360), 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  // padding: EdgeInsets.fromLTRB(20,30,10,15),
                  // color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        width: 270 * (MediaQuery.of(context).size.width / 360),
                        height: 80 * (MediaQuery.of(context).size.height / 360),
                        margin : EdgeInsets.fromLTRB(0, 5 * (MediaQuery.of(context).size.height / 360), 0, 0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: CachedNetworkImageProvider('$urlpath${section06List[index]['main_img_path']}${section06List[index]['main_img']}'),
                              fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                        ),
                        // color: Colors.amberAccent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin : EdgeInsets.fromLTRB(5 * (MediaQuery.of(context).size.width / 360), 3 * (MediaQuery.of(context).size.height / 360),
                                    0 , 0 ),
                                decoration: BoxDecoration(
                                  color: Color(0xff27AE60),
                                  borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                                ),
                                child:Row(
                                  children: [
                                    for(var c=0; c<coderesult.length; c++)
                                      if(coderesult[c]['idx'] == section06List[index]['main_category'])
                                        Container(
                                          padding : EdgeInsets.fromLTRB(8 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                            8 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                          child: Text('${coderesult[c]['name']}',
                                            style: TextStyle(
                                              fontSize: 14 * (MediaQuery.of(context).size.width / 360),
                                              color: Colors.white,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                  ],
                                )
                            ),
                            if(section06List[index]['like_yn'] != null && section06List[index]['like_yn'] > 0)
                              GestureDetector(
                                onTap : () {
                                  /*_isLiked(true, section06List[index]["article_seq"], "USED_TRNSC", section06List[index]["title"], index);*/
                                },
                                child : Container(
                                    margin : EdgeInsets.fromLTRB(0, 3 * (MediaQuery.of(context).size.height / 360),
                                        5 * (MediaQuery.of(context).size.width / 360) , 0 ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child:Row(
                                      children: [
                                        Container(
                                          padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                            4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                          child: Icon(Icons.favorite, color: Color(0xffE47421), size: 16 , ),
                                        )
                                      ],
                                    )
                                ),
                              ),
                            if(section06List[index]['like_yn'] == null || section06List[index]['like_yn'] == 0)
                              GestureDetector(
                                onTap : () {
                                  /*_isLiked(false, section06List[index]["article_seq"], "USED_TRNSC", section06List[index]["title"], index);*/
                                },
                                child : Container(
                                    margin : EdgeInsets.fromLTRB(0, 3 * (MediaQuery.of(context).size.height / 360),
                                        5 * (MediaQuery.of(context).size.width / 360) , 0 ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child:Row(
                                      children: [
                                        Container(
                                          padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                            4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                          child: Icon(Icons.favorite, color: Color(0xffC4CCD0), size: 16 , ),
                                        )
                                      ],
                                    )
                                ),
                              ),
                          ],
                        ),
                      ),
                      // 하단 정보
                      Container(
                        width: 280 * (MediaQuery.of(context).size.width / 360),
                        // height: 30 * (MediaQuery.of(context).size.height / 360),
                        margin : EdgeInsets.fromLTRB( 5  * (MediaQuery.of(context).size.height / 360), 5  * (MediaQuery.of(context).size.height / 360), 0, 0),
                        child: Column(
                          children: [
                            Container(
                              width: 280 * (MediaQuery.of(context).size.width / 360),
                              // height: 20 * (MediaQuery.of(context).size.height / 360),
                              child: Text(
                                "${section06List[index]['title']}",
                                style: TextStyle(
                                  fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                  // color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              width: 280 * (MediaQuery.of(context).size.width / 360),
                              // height: 10 * (MediaQuery.of(context).size.height / 360),
                              margin : EdgeInsets.fromLTRB( 0, 5  * (MediaQuery.of(context).size.height / 360),
                                  0, 0),
                              child: Text(
                                getVND("${section06List[index]['etc01']}"),
                                style: TextStyle(
                                  fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                  // color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          )
      ),
    ),
  );
}

String getVND(pay) {
  String payment = "";

  if(pay != null && pay != ''){
    var getpay = NumberFormat.simpleCurrency(locale: 'ko_KR', name: "", decimalDigits: 0);
    getpay.format(int.parse(pay));
    payment = getpay.format(int.parse(pay)) + " VND";
  }

  return payment;
}


/*
class MainPage_Type6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120 * (MediaQuery.of(context).size.height / 360),
      margin : EdgeInsets.fromLTRB(7 * (MediaQuery.of(context).size.width / 360), 0 * (MediaQuery.of(context).size.height / 360), 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 290 * (MediaQuery.of(context).size.width / 360),
                height: 115 * (MediaQuery.of(context).size.height / 360),
                margin : EdgeInsets.fromLTRB(8 * (MediaQuery.of(context).size.width / 360), 0 * (MediaQuery.of(context).size.height / 360), 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                // padding: EdgeInsets.fromLTRB(20,30,10,15),
                // color: Colors.black,
                child: Column(
                  children: [
                    Container(
                      width: 270 * (MediaQuery.of(context).size.width / 360),
                      height: 80 * (MediaQuery.of(context).size.height / 360),
                      margin : EdgeInsets.fromLTRB(0, 5 * (MediaQuery.of(context).size.height / 360), 0, 0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/main_private01.png'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                      ),
                      // color: Colors.amberAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin : EdgeInsets.fromLTRB(5 * (MediaQuery.of(context).size.width / 360), 3 * (MediaQuery.of(context).size.height / 360),
                                  0 , 0 ),
                              decoration: BoxDecoration(
                                color: Color(0xff27AE60),
                                borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                              ),
                              child:Row(
                                children: [
                                  Container(
                                    padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                      4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                    child: Text('Language Tutoring',
                                      style: TextStyle(
                                        fontSize: 14 * (MediaQuery.of(context).size.width / 360),
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                          ),
                          Container(
                              margin : EdgeInsets.fromLTRB(0, 3 * (MediaQuery.of(context).size.height / 360),
                                  5 * (MediaQuery.of(context).size.width / 360) , 0 ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child:Row(
                                children: [
                                  Container(
                                    padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                      4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                    child: Icon(Icons.favorite, color: Color(0xffEB5757), size: 16 , ),
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    // 하단 정보
                    Container(
                      width: 280 * (MediaQuery.of(context).size.width / 360),
                      // height: 30 * (MediaQuery.of(context).size.height / 360),
                      child: Column(
                        children: [
                          Container(
                            margin : EdgeInsets.fromLTRB( 2  * (MediaQuery.of(context).size.height / 360), 5  * (MediaQuery.of(context).size.height / 360), 0, 0),
                            width: 280 * (MediaQuery.of(context).size.width / 360),
                            // height: 10 * (MediaQuery.of(context).size.height / 360),
                            child: Text(
                              "I offer private English tutoring",
                              style: TextStyle(
                                fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                // color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                              ),
                            ),
                          ),
                          Container(
                            margin : EdgeInsets.fromLTRB( 2  * (MediaQuery.of(context).size.height / 360), 5  * (MediaQuery.of(context).size.height / 360), 0, 0),
                            width: 280 * (MediaQuery.of(context).size.width / 360),
                            // height: 10 * (MediaQuery.of(context).size.height / 360),
                            child: Text(
                              "50,000"
                                  " VND",
                              style: TextStyle(
                                fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                // color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 290 * (MediaQuery.of(context).size.width / 360),
                height: 115 * (MediaQuery.of(context).size.height / 360),
                margin : EdgeInsets.fromLTRB(8 * (MediaQuery.of(context).size.width / 360), 0 * (MediaQuery.of(context).size.height / 360), 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                // padding: EdgeInsets.fromLTRB(20,30,10,15),
                // color: Colors.black,
                child: Column(
                  children: [
                    Container(
                      width: 270 * (MediaQuery.of(context).size.width / 360),
                      height: 80 * (MediaQuery.of(context).size.height / 360),
                      margin : EdgeInsets.fromLTRB(0, 5 * (MediaQuery.of(context).size.height / 360), 0, 0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/main_private01.png'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                      ),
                      // color: Colors.amberAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin : EdgeInsets.fromLTRB(5 * (MediaQuery.of(context).size.width / 360), 3 * (MediaQuery.of(context).size.height / 360),
                                  0 , 0 ),
                              decoration: BoxDecoration(
                                color: Color(0xff27AE60),
                                borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                              ),
                              child:Row(
                                children: [
                                  Container(
                                    padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                      4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                    child: Text('Language Tutoring',
                                      style: TextStyle(
                                        fontSize: 14 * (MediaQuery.of(context).size.width / 360),
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                          ),
                          Container(
                              margin : EdgeInsets.fromLTRB(0, 3 * (MediaQuery.of(context).size.height / 360),
                                  5 * (MediaQuery.of(context).size.width / 360) , 0 ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child:Row(
                                children: [
                                  Container(
                                    padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                      4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                    child: Icon(Icons.favorite, color: Color(0xffEB5757), size: 16 , ),
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    // 하단 정보
                    Container(
                      width: 280 * (MediaQuery.of(context).size.width / 360),
                      // height: 30 * (MediaQuery.of(context).size.height / 360),
                      child: Column(
                        children: [
                          Container(
                            margin : EdgeInsets.fromLTRB( 2  * (MediaQuery.of(context).size.height / 360), 5  * (MediaQuery.of(context).size.height / 360), 0, 0),
                            width: 280 * (MediaQuery.of(context).size.width / 360),
                            // height: 10 * (MediaQuery.of(context).size.height / 360),
                            child: Text(
                              "I offer private English tutoring",
                              style: TextStyle(
                                fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                // color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                              ),
                            ),
                          ),
                          Container(
                            margin : EdgeInsets.fromLTRB( 2  * (MediaQuery.of(context).size.height / 360), 5  * (MediaQuery.of(context).size.height / 360), 0, 0),
                            width: 280 * (MediaQuery.of(context).size.width / 360),
                            // height: 10 * (MediaQuery.of(context).size.height / 360),
                            child: Text(
                              "50,000"
                                  " VND",
                              style: TextStyle(
                                fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                // color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 290 * (MediaQuery.of(context).size.width / 360),
                height: 115 * (MediaQuery.of(context).size.height / 360),
                margin : EdgeInsets.fromLTRB(8 * (MediaQuery.of(context).size.width / 360), 0 * (MediaQuery.of(context).size.height / 360), 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                // padding: EdgeInsets.fromLTRB(20,30,10,15),
                // color: Colors.black,
                child: Column(
                  children: [
                    Container(
                      width: 270 * (MediaQuery.of(context).size.width / 360),
                      height: 80 * (MediaQuery.of(context).size.height / 360),
                      margin : EdgeInsets.fromLTRB(0, 5 * (MediaQuery.of(context).size.height / 360), 0, 0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/main_private01.png'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                      ),
                      // color: Colors.amberAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin : EdgeInsets.fromLTRB(5 * (MediaQuery.of(context).size.width / 360), 3 * (MediaQuery.of(context).size.height / 360),
                                  0 , 0 ),
                              decoration: BoxDecoration(
                                color: Color(0xff27AE60),
                                borderRadius: BorderRadius.circular(3 * (MediaQuery.of(context).size.height / 360)),
                              ),
                              child:Row(
                                children: [
                                  Container(
                                    padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                      4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                    child: Text('Language Tutoring',
                                      style: TextStyle(
                                        fontSize: 14 * (MediaQuery.of(context).size.width / 360),
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                          ),
                          Container(
                              margin : EdgeInsets.fromLTRB(0, 3 * (MediaQuery.of(context).size.height / 360),
                                  5 * (MediaQuery.of(context).size.width / 360) , 0 ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child:Row(
                                children: [
                                  Container(
                                    padding : EdgeInsets.fromLTRB(4 * (MediaQuery.of(context).size.width / 360), 2 * (MediaQuery.of(context).size.height / 360),
                                      4 * (MediaQuery.of(context).size.width / 360) , 2 * (MediaQuery.of(context).size.height / 360),),
                                    child: Icon(Icons.favorite, color: Color(0xffEB5757), size: 16 , ),
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    // 하단 정보
                    Container(
                      width: 280 * (MediaQuery.of(context).size.width / 360),
                      // height: 30 * (MediaQuery.of(context).size.height / 360),
                      child: Column(
                        children: [
                          Container(
                            margin : EdgeInsets.fromLTRB( 2  * (MediaQuery.of(context).size.height / 360), 5  * (MediaQuery.of(context).size.height / 360), 0, 0),
                            width: 280 * (MediaQuery.of(context).size.width / 360),
                            // height: 10 * (MediaQuery.of(context).size.height / 360),
                            child: Text(
                              "I offer private English tutoring",
                              style: TextStyle(
                                fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                // color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                              ),
                            ),
                          ),
                          Container(
                            margin : EdgeInsets.fromLTRB( 2  * (MediaQuery.of(context).size.height / 360), 5  * (MediaQuery.of(context).size.height / 360), 0, 0),
                            width: 280 * (MediaQuery.of(context).size.width / 360),
                            // height: 10 * (MediaQuery.of(context).size.height / 360),
                            child: Text(
                              "50,000"
                                  " VND",
                              style: TextStyle(
                                fontSize: 16 * (MediaQuery.of(context).size.width / 360),
                                // color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                // height: 1.5 * (MediaQuery.of(context).size.width / 360),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}*/