typedef Word = Map<String, String>;

class Dict {
  late String term;
  late String def;
  List<Word> words = [];
  //add word
  void add({
    required String term,
    String def = "",
  }) {
    words.add({"term": term, "def": def});
    print("추가완료");
  }

  //show all words
  List<Word> showAll() {
    return this.words;
  }

  //get def
  void get({required String term}) {
    for (int i = 0; i < words.length; i++) {
      if (words[i]["term"] == term) {
        print(words[i]["def"]);
        return;
      }
    }
    print("그런 단어는 없습니다.");
  }

  //delete word
  void delete({required String term}) {
    for (int i = 0; i < words.length; i++) {
      if (words[i]["term"] == term) {
        words.removeAt(i);
        print("삭제 완료");
        return;
      }
    }
    print("그런 단어는 없습니다.");
  }

  //update word
  //If not exist => add word
  void update({required String term, required String def}) {
    for (int i = 0; i < words.length; i++) {
      if (words[i]["term"] == term) {
        words[i]["def"] = def;
        print("변경완료");
        return;
      }
    }
    this.add(term: term, def: def);
    print("새 단어를 추가했습니다.");
  }

  //count words
  void count() => print("${words.length}개");

  //Check exist or not
  bool exist({required String term}) => words.any((e) => e["term"] == term);

  //add many
  void bulkAdd(List<Word> bulk) {
    for (Word item in bulk) {
      String term = item["term"]!;
      String def = item["def"]!;
      this.add(term: term, def: def);
    }
  }

  //delete many
  void bulkDelete(List<String> bulk) {
    for (String item in bulk) {
      this.delete(term: item);
    }
  }
}

void main() {
  //Gen instence
  var dict = Dict();

  //test add()
  dict.add(term: "김치", def: "마시쩡");
  dict.add(term: "짜장면");
  dict.add(term: "제거대상", def: "살려줘");
  print(dict.showAll());

  //test get()
  dict.get(term: "김치");
  dict.get(term: "기무치");

  //test delete()
  dict.delete(term: "제거대상아님");
  dict.delete(term: "제거대상");
  print(dict.showAll());

  //test update()
  dict.update(term: "없는 단어", def: "크크");
  dict.update(term: "짜장면", def: "중국 음식");
  print(dict.showAll());

  //test count()
  dict.count();

  //test exist()
  print(dict.exist(term: "김치"));
  print(dict.exist(term: "킴취"));

  //test bulkAdd()
  dict.bulkAdd([
    {"term": "추가1", "def": "추카"},
    {"term": "추가2", "def": "추카추카"}
  ]);
  print(dict.showAll());

  //test bulkDelete()
  dict.bulkDelete(["추가1", "추가2"]);
  print(dict.showAll());
}
