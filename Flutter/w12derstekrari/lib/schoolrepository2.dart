import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:w12derstekrari/schoolrepository1.dart';
import 'package:w12derstekrari/student.dart';

class DbHelper {
  bool recreate; // yeniden oluştur demek recreate;

  DbHelper({this.recreate = false});

  //Bu kod, bir SQLite veritabanının dosya yolunu belirlemek için kullanılır.
  Future<Database> getDatabase() async {
    var dbPath = await getDatabasesPath();
    //join fonksiyonu, iki yolu birleştirir
    var fullPath = join(dbPath, "schooldb.db");
    //fullPath değişkeni, "schooldb.db" adlı veritabanı dosyasının cihazda saklanacağı tam dosya yolunu içerir

    //veritabanı var mı yok mu diye sorguluyoruz
    if (recreate && await File(fullPath).exists()) {
      //await File(fullPath).exists() ifadesi, belirli bir dosyanın var olup olmadığını kontrol eder
      await deleteDatabase(fullPath);
    }

    //Bu kod parçası, veritabanını oluşturmak veya güncellemek için kullanılan bir dizi adımdan oluşur.
    if (recreate || !await File(fullPath).exists()) {
      //İlk olarak, rootBundle.load fonksiyonu ile uygulamanın asset'lerinde bulunan "assets/database/schooldb.db" adlı veritabanı dosyası yüklenir.
      ByteData data = await rootBundle.load("assets/database/schooldb.db");

      //data.buffer.asUint8List() ifadesi, yüklenen ByteData nesnesini Uint8List türüne dönüştürür. Bu, veritabanı dosyasının byte'larını içeren bir liste elde etmek için kullanılır.
      List<int> bytes = data.buffer.asUint8List();

      await File(fullPath).writeAsBytes(bytes);
    }

    return await openDatabase(fullPath);
  }
}

//Bu Dart kodu, bir SchoolRepository2 sınıfını içerir ve bu sınıf aracılığıyla veritabanından öğrenci bilgilerini çekmek için kullanılır.
class SchoolRepository2 {
  var dbHelper = DbHelper();

  Future<List<Student>> getStudent() async {
    final db = await dbHelper.getDatabase(); // Veritabanı bağlantısı alınıyor

    // "students" tablosundan tüm öğrenci kayıtlarını çek
    final List<Map<String, dynamic>> studentsMap = await db.query("students");

// studentsMap listesinden Student sınıfı nesneleri oluştur
    final List<Student> students = List.generate(
        studentsMap.length, (index) => Student.fromMap(studentsMap[index]));

    return students;
  }

  Future<int> addStudent(Student student) async {
    final db = await dbHelper.getDatabase();

    return db.insert("students", student.toMap());
  }
//db.insert("students", student.toMap()); ifadesiyle veritabanına öğrenci eklenir. Bu ifade, SQLite veritabanında belirli bir tabloya (burada "students")
//bir kayıt eklemek için kullanılan insert fonksiyonunu çağırır. Eklenen öğrenci bilgileri, student.toMap() fonksiyonu aracılığıyla bir Map türüne dönüştürülür.

  Future<int> updateStudent(Student student) async {
    final db = await dbHelper.getDatabase();

    return db.update(
        "students", // Tablo adı
        student.toMap(), // Güncellenmiş öğrenci bilgileri
        where: "id = ?", // Güncelleme koşulu: ID'ye göre güncellem
        whereArgs: [
          student.id
        ]); // Koşul değeri: Güncellenecek öğrencinin ID'si
  }

  Future<int> deleteStudent(int id) async {
    final db = await dbHelper.getDatabase();

    return db.delete("students", //Silinmek istenen tablonun adı.
        whereArgs: [
          id
        ]); //Silme koşulu. Sadece belirli bir id değerine sahip öğrenciyi silmek için id alanına göre filtreleme yapıl
  }
}
