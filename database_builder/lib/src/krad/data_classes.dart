import 'package:isar/isar.dart';
part 'data_classes.g.dart';



/// Class to store data about kanjis that use a certain radical
/// 
/// To generate the Isar code run:
/// `dart run build_runner build --delete-conflicting-outputs`
@collection
class Krad {
  /// A unique id of this radical's entry in the database
  Id id = Isar.autoIncrement;
  /// This entries kanji character
  @Index()
  String kanji;
  /// The radicals used in `kanjis`
  @Index(type: IndexType.hashElements)
  List<String> radicals = <String>[];


  Krad(
    {
      required this.kanji,
      required this.radicals,
    }
  );
}
