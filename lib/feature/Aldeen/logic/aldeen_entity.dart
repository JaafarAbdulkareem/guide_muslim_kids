// import 'package:flutter/material.dart';

class AldeenEntity {
  final String title;
  final String? content;
  final String? image;
  final String audioKey;

  const AldeenEntity({
    required this.title,
    this.content,
    this.image,
    required this.audioKey,
  });
}
