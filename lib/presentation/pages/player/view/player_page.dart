import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:polizen_app/core/theme/constants/colors.dart';
import 'package:polizen_app/core/theme/typography.dart';
import 'package:polizen_app/data/models/meditation_model.dart';
import 'package:polizen_app/presentation/pages/player/widgets/make_dismissable_widget.dart';

@RoutePage()
class PlayerPage extends StatefulWidget {
  PlayerPage({super.key});
  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  final Meditation meditation = Meditation(
    image: 'assets/images/imageakzeptanz.png',
    titel: 'Komm runter brunder',
    description: 'entspann dich!',
    id: 2,
    like: true,
    audio: '',
    time: 10,
    createdAt: DateTime.now(),
  );
  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return duration.inHours > 0
        ? '$hours:$minutes:$seconds'
        : '$minutes:$seconds';
  }

  late StreamSubscription<PlayerState> _playerStateSub;
  late StreamSubscription<Duration> _durationSub;
  late StreamSubscription<Duration> _positionSub;
  @override
  void initState() {
    super.initState();

    _playerStateSub = audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    _durationSub = audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    _positionSub = audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    _playerStateSub.cancel();
    _durationSub.cancel();
    _positionSub.cancel();
    audioPlayer.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/imageakzeptanz.png',
              fit: BoxFit.cover,
            ),
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withAlpha(150),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: Colors.white24),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              final newPosition =
                                  position - Duration(seconds: 15);
                              await audioPlayer.seek(
                                newPosition < duration ? newPosition : duration,
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/icons/iconoir_backward-15-seconds.svg',
                            ),
                          ),
                          const SizedBox(width: 24),
                          GestureDetector(
                            onTap: () async {
                              if (isPlaying) {
                                await audioPlayer.pause();
                              } else {
                                await audioPlayer.play(
                                  AssetSource(
                                    'audio/Audiio_Sergini_Momentum_Momentum_Instrumental.wav',
                                  ),
                                );
                              }
                            },

                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: playerColor.withAlpha(100),
                                ),
                                borderRadius: BorderRadius.circular(200),
                              ),
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 300),
                                child: isPlaying
                                    ? Icon(Icons.pause, color: playerColor)
                                    : Icon(
                                        Icons.play_arrow,
                                        color: playerColor,
                                      ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                          GestureDetector(
                            onTap: () async {
                              final newPosition =
                                  position + Duration(seconds: 15);
                              await audioPlayer.seek(
                                position + Duration(seconds: 15) < duration
                                    ? position + Duration(seconds: 15)
                                    : duration,
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/icons/iconoir_forward-15-seconds.svg',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Text(meditation.titel, style: AppFonts.bodySmall),
                      SizedBox(height: 32),
                      Slider(
                        activeColor: Colors.white,
                        thumbColor: Colors.white,
                        min: 0,
                        max: duration.inSeconds.toDouble(),
                        value: position.inSeconds.toDouble(),
                        onChanged: (value) async {
                          final position = Duration(seconds: value.toInt());
                          await audioPlayer.seek(position);
                          await audioPlayer.resume();
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatTime(position)),
                            Text(formatTime(duration)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            width: size.width,
            bottom: 46,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/lineicons_volume-1.svg',
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/mynaui_download.svg'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/information-icon.svg'),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 25),
              child: InkWell(
                onTap: () {
                  context.router.back();
                },

                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(90),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
