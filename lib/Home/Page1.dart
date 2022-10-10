import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cream/Thenme.dart';
import 'package:image_picker/image_picker.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  bool loading = true;
  //File? file;
  var output;
  var label;
  var fine;
  ImagePicker image = ImagePicker();
  var gfg = {
    'Class 1': 'Class 1',
    'Class 2': 'Class 2',
    'Class 3': 'Class 3',
  };

  @override
  void initState() {
    super.initState();
    //loadmodel().then((value) {
    setState(() {});
    //});
  }

  // detectimage(File l) async {
  //   var prediction = await Tflite.runModelOnImage(
  //     path: l.path,
  //     numResults: 2,
  //     threshold: 0.6,
  //     imageMean: 127.5,
  //     imageStd: 127.5,
  //   );

  //   setState(() {
  //     output = prediction;
  //     label = (output![0]['label']).toString().substring(2);
  //     fine = gfg[label];
  //     loading = false;
  //   });
  // }

  //loadmodel() async {
  //await Tflite.loadModel(
  //  model: "assets/model_unquant.tflite",
  //  labels: "assets/labels.txt",
  //);
  //}

  @override
  void dispose() {
    super.dispose();
  }

  // getImageFromCamera() async {
  //   var img = await image.pickImage(source: ImageSource.camera);

  //   setState(() {
  //     file = File(img!.path);
  //   });
  //   detectimage(file!);
  //   return detectimage(file!);
  // }

  // getImageFromGallery() async {
  //   var img = await image.pickImage(source: ImageSource.gallery);

  //   setState(() {
  //     file = File(img!.path);
  //   });
  //   detectimage(file!);
  // }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: h,
        width: w,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loading == true
                  ? Container()
                  : Container(
                      //color: Color.fromARGB(255, 134, 237, 141),
                      child: Column(
                        children: [
                          Container(
                            height: 380,
                            padding: EdgeInsets.all(15),
                          ),
                          Text(
                            (output![0]['label']).toString().substring(1),
                          ),
                          Text(
                            'Confidence: ' +
                                (output![0]['confidence']).toStringAsFixed(4),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                height: 100,
                width: 100,
                child: CupertinoContextMenu(
                  child: Image.asset("assets/logo1.png"),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      child: const Text('เอาในเครื่อง'),
                      onPressed: () {},
                    ),
                    CupertinoContextMenuAction(
                      child: const Text('กล้องถ่ายรูป'),
                      onPressed: () {},
                    ),
                    CupertinoContextMenuAction(
                      child: const Text('เเก้ไข'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "กดรูปค้างไว้ จะมีเมนูขึ้นมา",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
