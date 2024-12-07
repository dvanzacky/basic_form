import 'package:flutter/material.dart';

class FormBiners extends StatefulWidget {
  const FormBiners({super.key});

  @override
  _FormBinersState createState() => _FormBinersState();
}

class _FormBinersState extends State<FormBiners> {
  final TextEditingController nameController = TextEditingController();
  String? birthDate; // Untuk menyimpan tanggal lahir
  String? selectedYear; // Tahun 
  String? gender; // Gender
  bool ison = false; // Sudah follow Instagram
  bool isOn = false; // Sudah siap mental
  bool isChecked = false; // Setia mendukung saat kalah
  Map<String, bool> selectedPlayers = {
    "Galang": false,
    "Devan": false,
    "Tyo": false,
    "Fadlan": false,
    "Dapaa": false,
  };

  final List<String> yearList = List.generate(
    2024 - 1950 + 1,
    (index) => (1950 + index).toString(),
  ); // Daftar tahun

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        birthDate = "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
      });
    }
  }

  void _showResult() {
    // Mendapatkan pemain yang dipilih
    List<String> selectedPlayersList = selectedPlayers.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    // Menampilkan data di dalam dialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Hasil Form'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Nama: ${nameController.text.isNotEmpty ? nameController.text : "Belum diisi"}"),
                Text("Tanggal Lahir: ${birthDate ?? "Belum diisi"}"),
                Text("Tahun Join: ${selectedYear ?? "Belum diisi"}"),
                Text("Gender: ${gender ?? "Belum dipilih"}"),
                Text("Follow Instagram: ${ison ? "Sudah" : "Belum"}"),
                Text("Siap Mental: ${isOn ? "Ya" : "Belum"}"),
                Text(
                    "orang gila: ${selectedPlayersList.isNotEmpty ? selectedPlayersList.join(', ') : "Belum dipilih"}"),
                Text(
                    "setia sebagai pria?: ${isChecked ? "Ya" : "Tidak"}"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Tutup"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Form Pendaftaran Menjadi anti impostor'),
        backgroundColor: const Color.fromARGB(255, 0, 187, 255),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  helperText: "daiapa namamu?",
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: TextEditingController(
                      text: birthDate ?? '', // Menampilkan tanggal yang dipilih
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Birth date',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      suffixIcon: Icon(Icons.date_range),
                      helperText: "What's your birth date?",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('ingin join sampai kapan?'),
                  const SizedBox(width: 8),
                  DropdownButton<String>(
                    value: selectedYear,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 20,
                    style: TextStyle(color: Colors.blue[600]),
                    underline: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                    items: yearList
                        .map((year) => DropdownMenuItem(
                              value: year,
                              child: Text(year),
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedYear = newValue;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('Sudah Follow Instagram magnificentseven7?'),
                  const SizedBox(width: 10),
                  Switch(
                    value: ison,
                    onChanged: (val) {
                      setState(() {
                        ison = val;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Sudah Siap tidak impostor?'),
                  const SizedBox(width: 10),
                  Switch(
                    value: isOn,
                    onChanged: (val) {
                      setState(() {
                        isOn = val;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Gender:'),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      Radio(
                        value: 'laki - laki',
                        groupValue: gender,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              gender = val;
                            }
                          });
                        },
                      ),
                      const Text('laki - laki'),
                      const SizedBox(width: 20),
                      Radio(
                        value: 'perempuan',
                        groupValue: gender,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              gender = val;
                            }
                          });
                        },
                      ),
                      const Text('perempuan'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Siapa orang gila?'),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: selectedPlayers.keys.map((player) {
                  return Row(
                    children: [
                      Checkbox(
                        value: selectedPlayers[player],
                        onChanged: (bool? value) {
                          setState(() {
                            selectedPlayers[player] = value ?? false;
                          });
                        },
                      ),
                      Text(player),
                    ],
                  );
                }).toList(),
              ),
              ElevatedButton(
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Info'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Text('Peraturan anti impostor      1) Mental Baja     2) Siap dimaki, 3)tidak jadi intel'),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Ok"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('no impostor wajib baca'),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('setia jadi teman anti impostor?'),
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      setState(() {
                        if (val != null) {
                          isChecked = val;
                        }
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: _showResult,
                  child: const Text('Lihat Hasil'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}