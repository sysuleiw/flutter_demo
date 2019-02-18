import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset("home/banner.png", package: 'flutter_package_demo'),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'openWebView'),
            child: Container(
                //这个Container定义好高度之后可以让内部的Column也继承这个高度,
                //否则columen的高度就是各个子空间的高度和
                height: 150,
                padding: EdgeInsets.only(right: 20),
                margin: EdgeInsets.only(top: 5),
                foregroundDecoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.blue, width: 2),
                )),
                child: Row(
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      width: 10,
                      height: 150,
                      margin: EdgeInsets.only(right: 20),
                    ),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(
                              top: 30,
                              bottom: 30,
                            ),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        '互联如意贷',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(3),
                                        child: Text(
                                          '10-90天',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 10),
                                        ),
                                        margin:
                                            EdgeInsets.only(left: 10, right: 5),
                                        foregroundDecoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1.0, color: Colors.orange),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(3),
                                        child: Text(
                                          '随借随还',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 10),
                                        ),
                                        margin: EdgeInsets.only(left: 5),
                                        foregroundDecoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1.0, color: Colors.orange),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    '灵活的短期流动性工具',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                  Text(
                                    '点击查看产品详情',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black54),
                                  )
                                ]))),
                    Image.asset(
                      "home/home_icon_ruyidai.png",
                      package: "flutter_package_demo",
                    )
                  ],
                )),
          ),
          Container(
              //这个Container定义好高度之后可以让内部的Column也继承这个高度,
              //否则columen的高度就是各个子空间的高度和
              height: 150,
              padding: EdgeInsets.only(right: 20),
              margin: EdgeInsets.only(top: 5),
              foregroundDecoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.red, width: 2),
              )),
              child: Row(
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    width: 10,
                    height: 150,
                    margin: EdgeInsets.only(right: 20),
                  ),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                            bottom: 30,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '互联定心贷',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      child: Text(
                                        '固定期限',
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 10),
                                      ),
                                      margin:
                                          EdgeInsets.only(left: 10, right: 5),
                                      foregroundDecoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0, color: Colors.orange),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      child: Text(
                                        '按月付息',
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 10),
                                      ),
                                      margin: EdgeInsets.only(left: 5),
                                      foregroundDecoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0, color: Colors.orange),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  '稳定的长期信贷保障',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                Text(
                                  '点击查看产品详情',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                )
                              ]))),
                  Image.asset(
                    "home/home_icon_dingxindai.png",
                    package: "flutter_package_demo",
                  )
                ],
              ))
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(Home oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
