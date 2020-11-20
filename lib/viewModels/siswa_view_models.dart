part of 'view_models.dart';


Future getSiswa() async {
  try { //
    http.Response hasil = await http.get(
        Uri.encodeFull("https://flutter-project.herokuapp.com/api/siswa"),
        headers: {"Accept": "application/json"}
    );

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan data Siswa");
      final data = postModelFromJson(hasil.body);
      return data;
    } else {
      print("Gagal");
      return null;
    }
  }
  catch (e) {
    print ("Error pada catch $e");
  }
}

Future getSetor() async {
  try { //
    http.Response hasil = await http.get(
        Uri.encodeFull("https://flutter-project.herokuapp.com/api/siswa"),
        headers: {"Accept": "application/json"}
    );

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan data hafalan");
      final data = postModelFromJson(hasil.body);
      final data2 = Hafalan.fromJson(hasil.body);
      return data;
    } else {
      print("Gagal");
      return null;
    }
  }
  catch (e) {
    print ("Error pada catch $e");
  }
}