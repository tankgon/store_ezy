import 'package:ez_store/all_file/all_file.dart';
import 'package:just_audio/just_audio.dart';
// import 'package:audioplayers/audioplayers.dart';

class SoundUtils {
  SoundUtils._();

  static Future<void> playSound(String path) async {
    // return (AudioPlayer()..setVolume(1000.0))
    //     .play(AssetSource(path.replaceFirst('assets/', '')));
    final player = AudioPlayer();
    final duration = await player.setAsset(path);
    player.play();
  }
}
