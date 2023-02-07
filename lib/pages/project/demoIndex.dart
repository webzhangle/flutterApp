import 'package:flutter/material.dart';
import 'package:app/components/basics/Button/index.dart';
import 'package:app/components/basics/IconFont/index.dart';
import 'package:app/components/basics/Swiper/index.dart';
class DemoIndex extends StatefulWidget {
  DemoIndex({Key? key, this.arguments}) : super(key: key);
  dynamic arguments;
  @override
  State<DemoIndex> createState() => _DemoIndexState();
}

class _DemoIndexState extends State<DemoIndex> {
  List banner = <Map<String, dynamic>>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    banner = [
      {
        'id': '1',
        "url": "assets/images/1.jpg",
      },
      {
        'id': '2',
        "url": "assets/images/2.jpg",
      },
      {
        'id': '3',
        "url": "assets/images/3.jpg",
      }
    ];
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    double top = data.viewPadding.top;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 243, 247, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240.0,
              padding: EdgeInsets.only(top: top, left: 16, right: 16, bottom: 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg.png')
                )
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 16, 0, 10),
                    alignment: Alignment.topRight,
                    child: const Icon(IconFont.share, size: 16.0, color: Colors.white,),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 7),
                            child: Image.asset('assets/images/logo.png', width: 57, height: 58,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(padding: EdgeInsets.only(bottom: 0), child: Text('可信时间戳遗嘱卫视', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),)),
                              Text('让遗嘱更有效', style: TextStyle(fontSize: 15, color: Colors.white))
                            ],
                          ),
                        ],
                      ),
                    )
                  ),
                  // SizedBox(
                  //   width: double.infinity,
                  //   height: 22,
                  // ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/message.png', width: 24, height: 24,),
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.0),
                            child: Text('您有 1 个遗嘱未完成见证', style: TextStyle(color: Colors.white, fontSize: 14.0)),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Text('点击完成', style: TextStyle(color: Colors.white, fontSize: 14.0)),
                        ),
                        Icon(IconFont.rArrow, size: 14, color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 0,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -16,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 16,
                      decoration: const BoxDecoration(
                        color: const Color.fromRGBO(241, 243, 247, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        )
                      ),
                    ),
                  )
                ]
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              margin: const EdgeInsets.only(bottom: 17.0 ),
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(14.0),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(231, 231, 231, 1),
                                  offset: Offset(0, 0),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                )
                              ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 7),
                                  child: const Text('遗嘱起草', style: TextStyle(color: Color.fromRGBO(6, 48, 80, 1), fontSize: 18, fontWeight: FontWeight.w800)),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 7),
                                    child: const Text('自动生成遗嘱内容 誊抄即可订立有效的自书', style: TextStyle(color: Color.fromRGBO(151, 166, 177, 1), fontSize: 13)),
                                  )
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Image.asset('assets/images/3.png', width: 91, height: 82),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                // width: 167,
                                // height: 96,
                                padding: const EdgeInsets.all(14.0),
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(231, 231, 231, 1),
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    )
                                  ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 7),
                                      child: const Text('遗嘱订立', style: TextStyle(color: Color.fromRGBO(6, 48, 80, 1), fontSize: 18, fontWeight: FontWeight.w800)),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 100,
                                          child: Text('可信时间戳保障 让遗嘱更有效', style: TextStyle(color: Color.fromRGBO(151, 166, 177, 1), fontSize: 13)),
                                        ),
                                        Container(
                                          child: Image.asset('assets/images/2.png', width: 40, height: 40),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                // width: 167,
                                // height: 96,
                                padding: const EdgeInsets.all(14.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(231, 231, 231, 1),
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    )
                                  ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 7),
                                      child: const Text('遗嘱提取', style: TextStyle(color: Color.fromRGBO(6, 48, 80, 1), fontSize: 18, fontWeight: FontWeight.w800)),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          width: 90,
                                          child: Text('算法加密保管身份审核校验', style: TextStyle(color: Color.fromRGBO(151, 166, 177, 1), fontSize: 13)),
                                        ),
                                        SizedBox(
                                          child: Image.asset('assets/images/1.png', width: 36, height: 36,),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              margin: EdgeInsets.only(bottom: 20.0),
              height: 108,
              child: TsaSwiper(banner: banner),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 6,
                    height: 20,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(82, 204, 148, 1)
                    ),
                  ),
                  Text('遗嘱小课堂', style: TextStyle(color: Color.fromRGBO(6, 48, 80, 1), fontSize: 18.0, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(82, 204, 148, 1),
                            Color.fromRGBO(0, 198, 146, 1),
                          ],
                        ),
                        // color: Color.fromRGBO(r, g, b, opacity),
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(147, 235, 197, 1),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      alignment: Alignment.center,
                      child: Text('操作指引', style: TextStyle(color: Colors.white, fontSize: 14.0)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(227, 227, 227, 0.50),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      alignment: Alignment.center,
                      child: Text('常见问题', style: TextStyle(color: Color.fromRGBO(89, 111, 128, 1), fontSize: 14.0),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(227, 227, 227, 0.50),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      alignment: Alignment.center,
                      child: Text('裁判文书', style: TextStyle(color: Color.fromRGBO(89, 111, 128, 1), fontSize: 14.0),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(227, 227, 227, 0.50),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      alignment: Alignment.center,
                      child: Text('遗嘱故事', style: TextStyle(color: Color.fromRGBO(89, 111, 128, 1), fontSize: 14.0),),
                    ),
                  ],
                )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(13, 13, 0, 13),
                    margin: const EdgeInsets.only(bottom: 16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(231, 231, 231, 1),
                          offset: Offset(0, 0),
                          blurRadius: 10,
                          spreadRadius: 1,
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset('assets/images/qq.jpg', width: 120, height: 120,),
                          )
                        ),
                        Expanded(
                          child: IntrinsicHeight(
                            child: Container(
                              height: 120,
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 9),
                                  child: Row(
                                    children: [
                                      Expanded(child: Text('有效立遗嘱的流程', style: TextStyle(color: Color.fromRGBO(6, 48, 80, 1), fontSize: 14.0, fontWeight: FontWeight.w700))),
                                      Container(
                                        width: 32,
                                        height: 18,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(82, 204, 148, 1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(9),
                                            bottomLeft:  Radius.circular(9),
                                          )
                                        ),
                                        child: Text('推荐', style: TextStyle(color: Colors.white, fontSize: 10.0),),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text('想不等于做，做不等于做到，做到不等于得到，更不等于成功想不等于做，做不等于做到，做到不等于得到，更不等于成功', style: TextStyle(color: Color.fromRGBO(149, 167, 181, 1), fontSize: 12.0)),
                                  )
                                ),
                                Text('2020-09-09', style: TextStyle(color: Color.fromRGBO(185, 193, 199, 1), fontSize: 11.0))
                              ],
                            ),
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(13),
                    margin: EdgeInsets.only(bottom: 16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(231, 231, 231, 1),
                          offset: Offset(0, 0),
                          blurRadius: 10,
                          spreadRadius: 1,
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset('assets/images/qq.jpg', width: 120, height: 120,),
                          )
                        ),
                        Expanded(
                          child: IntrinsicHeight(
                            child: Container(
                              height: 120,
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 9),
                                  child: Row(
                                    children: [
                                      Expanded(child: Text('有效立遗嘱的流程', style: TextStyle(color: Color.fromRGBO(6, 48, 80, 1), fontSize: 14.0, fontWeight: FontWeight.w700))),
                                      Container(
                                        width: 32,
                                        height: 18,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(82, 204, 148, 1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(9),
                                            bottomLeft:  Radius.circular(9),
                                          )
                                        ),
                                        child: Text('推荐', style: TextStyle(color: Colors.white, fontSize: 10.0),),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Text('想不等于做，做不等于做到，做到不等于得到，更不等于成功想不等于做，做不等于做到，做到不等于得到，更不等于成功', style: TextStyle(color: Color.fromRGBO(149, 167, 181, 1), fontSize: 12.0)),
                                  )
                                ),
                                Text('2020-09-09', style: TextStyle(color: Color.fromRGBO(185, 193, 199, 1), fontSize: 11.0))
                              ],
                            ),
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}