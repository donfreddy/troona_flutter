class Song {
  final int id;
  final String? artist;
  final String? title;
  final String? album;
  final int? albumId;
  final int? duration;
  final String? uri;
  final String? albumArt;
  final int isFav;
  final int count;
  final int timeStamp;

  Song({
    required this.id,
    this.artist,
    this.title,
    this.album,
    this.albumId,
    this.duration,
    this.uri,
    this.albumArt,
    this.isFav = 0,
    this.count = 0,
    this.timeStamp = 0,
  });

  // Song Table
  static String tableName = 'songs';
  static String columnId = 'id';
  static String columnArtist = 'artist';
  static String columnTitle = 'title';
  static String columnAlbumId = 'albumId';
  static String columnAlbum = 'album';
  static String columnDuration = 'duration';
  static String columnUri = 'uri';
  static String columnAlbumArt = 'albumArt';
  static String columnIsFav = 'isFav';
  static String columnCount = 'count';
  static String columnTimeStamp = 'timeStamp';

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      id: json['id'],
      artist: json['artist'],
      title: json['title'],
      album: json['album'],
      albumId: json['albumId'],
      duration: json['duration'],
      uri: json['uri'],
      albumArt: json['albumArt'],
      isFav: json['isFav'],
      count: json['count'],
      timeStamp: json['timeStamp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      columnId: id,
      columnArtist: artist,
      columnTitle: title,
      columnAlbum: album,
      columnAlbumId: albumId,
      columnDuration: duration,
      columnUri: uri,
      columnAlbumArt: albumArt,
      columnIsFav: isFav,
      columnCount: count,
      columnTimeStamp: timeStamp,
    };
  }
}
