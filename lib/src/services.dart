import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future playSound(String nameSound) async {
  AudioPlayer audioPlayer = AudioPlayer();

  // Sometimes multiple sound will play the same time, so we'll stop all before play the
  // await audioPlayer.stop();
  final file = File('${(await getTemporaryDirectory()).path}/$nameSound');
  await file.writeAsBytes((await loadAsset(nameSound)).buffer.asUint8List());
  await audioPlayer.play(DeviceFileSource(file.path));
}

Future loadAsset(String nameSound) async {
  return await rootBundle.load('packages/floating_bubbles/assets/$nameSound');
}
