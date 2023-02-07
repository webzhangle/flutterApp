import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
class TsaSwiper extends StatefulWidget {
  TsaSwiper({Key? key, required this.banner}) : super(key: key);
  List banner = <Map<String, dynamic>>[];
  @override
  // int get bannerLength => widget.banner.length;
  State<TsaSwiper> createState() => _TsaSwiperState();
}

class _TsaSwiperState extends State<TsaSwiper> {
  int swiperIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          // return Image.network("assets/images/1.jpg", fit: BoxFit.fill);
          swiperIndex = index;
          var item = widget.banner[index];
          return Image.asset(item['url'], fit: BoxFit.fill);
        },
        itemCount: widget.banner.length,
        autoplay: true,
        pagination: SwiperCustomPagination(
          builder:(BuildContext context, SwiperPluginConfig config){
            return TsaSwiperPagination(index: swiperIndex, count: widget.banner.length);
          }
        )
        // control: SwiperControl(),
      )
    );
  }
}

class TsaSwiperPagination extends StatefulWidget {
  TsaSwiperPagination({Key? key, required this.index, required this.count}) : super(key: key);
  int index = 0;
  int count = 0;
  @override
  State<TsaSwiperPagination> createState() => _TsaSwiperPaginationState();
}

class _TsaSwiperPaginationState extends State<TsaSwiperPagination> {
  late List<Widget> CircleWidget = [];
  @override
  Widget build(BuildContext context) {
    CircleWidget = [];
    for(int i = 0; i < widget.count; i++) {
      CircleWidget.add(
        Circle(active: widget.index == i ? true : false)
      );
    }
    return Stack(
      children: [
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.black
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: CircleWidget,
            ),
          )
        )
      ],
    );
  }
}


class Circle extends StatefulWidget {
  Circle({Key? key, required this.active}) : super(key: key);
  bool active;
  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  double width = 6;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: widget.active == true ? 12 : width,
        height: 6,
        decoration: BoxDecoration(
          color: widget.active == true ? Color.fromRGBO(39, 170, 110, 1) : Color.fromRGBO(39, 170, 110, 0.6),
          borderRadius: BorderRadius.all(Radius.circular(6))
        ),
      ),
    );
  }
}