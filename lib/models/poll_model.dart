import 'package:flutter/material.dart';

class PollModel {
  final String ? question;
  final List<PollOption> ? options;

  PollModel({this.question,this.options});
}


class PollOption {
   String ? option;
   int ? vote;

  PollOption({this.option,this.vote});
}