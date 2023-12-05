class NasaApiModel {

  late final String copyright;
  late final String date;
  late final String explanation;
  late final String hdUrl;
  late final String mediaType;
  late final String serviceVersion;
  late final String title;
  late final String url;

  // NasaApiModel({
  // required this.copyright,
  // required this.date,
  // required this.explanation,
  // required this.hdUrl,
  // required this.mediaType,
  // required this.serviceVersion,
  // required this.title,
  // required this.url,
  //});


  NasaApiModel.fromJson(Map<String, dynamic> api){
    copyright = api['copyright'];
    date = api['date'];
    explanation = api['explanation'];
    hdUrl = api['hdurl'];
    mediaType = api['media_type'];
    serviceVersion = api['service_version'];
    title = api['title'];
    url = api['url'];
  }

  //Map<String, dynamic> toJson() {
  //  final _data = <String, dynamic>{};
  //  _data['copyright'] = copyright;
  //  _data['date'] = date;
  //  _data['explanation'] = explanation;
  //  _data['hdurl'] = hdUrl;
  //  _data['media_type'] = mediaType;
  //  _data['service_version'] = serviceVersion;
  //  _data['title'] = title;
  // _data['url'] = url;
  //  return _data;
  //}
}


class AutoGenerate {
  AutoGenerate({
    required this.verse,
  });
  late final Verse verse;

  AutoGenerate.fromJson(Map<String, dynamic> json){
    verse = Verse.fromJson(json['verse']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['verse'] = verse.toJson();
    return _data;
  }
}

class Verse {
  Verse({
    required this.id,
    required this.verseNumber,
    required this.chapterId,
    required this.verseKey,
    required this.textIndopak,
    required this.juzNumber,
    required this.hizbNumber,
    required this.rubElHizbNumber,
    this.sajdahNumber,
    required this.pageNumber,
    this.sajdah,
    required this.textMadani,
    required this.words,
  });
  late final int id;
  late final int verseNumber;
  late final int chapterId;
  late final String verseKey;
  late final String textIndopak;
  late final int juzNumber;
  late final int hizbNumber;
  late final int rubElHizbNumber;
  late final Null sajdahNumber;
  late final int pageNumber;
  late final Null sajdah;
  late final String textMadani;
  late final List<Words> words;

  Verse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    verseNumber = json['verse_number'];
    chapterId = json['chapter_id'];
    verseKey = json['verse_key'];
    textIndopak = json['text_indopak'];
    juzNumber = json['juz_number'];
    hizbNumber = json['hizb_number'];
    rubElHizbNumber = json['rub_el_hizb_number'];
    sajdahNumber = null;
    pageNumber = json['page_number'];
    sajdah = null;
    textMadani = json['text_madani'];
    words = List.from(json['words']).map((e)=>Words.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['verse_number'] = verseNumber;
    _data['chapter_id'] = chapterId;
    _data['verse_key'] = verseKey;
    _data['text_indopak'] = textIndopak;
    _data['juz_number'] = juzNumber;
    _data['hizb_number'] = hizbNumber;
    _data['rub_el_hizb_number'] = rubElHizbNumber;
    _data['sajdah_number'] = sajdahNumber;
    _data['page_number'] = pageNumber;
    _data['sajdah'] = sajdah;
    _data['text_madani'] = textMadani;
    _data['words'] = words.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Words {
  Words({
    required this.id,
    required this.position,
    required this.textIndopak,
    required this.verseKey,
    required this.lineNumber,
    required this.pageNumber,
    required this.code,
    required this.className,
    required this.textMadani,
    required this.charType,
    required this.transliteration,
    required this.translation,
    required this.audio,
  });
  late final int id;
  late final int position;
  late final String textIndopak;
  late final String verseKey;
  late final int lineNumber;
  late final int pageNumber;
  late final String code;
  late final String className;
  late final String textMadani;
  late final String charType;
  late final Transliteration transliteration;
  late final Translation translation;
  late final Audio audio;

  Words.fromJson(Map<String, dynamic> json){
    id = json['id'];
    position = json['position'];
    textIndopak = json['text_indopak'];
    verseKey = json['verse_key'];
    lineNumber = json['line_number'];
    pageNumber = json['page_number'];
    code = json['code'];
    className = json['class_name'];
    textMadani = json['text_madani'];
    charType = json['char_type'];
    transliteration = Transliteration.fromJson(json['transliteration']);
    translation = Translation.fromJson(json['translation']);
    audio = Audio.fromJson(json['audio']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['position'] = position;
    _data['text_indopak'] = textIndopak;
    _data['verse_key'] = verseKey;
    _data['line_number'] = lineNumber;
    _data['page_number'] = pageNumber;
    _data['code'] = code;
    _data['class_name'] = className;
    _data['text_madani'] = textMadani;
    _data['char_type'] = charType;
    _data['transliteration'] = transliteration.toJson();
    _data['translation'] = translation.toJson();
    _data['audio'] = audio.toJson();
    return _data;
  }
}

class Transliteration {
  Transliteration({
    this.text,
    required this.languageName,
  });
  late final String? text;
  late final String languageName;

  Transliteration.fromJson(Map<String, dynamic> json){
    text = null;
    languageName = json['language_name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['language_name'] = languageName;
    return _data;
  }
}

class Translation {
  Translation({
    required this.languageName,
    required this.text,
  });
  late final String languageName;
  late final String text;

  Translation.fromJson(Map<String, dynamic> json){
    languageName = json['language_name'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['language_name'] = languageName;
    _data['text'] = text;
    return _data;
  }
}

class Audio {
  Audio({
    this.url,
  });
  late final String? url;

  Audio.fromJson(Map<String, dynamic> json){
    url = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    return _data;
  }
}