import 'dart:ui';

import 'package:flutter/material.dart';

class SliverDemo extends StatefulWidget {
  @override
  _SliverDemoState createState() => _SliverDemoState();
}

class _SliverDemoState extends State<SliverDemo> {
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text(("Sliver Demo App")),
            expandedHeight: 250.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.network("https://picsum.photos/500/350"),
                  Padding(
                    padding: const EdgeInsets.only(left: 100,right: 100,top: 50),
                    child: Icon(Icons.play_circle_outline,size: 200,color: Colors.white,),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context,int index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage("https://picsum.photos/200/300"),
                          ),
                        ),
                        Text("Text item $index")
                      ],
                    ),
                  ),
                );
              },
              childCount: 20)
          ),
          SliverToBoxAdapter(
            child: Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0,left: 10.0),
                  child: Text("The is SliverToBoxAdapter down SliverGrid",style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                  ),),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.brown,Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  )
                ),
              ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context,int index){
                return Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage("https://source.unsplash.com/random"),
                        ),
                      ),
                      Text("Text item $index")
                    ],
                  ),
                );
              },childCount: 30),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 1.0
              ))
        ],
      );
  }
}
