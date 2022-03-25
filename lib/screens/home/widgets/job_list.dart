import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:job_finder_ui/models/job.dart';
import 'job_details.dart';
import 'job_item.dart';

class JobList extends StatelessWidget {
  JobList({Key? key}) : super(key: key);

  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: JobDetail(
                        jobList[index],
                      ),
                    ),
                  );
                },
                child: JobItem(
                  job: jobList[index],
                ),
              ),
            ],
          ),
          separatorBuilder: (_, index) => SizedBox(
            width: 15,
          ),
          itemCount: jobList.length),
    );
  }
}