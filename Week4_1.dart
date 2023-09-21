void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // Membuat list nama dan NIM
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'M. Haikal Buldan', 'nim': '2141720080'},
    {'nama': 'M. Alfarizi Abdullah', 'nim': '2141720142'},
    {'nama': 'Alfariz Abdul', 'nim': '2141720444'}
  ];

  // Menampilkan list nama dan NIM
  for (var data in mahasiswa) {
    print('Nama: ${data['nama']}, NIM: ${data['nim']}');
  }
}
