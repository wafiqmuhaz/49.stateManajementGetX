import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(Hcon());

  @override
  Widget build(BuildContext context) {
    //int data = 0; INI DIGUNAKAN JIKA INGIN MELAKUKAN TAMBAH DATA DENGAN MATERIAL
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("State Manajememt"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () {
            //     return Text(
            //       "${homeC.dataPantau}",
            //       style: TextStyle(fontSize: 50),
            //     );
            //   },
            // ),
            GetBuilder<Hcon>(
              builder: (controller) {
                return Text(
                  "${controller.dataPantau}",
                  style: TextStyle(fontSize: 50),
                );
                print(controller.dataPantau);
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                homeC.tambahData(); 
              },
              child: Text("Tambah"),
            ),
            ElevatedButton(
              onPressed: () {
                homeC.refDis();
              },
              child: Text("Refresh Display"),
            ),
          ],
        ),
      ),
    );
  }
}
