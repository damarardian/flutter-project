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

Future getOneSiswa(String id) async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://flutter-project.herokuapp.com/api/siswa/${id}"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan data setoran");
      final data = json.decode(hasil.body);
      print(data);
      return data;
//      return Hafalan.fromJson(data[0]);

    } else {
      print("Gagal menampikan 1 data");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

