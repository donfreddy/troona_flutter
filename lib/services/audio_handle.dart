/*
=============
Author: Don Freddy
Github: https://github.com/donfreddy
Website: https://donfreddy.com
=============
Application: Troona Music
Homepage: https://github.com/donfreddy/troona
License: https://github.com/donfreddy/troona/blob/main/LICENSE
Copyright: © 2023, Don Freddy. All rights reserved.
=============
*/

import 'package:audio_service/audio_service.dart';

abstract class TroonaAudioHandle {}

class TroonaAudioHandleImpl extends BaseAudioHandler
    with QueueHandler, SeekHandler
    implements TroonaAudioHandle {


  // Late initialization
  // late AudioPlayer? _player;
}
