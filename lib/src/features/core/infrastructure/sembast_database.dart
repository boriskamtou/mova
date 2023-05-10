import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  static final SembastDatabase _singleton = SembastDatabase._();

  static SembastDatabase get instance => _singleton;

  //database instance
  Database? _database;

  //private constructor
  SembastDatabase._();

  Future<Database?> get database async {
    _database ??= await _openDatabase();

    return _database;
  }

  Future<Database> _openDatabase() async {
    //get application directory
    final directory = await getApplicationDocumentsDirectory();

    //construct path
    final dbPath = join(directory.path, "movies.db");

    //open database
    final db = await databaseFactoryIo.openDatabase(dbPath);
    return db;
  }
}
