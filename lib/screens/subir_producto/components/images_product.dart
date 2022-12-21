//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SubirImagenes extends StatefulWidget {
  const SubirImagenes({Key? key}) : super(key: key);

  @override
  State<SubirImagenes> createState() => _SubirImagenesState();
}

class _SubirImagenesState extends State<SubirImagenes> {
  final ImagePicker imagePicker = ImagePicker();

  //List<XFile>? imageFileList = [];

  File? subirimagen1;
  File? subirimagen2;
  File? subirimagen3;
  final picker = ImagePicker();

  /*void Future imagenselecuionar() async {
    final File? subirimagen = await imagePicker.pickImage();
    if (imagenselecuionar()!.isNotEmpty) {
      imageFileList!.addAll(imagenselecuionar());
    }
    setState(() {});
  }*/

  Future selImage(op) async {
    XFile? picketFile;
    picketFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (picketFile != null) {
        subirimagen1 = File(picketFile.path);
      } else {
        print("no se selecionó una fotografía");
      }
    });
  }

  /*
  Future selImage2(op) async {
    XFile? picketFile1;
    picketFile1 = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (picketFile1 != null) {
        subirimagen2 = File(picketFile1.path);
      } else {
        print("no se seleciono foto");
      }
    });
  }

  Future selImage3(op) async {
    XFile? picketFile2;
    picketFile2 = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (picketFile2 != null) {
        subirimagen3 = File(picketFile2.path);
      } else {
        print("no se seleciono foto");
      }
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        subirimagen1 == null ? const Center() : Image.file(subirimagen1!),
        subirimagen2 == null ? const Center() : Image.file(subirimagen1!),
        subirimagen3 == null ? const Center() : Image.file(subirimagen1!),
        GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image.asset("subirimagen1"),
              subirimagen1 == null ? const Center() : Image.file(subirimagen1!),

              ElevatedButton(
                onPressed: () {
                  selImage(1);
                  //selImage2(1);
                  //selImage3(1);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 248, 113, 128),
                ),
                //color: Color.fromARGB(255, 120, 120, 120),
                child: const Text('Seleccionar imágenes'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
