import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  var colorval;
  FirstTab(this.colorval);
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 5,
    );
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorval = widget.colorval;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          backgroundColor: Colors.white60,
          bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorWeight: 4,
              unselectedLabelColor: Colors.grey[800],
              tabs: [
                Tab(
                  icon: Icon(Icons.art_track,
                      size: 34,
                      color: _tabController.index == 0
                          ? Color(widget.colorval)
                          : Colors.grey),
                  child: Text('Art Trac',
                      style: TextStyle(
                          color: _tabController.index == 0
                              ? Color(widget.colorval)
                              : Colors.grey)),
                ),
                Tab(
                  icon: Icon(Icons.assignment_ind,
                      size: 34,
                      color: _tabController.index == 1
                          ? Color(widget.colorval)
                          : Colors.grey),
                ),
                Tab(
                  icon: Icon(Icons.receipt,
                      size: 34,
                      color: _tabController.index == 2
                          ? Color(widget.colorval)
                          : Colors.grey),
                ),
                Tab(
                  icon: Icon(Icons.card_travel,
                      size: 34,
                      color: _tabController.index == 3
                          ? Color(widget.colorval)
                          : Colors.grey),
                ),
                Tab(
                  icon: Icon(Icons.enhanced_encryption,
                      size: 34,
                      color: _tabController.index == 4
                          ? Color(widget.colorval)
                          : Colors.grey),
                  child: Text('Encryption',
                      style: TextStyle(
                          color: _tabController.index == 4
                              ? Color(widget.colorval)
                              : Colors.grey)),
                ),
              ]),
        ),
        body: TabBarView(controller: _tabController, children: [
          Center(
            child: Icon(
              Icons.archive,
              size: 150,
              color: Color(widget.colorval),
            ),
          ),
          Center(
            child: Icon(
              Icons.art_track,
              size: 150,
              color: Color(widget.colorval),
            ),
          ),
          Center(
            child: Icon(
              Icons.format_align_justify,
              size: 150,
              color: Colors.yellow,
            ),
          ),
          Center(
            child: Icon(
              Icons.audiotrack,
              size: 150,
              color: Colors.deepPurple,
            ),
          ),
          Center(
            child: Icon(
              Icons.headset,
              size: 150,
              color: Colors.amber,
            ),
          ),
        ]),
      ),
    );
  }
}
