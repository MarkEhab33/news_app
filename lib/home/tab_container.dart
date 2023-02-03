import 'package:flutter/material.dart';
import 'package:news_app/home/news_container.dart';
import 'package:news_app/home/tab_item.dart';

import '../model/SourcesResponse.dart';

class TabContainer extends StatefulWidget {
List<Source> sourceList;

TabContainer({required this.sourceList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

        length: widget.sourceList.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index){
                selectedIndex=index;
                setState(() {

                });
              },
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs: widget.sourceList.map((source)=> TabItem(source: source, isSelected:(selectedIndex==widget.sourceList.indexOf(source))?true:false)).toList(),
            ),
            Expanded(child: NewsContainer(source: widget.sourceList[selectedIndex]))
          ],
        )
    );
  }
}
