import 'dart:io';

class Mahasiswa {
  String nim;
  String nama;
  String jurusan;
  int angkatan;

  Mahasiswa(this.nim, this.nama, this.jurusan, this.angkatan);

  void tampilkanDetail() {
    print("= Detail Mahasiswa =");
    print("NIM     : $nim");
    print("Nama    : $nama");
    print("Jurusan : $jurusan");
    print("Angkatan: $angkatan");
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [];

  print("= Entry Data Mahasiswa =");
  for (int i = 1; i <= 1; i++) {
    print("\nMahasiswa ke-$i:");

    stdout.write("Masukkan NIM     : ");
    String nim = stdin.readLineSync() ?? "";

    stdout.write("Masukkan Nama    : ");
    String nama = stdin.readLineSync() ?? "";

    stdout.write("Masukkan Jurusan : ");
    String jurusan = stdin.readLineSync() ?? "";

    stdout.write("Masukkan Angkatan: ");
    int angkatan = int.parse(stdin.readLineSync() ?? "0");

    daftarMahasiswa.add(Mahasiswa(nim, nama, jurusan, angkatan));
  }

  print("\n= Pencarian Data Mahasiswa =");
  stdout.write("Masukkan NIM atau Nama: ");
  String cari = stdin.readLineSync() ?? "";

  bool ditemukan = false;
  for (var mhs in daftarMahasiswa) {
    if (mhs.nim.toLowerCase() == cari.toLowerCase() ||
        mhs.nama.toLowerCase() == cari.toLowerCase()) {
      mhs.tampilkanDetail();
      ditemukan = true;
      break;
    }
  }

  if (!ditemukan) {
    print("Data mahasiswa dengan keyword '$cari' tidak ditemukan.");
  }
}
