import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class dbHelper {
  late Database _db;

  //db name
  static const String DB_name = 'user.db';

  static const int Version = 1;
  // table name
  static const String Table_name = 'user';

  // 表單資料
  static const String UserID = 'user_id';
  static const String UserName = 'user_name';
  static const String UserEmail = 'user_email';
  static const String UserPassword = 'user_password';

  //db function
  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDB(); // 初始化DB
    return _db;
  }

  initDB() async {
    io.Directory documentDirectory =
        await getApplicationDocumentsDirectory(); // 取得使用者的文件目錄
    String path = join(documentDirectory.path, DB_name); // 連接資料庫路徑
    var db = await openDatabase(path,
        version: Version, onCreate: _onCreate); // 開啟資料庫
    return db;
  }

  _onCreate(Database db, int Version) async {
    //create table
    // $UserID INTEGER PRIMARY KEY AUTOINCREMENT -> 自動遞增
    await db.execute(
        "CREATE TABLE $Table_name($UserID TEXT ,$UserName TEXT,$UserEmail TEXT,$UserPassword TEXT,PRIMARY KEY($UserID))");
  }
}
