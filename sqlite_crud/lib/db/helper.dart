import 'package:sqflite/sqflite.dart' as conn;

class SQLHelper {
  static Future<void> createTables(conn.Database database) async {
    await database.execute("""CREATE TABLE data(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT,
    desc TEXT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )""");
  }

  static Future<conn.Database> db() async {
    return conn.openDatabase("database_name.db", version: 1,
        onCreate: (conn.Database database, int version) async {
      await createTables(database);
    });
  }

  static Future<int> insertFn(String title, String? desc) async {
    final db = await SQLHelper.db();

    final data = {'title': title, 'desc': desc};
    final id = await db.insert('data', data, conflictAlgorithm: conn.ConflictAlgorithm.replace);

    return id;
  }

  static Future<List<Map<String, dynamic>>> findAll() async {
    final db = await SQLHelper.db();
    return db.query('data', orderBy: 'id');
  }

  static Future<List<Map<String, dynamic>>> findOne(int id) async {
    final db = await SQLHelper.db();
    return db.query('data', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateFn(int id, String title, String? desc) async {
    final db = await SQLHelper.db();

    final data = {'title': title, 'desc': desc, 'createdAt': DateTime.now().toString()};
    final result = await db.update('data', data, where: "id = ?", whereArgs: [id]);

    return result;
  }

  static Future<void> deleteFn(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete('data', where: "id = ?", whereArgs: [id]);
    } catch (e) {
      print(e);
    }
  }
}
