class Mahasiswa {
  // Properties (atribut)
  String nama;
  String nim;
  String jurusan;
  int angkatan;

  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.jurusan,
    required this.angkatan,
  });

  // Method
  void tampilkanData() {
    print("Nama : $nama");
    print("NIM : $nim");
    print("Jurusan : $jurusan");
    print("Angkatan : $angkatan");
  }
}

class AsistenDosen extends Mahasiswa {
  String mataKuliah;

  AsistenDosen({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
    required this.mataKuliah,
  }) : super(nama: nama, nim: nim, jurusan: jurusan, angkatan: angkatan);

  // Override method
  @override
  void tampilkanData() {
    super.tampilkanData();
    print("Asisten MK: $mataKuliah");
  }
}

abstract class Pendaftaran {
  void daftarMatkul(String matkul);
}

class MahasiswaAktif extends Mahasiswa implements Pendaftaran {
  List<String> matkulDiambil = [];

  MahasiswaAktif({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
  }) : super(nama: nama, nim: nim, jurusan: jurusan, angkatan: angkatan);

  @override
  void daftarMatkul(String matkul) {
    matkulDiambil.add(matkul);
    print("$nama berhasil daftar mata kuliah $matkul");
  }
}

void main() {
  // Buat objek Mahasiswa
  var mhs = Mahasiswa(
    nama: "Farhan Rasisprawira Hartama",
    nim: "1123150124",
    jurusan: "Teknik Informatika",
    angkatan: 2023,
  );
  mhs.tampilkanData();

  print("-----");

  // Buat objek AsistenDosen
  var asdos = AsistenDosen(
    nama: "sarah",
    nim: "1332711002",
    jurusan: "Informatika",
    angkatan: 2023,
    mataKuliah: "Mobile Apps",
  );
  asdos.tampilkanData();

  print("-----");

  // Buat objek MahasiswaAktif
  var mhsAktif = MahasiswaAktif(
    nama: "Dewi Sartika",
    nim: "1123150124",
    jurusan: "Teknik informatika",
    angkatan: 2023,
  );
  mhsAktif.tampilkanData();
  mhsAktif.daftarMatkul("AI");
  mhsAktif.daftarMatkul("Jaringan Komputer");
}
