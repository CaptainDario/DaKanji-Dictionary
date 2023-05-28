import 'package:isar/isar.dart';
part 'data_classes.g.dart';



/// Class to store data about radicals
/// 
/// To generate the Isar code run:
/// `dart run build_runner build --delete-conflicting-outputs`
@collection
class Krad {
  /// A unique id of this radical's entry in the database
  Id id = Isar.autoIncrement;
  /// This entries radical character
  @Index()
  String character;
  @Index(type: IndexType.hashElements)
  List<String> kanjis = <String>[];
  /// The stroke count of this radical
  @Index()
  int strokeCount;


  Krad(
    {
      required this.character,
      required this.kanjis,
      required this.strokeCount,
    }
  );
}
