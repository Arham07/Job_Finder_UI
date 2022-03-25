import 'package:flutter/material.dart';
import 'package:job_finder_ui/models/job.dart';
import 'icon_text.dart';

class JobItem extends StatefulWidget {
  JobItem({Key? key, required this.job, this.showTime = false})
      : super(key: key);

  final Job job;
  final bool showTime;

  @override
  State<JobItem> createState() => _JobItemState();
}

class _JobItemState extends State<JobItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
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
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
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
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.job.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(
                  icon: Icons.location_on_outlined, text: widget.job.location),
              if (widget.showTime)
                IconText(
                    icon: Icons.access_time_outlined, text: widget.job.time)
            ],
          ),
        ],
      ),
    );
  }
}