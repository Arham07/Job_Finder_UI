import 'package:flutter/material.dart';
import 'package:job_finder_ui/screens/search/widgets/search_app_bar.dart';
import 'package:job_finder_ui/screens/search/widgets/search_input.dart';
import 'package:job_finder_ui/screens/search/widgets/search_list.dart';
import 'package:job_finder_ui/screens/search/widgets/search_option.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SearchAppBar(),
              SearchInput(),
              SearchOption(),
              Expanded(child: SearchList()),
            ],
          )
        ],
      ),
    );
  }
}