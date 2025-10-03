// Class induk untuk merepresentasikan data mahasiswa
class Mahasiswa {
  // Properties (atribut) mahasiswa
  String nama;
  String nim;
  String jurusan;
  int angkatan;

  // Constructor untuk membuat objek mahasiswa
  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.jurusan,
    required this.angkatan,
  });

  // Method untuk menampilkan data mahasiswa
  void tampilkanData() {
    print("Nama     : $nama");
    print("NIM      : $nim");
    print("Jurusan  : $jurusan");
    print("Angkatan : $angkatan");
  }
}

// Class turunan untuk merepresentasikan mahasiswa yang menjadi asisten dosen
class AsistenDosen extends Mahasiswa {
  // Property tambahan untuk mata kuliah yang diasisten
  String mataKuliah;

  // Constructor dengan parameter tambahan mata kuliah
  AsistenDosen({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
    required this.mataKuliah,
  }) : super(nama: nama, nim: nim, jurusan: jurusan, angkatan: angkatan);

  // Override method tampilkanData untuk menambahkan info mata kuliah
  @override
  void tampilkanData() {
    super.tampilkanData(); // Tampilkan data dasar mahasiswa
    print("Asisten MK: $mataKuliah"); // Tambahkan info mata kuliah
  }
}

abstract class Pendaftaran {
  void daftarMatkul(String matkul);
}

// Fungsi utama program
void main() {
  // Membuat objek mahasiswa biasa
  var mhs = Mahasiswa(
    nama: "I Ketut Gunawan",
    nim: "1123150118",
    jurusan: "Teknik Informatika",
    angkatan: 2025,
  );

  // Menampilkan data mahasiswa biasa
  print("=== Data Mahasiswa ===");
  mhs.tampilkanData();

  print('\n' + '=' * 30 + '\n');

  // Membuat objek asisten dosen
  var asdos = AsistenDosen(
    nama: "Farhan Rasisprawira Hartama",
    nim: "1123150117",
    jurusan: "Teknik Informatika",
    angkatan: 2023,
    mataKuliah: "Mobile Apps",
  );

  // Menampilkan data asisten dosen
  print("=== Data Asisten Dosen ===");
  asdos.tampilkanData();
}
