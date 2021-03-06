import 'package:flutter/material.dart';
import 'package:flutter_ui/colors.dart';
import 'package:sliver_fab/sliver_fab.dart';


class Mkk extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Mkk> with SingleTickerProviderStateMixin {
  TabController tabController;
  Widget _tabBarView;
  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
    _tabBarView = TabBarView(children: [
      DemoTab(parentController : scrollController),
      DemoTab(parentController : scrollController),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          controller: scrollController,
          physics: ScrollPhysics(parent: PageScrollPhysics()),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
               new SliverFab(
          
          floatingWidget:Container(
          child:Positioned(
              child:  Container(
            width: 120,
                 height: 120,
                  decoration: BoxDecoration(
                    
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/images/ht.jpg")
                    ),
                    border: Border.all(color: Colors.blue,width: 3)
                  ),
                ),
         )
),floatingPosition: FloatingPosition(left: 2,top: -35),
         
          expandedHeight: 256.0,
          
          slivers: <Widget>[
            new SliverAppBar(
              expandedHeight: 256.0,
           
              pinned: true,
              
              backgroundColor: kPrimaryColo2,
              leading: IconButton(
              onPressed: () {},
        
        icon: Icon(Icons.arrow_back,size:26,),
      ),
      
      actions: <Widget>[
        IconButton(
          
          onPressed: () {},
          icon: Icon(Icons.more_vert,size:26,)
        )
      ],
      
              flexibleSpace: new FlexibleSpaceBar(
                background: new Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              
              
            ),  
           SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomLeft,
            children: <Widget>[
             
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/10,
             ),
             
              Positioned(
                top:10,
                right: 10,
                height: 40,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blue,width: 1.5)
                  ),
                  child: Center(child: Text("Follow",style: TextStyle(fontSize:18,color: Colors.blue,fontWeight: FontWeight.bold),)),
                ),
              ),

            ],
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 5,right:5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Maysa Hajaj", style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,fontSize: 25),),
                       SizedBox(width: 10,),
                      Icon(Icons.check_circle,color: Colors.blue,size: 25,),
                  
                    ],
                  ),
                SizedBox(height:10),
                  Text("@MAYSAHAJAJ",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Text("Touchdown.",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18
                          ),),
                          SizedBox(width:8,),
                          Row(
                              children: <Widget>[ 
                                Text("#CountDownToMars",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16
                            ),
                            ),
                            SizedBox(width:4,),
                            Icon(Icons.account_circle,color: Colors.deepOrange,size: 20,),
 
                         ]
                        ),
                         
                    ]),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.link_sharp,color: Colors.grey,size: 22,),
                      SizedBox(width: 8,),
                      Text("nasa.gov",style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.location_on,color:Colors.grey,size: 22,),
                      SizedBox(width: 8,),
                      Text("Born october 1, 1958",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),)
                    ],
                    
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today_sharp,color: Colors.grey,size: 22,),
                      SizedBox(width: 10,),
                      Text("Joined December 2007",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Text("204", style: TextStyle(
                          color: Colors.white,
                          fontWeight:FontWeight.w800,
                          fontSize: 18
                      ),),
                      SizedBox(width: 10,),
                      Text("Following", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),),
                      SizedBox(width: 20,),
                      Text("44.1M", style: TextStyle(
                        fontWeight:FontWeight.w800,
                          color: Colors.white,
                          fontSize: 20
                      ),),
                      SizedBox(width: 10,),
                      Text("Followers", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("Not followed by anyone you're following",style: TextStyle(fontSize:16,color: Colors.grey,),),
                  SizedBox(height: 15,),
               ],
              ),
          ),

        
                // Scrollable horizontal widget here
              ],
            ),
          ),
          ],
        ),
      
              SliverList(
                delegate: SliverChildListDelegate(
                    [Container(height: 300, color: Colors.blue)]),
              ),
            ];
          },
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  child: TabBar(labelColor: Colors.grey, tabs: [
                    Tab(
                      text: 'One',
                    ),
                    Tab(
                      text: 'two',
                    )
                  ]),
                ),
                Expanded(
                  child: Container(child: _tabBarView),
                ),
              ],
            ),
          )),
    );
  }
}

class DemoTab extends StatefulWidget {

  DemoTab({ 
    this.parentController
  });

  final ScrollController parentController;


  DemoTabState createState() => DemoTabState();
}

class DemoTabState extends State<DemoTab>
    with AutomaticKeepAliveClientMixin<DemoTab> {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  ScrollController _scrollController;

  ScrollPhysics ph;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();


    _scrollController.addListener((){


      var innerPos      = _scrollController.position.pixels;
      var maxOuterPos   = widget.parentController.position.maxScrollExtent;
      var currentOutPos = widget.parentController.position.pixels;

      if(innerPos >= 0 && currentOutPos < maxOuterPos) {

        //print("parent pos " + currentOutPos.toString() + "max parent pos " + maxOuterPos.toString());
        widget.parentController.position.jumpTo(innerPos+currentOutPos);

      }else{
        var currenParentPos = innerPos + currentOutPos;
        widget.parentController.position.jumpTo(currenParentPos);
      }


    });





    widget.parentController.addListener((){
      var currentOutPos = widget.parentController.position.pixels;
      if(currentOutPos <= 0) {
        _scrollController.position.jumpTo(0);
      }
    });


  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: UniqueKey(),
      controller: _scrollController,
      itemBuilder: (b, i) {
        return Container(
          height: 50,
          color: Colors.green,
          margin: EdgeInsets.only(bottom: 3),
          child: Text(
            i.toString(),
          ),
        );
      },
      itemCount: 30,
    );
  }
}