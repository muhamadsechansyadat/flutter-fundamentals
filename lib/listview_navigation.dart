import 'package:flutter/material.dart';
import 'package:navigation_fundamentals/animated_container_page.dart';
import 'package:navigation_fundamentals/anonymous_method_page.dart';
import 'package:navigation_fundamentals/appbar_example_page.dart';
import 'package:navigation_fundamentals/card_example_page.dart';
import 'package:navigation_fundamentals/container_page.dart';
import 'package:navigation_fundamentals/dragable_page.dart';
import 'package:navigation_fundamentals/flexible_layout_page.dart';
import 'package:navigation_fundamentals/hello_world.dart';
import 'package:navigation_fundamentals/image_widget_page.dart';
import 'package:navigation_fundamentals/listview_page.dart';
import 'package:navigation_fundamentals/row_column.dart';
import 'package:navigation_fundamentals/spacer_widget_page.dart';
import 'package:navigation_fundamentals/stack_align_page.dart';
import 'package:navigation_fundamentals/stateful_page.dart';
import 'package:navigation_fundamentals/text_style_page.dart';

class ListViewNavigation extends StatefulWidget {
  @override
  _ListViewNavigationState createState() => _ListViewNavigationState();
}

class _ListViewNavigationState extends State<ListViewNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Navigation'),
      ),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'Hello World',
    'Row Column',
    'Container',
    'Statefull Widget',
    'Anonymous Method',
    'List View',
    'Text Style',
    'Animated Container',
    'Flexibel Layout',
    'Stack Align',
    'Image Widget',
    'Spacer Widget',
    'Dragable',
    'AppBar Example',
    'Card Example'
  ];

  final nav = [
    HelloWorld(),
    RowColumn(),
    ContainerPage(),
    StatefulPage(),
    AnonymousPage(),
    ListviewPage(),
    TextstylePage(),
    AnimatedContainerPage(),
    FlexibleLayoutPage(),
    StackAlignPage(),
    ImageWidgetPage(),
    SpacerWidgetPage(),
    DragablePage(),
    AppBarExamplePage(),
    CardPage()
  ];
  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(titles[index]),
          trailing: RaisedButton(
            color: Colors.lightBlue,
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return (nav[index]);
                  },
                ),
              );
            },
          ),
        ),
      );
    },
  );
}
