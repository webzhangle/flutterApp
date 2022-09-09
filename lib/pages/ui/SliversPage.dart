/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-16 23:35:14
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-17 23:18:00
 */
import 'package:flutter/material.dart';
class SliversPage extends StatefulWidget {
  SliversPage({Key? key, required this.title, this.arguments}) : super(key: key);
  String title;
  dynamic arguments;
  @override
  State<SliversPage> createState() => _SliversPageState();
}

class _SliversPageState extends State<SliversPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title),),
      body: CustomScrollView( // 创建一个视窗
        slivers: [
          // SliverToBoxAdapter(), // 可以吧AppBar一起拉下来
          SliverAppBar(
            title: Text(widget.title),
            // floating: true, // 在向下滑动的时候，会首先将 SliveAppbar 显示出来
            pinned: true, // 一直显示在顶部，无视滑动，这样就和普通的导航栏差不多了。区别就是在滑动的时候 SliveAppbar 的底部会有一点点影子
            // snap: true, // 在滑动停止之后，导航会自动全部显示出来，需要注意的是必须搭配 floating 一起使用
            expandedHeight: 100, // 从安全区域往下算
            stretch: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text('123'),
              background: Center(
                child: SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 147,
                        child: Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
              ),
              collapseMode: CollapseMode.pin,
              stretchModes: const [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Image.asset('assets/images/1.jpg'),
            ),
          ),
          SliverPersistentHeader(
            pinned: true, //滑到顶部固定
            delegate: _SliverHeaderDelegate('固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题固定标题RR'),
          ),
          SliverList( // 类似于 listview
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
                height: 40,
              );
            }, childCount: 10)
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
                // height: ,
              );
            }, childCount: 10), 
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)
            // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100)
          ),
          SliverFillViewport(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }, childCount: 3)
          )
        ]
      ),
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  String title;
  _SliverHeaderDelegate(this.title);
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Text(title),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 64;

  @override
  // TODO: implement minExtent
  double get minExtent => 32;

  @override
  bool shouldRebuild(covariant _SliverHeaderDelegate oldDelegate) { // 记得变量为 _SliverHeaderDelegate 而不是 SliverPersistentHeaderDelegate
    // TODO: implement shouldRebuild
    // throw UnimplementedError();
    return true;
  }
 

}