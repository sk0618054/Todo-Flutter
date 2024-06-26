

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseService{
  static Database? 
  static final DatabaseService instance =DatabaseService._constructor();

  final String _tasksTableName="tasks";
  final String _tasksIdcolumnName="id";
  final String _tasksContentColumnName ="content";
  final String _tasksStatusColumnName="status";


  DatabaseService._constructor();

  Future<Database>

  Future<Database> getDatabase() async{
    final databaseDirPath=await getDatabasesPath();


    final databaseePath= join(databaseDirPath,"master_db.db");
    final database=await openDatabase(
        databaseePath,
      onCreate: (db,version){
          db.execute(
            '''
            CREATE TABLE $_tasksTableName(
              
            )
            '''
          );
      }
    );

  }
}