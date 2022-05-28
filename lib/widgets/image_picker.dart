import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import '../styles/style.dart';

class ImageSelect extends StatefulWidget {
  String? shapeOfImg;
  Function updateImage;
  bool isEdit;
  String imageUrl;

  ImageSelect(
      {Key? key,
      required this.imageUrl,
      required this.isEdit,
      required this.shapeOfImg,
      required this.updateImage})
      : super(key: key);

  @override
  _ImageSelectState createState() => _ImageSelectState();
}

class _ImageSelectState extends State<ImageSelect> {
  final ImagePicker _picker = ImagePicker();
  File? _image;
  bool isChange = false;

  @override
  void initState() {
    super.initState();
    print(widget.shapeOfImg);
    if (widget.isEdit) {
      _image = File('_');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('im image edit');
    print(widget.isEdit);
    print(widget.imageUrl);
    return Container(
      child: GestureDetector(
        onTap: () async {
// open bottom sheet
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return SafeArea(
                    child: Container(
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Select photo",
                          style: Styles.subHeadingSemiBold,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                        XFile? image = await _picker.pickImage(
                                            source: ImageSource.camera, imageQuality: 50);

                                        setState(() {
                                          _image = File(image!.path);
                                          if (widget.isEdit) {
                                            isChange = true;
                                          }
                                        });
                                        print(_image);
                                        Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // border: Border.all(color: Colors.red,width: 2),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xFF707070)
                                                .withOpacity(.2),
                                            offset: const Offset(0.0, 6.0),
                                            blurRadius: 12.0,
                                          )
                                        ]),
                                    child: const Icon(
                                      Icons.photo_camera,
                                      color: Styles.sBlue,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Camera',
                                  style: Styles.txtBrown,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    XFile? image = await _picker.pickImage(
                                        source: ImageSource.gallery,
                                        imageQuality: 50);
                                    setState(() {
                                      _image = File(image!.path);
                                      if (widget.isEdit) {
                                        isChange = true;
                                      }
                                    });
                                    print(_image);
                                    widget.updateImage(image);
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // border: Border.all(color: Colors.red,width: 2),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                const Color(0xFF707070).withOpacity(.2),
                                            offset: const Offset(0.0, 6.0),
                                            blurRadius: 12.0,
                                          )
                                        ]),
                                    child: const Icon(
                                      Icons.photo_library,
                                      color: Styles.sBlue,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Gallery',
                                  style: Styles.txtBrown,
                                )
                              ],
                            ),
                          ],
                        ),
                      ]),
                )
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: <Widget>[

                    // ListTile(
                    //   leading: const Icon(Icons.photo_library),
                    //   title: const Text('Photo Library',style: TextStyle(color: Colors.black)),
                    //   onTap: () async {
                    //     XFile? image = await _picker.pickImage(
                    //         source: ImageSource.gallery, imageQuality: 50);
                    //     setState(() {
                    //       _image = File(image!.path);
                    //       if (widget.isEdit) {
                    //         isChange = true;
                    //       }
                    //     });
                    //     print(_image);
                    //     widget.updateImage(image);
                    //     Navigator.pop(context);
                    //   },
                    // ),
                    // ListTile(
                    //   leading: const Icon(Icons.photo_camera),
                    //   title: const Text('Camera',style: TextStyle(color: Colors.black)),
                    //   onTap: () async {
                    //     XFile? image = await _picker.pickImage(
                    //         source: ImageSource.camera, imageQuality: 50);
                    //
                    //     setState(() {
                    //       _image = File(image!.path);
                    //       if (widget.isEdit) {
                    //         isChange = true;
                    //       }
                    //     });
                    //     print(_image);
                    //     Navigator.pop(context);
                    //   },
                    // ),
                    // const SizedBox(height: 30)
                    // ],
                    // ),
                    );
              });
        },
        child: CircleAvatar(
          radius: 55,
          // backgroundColor: Styles.gbMdDarkGrey,
          backgroundColor: Colors.transparent,
          child: _image != null
              ? ClipRRect(
                  borderRadius: widget.shapeOfImg == 'square'
                      ? BorderRadius.circular(5)
                      : BorderRadius.circular(70),
                  child: Builder(
                    builder: (BuildContext context) {
                      if (widget.isEdit && isChange) {
                        return Image.file(
                          _image!,
                          width: 117,
                          height: 117,
                          fit: BoxFit.cover,
                        );
                      } else if (widget.isEdit == false && isChange == false) {
                        return Image.file(
                          _image!,
                          width: 117,
                          height: 117,
                          fit: BoxFit.cover,
                        );
                      } else {
                        return Image.network(
                          widget.imageUrl,
                          width: 117,
                          height: 117,
                          fit: BoxFit.cover,
                        );
                      }
                    },
                  ))
              : Container(
                  decoration: BoxDecoration(
                    color: widget.shapeOfImg == 'square'
                        ? Colors.white
                        : Styles.sTextDarkBlue.withOpacity(0.2),
                    border: widget.shapeOfImg == 'square'
                        ? Border.all(color: Styles.sBlue)
                        : Border.all(color: Styles.sBlue, width: 3),
                    borderRadius: widget.shapeOfImg == 'square'
                        ? BorderRadius.circular(5)
                        : BorderRadius.circular(70),
                  ),
                  width: 117,
                  height: 117,
                  child: widget.shapeOfImg == 'square'
                      ? const Icon(
                          Icons.camera_alt_outlined,
                          color: Styles.sBgGray,
                        )
                      : Icon(
                          Icons.camera_alt,
                          color: Styles.sTextDarkBlue.withOpacity(0.5),
                          size: 28,
                        ),
                ),
        ),
      ),
    );
  }
}
