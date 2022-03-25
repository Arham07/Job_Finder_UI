import 'package:flutter/material.dart';
import 'package:job_finder_ui/models/job.dart';
import 'icon_text.dart';

class JobDetail extends StatefulWidget {
  JobDetail(this.job, {Key? key}) : super(key: key);

  final Job job;

  @override
  _JobDetailState createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  // bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 550,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Image.asset(widget.job.logoUrl),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.job.company,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.job.isMark = !widget.job.isMark;
                              // if(selected = true)
                              //   selected=false;
                            });
                          },
                          child: Container(
                            child: Icon(
                                widget.job.isMark == false
                                    ? Icons.bookmark_outline_sharp
                                    : Icons.bookmark,
                                color: widget.job.isMark == false
                                    ? Colors.grey
                                    : Theme.of(context).primaryColor),
                          ),
                        ),
                        Icon(Icons.more_horiz_outlined),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.job.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        icon: Icons.location_on_outlined,
                        text: widget.job.location),
                    IconText(
                        icon: Icons.access_time_outlined,
                        text: widget.job.time),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Requirements',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                ...widget.job.req
                    .map(
                      (e) => Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 400),
                        ),
                        Flexible(
                          child: Text(
                            e,
                            style: TextStyle(wordSpacing: 2.5, height: 1.5),
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    .toList(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  height: 45,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Apply Now'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}