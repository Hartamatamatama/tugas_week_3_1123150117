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
