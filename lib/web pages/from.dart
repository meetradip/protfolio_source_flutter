import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class buttonsheet extends StatefulWidget {
  const buttonsheet({super.key});

  @override
  State<buttonsheet> createState() => _buttonsheetState();
}

class _buttonsheetState extends State<buttonsheet> {
  void validate() {
    if (_namecontroller.text.isNotEmpty &&
        _subjectcontroller.text.isNotEmpty &&
        _messagecontroller.text.isNotEmpty &&
        _emailcontroller.text.isNotEmpty) {
      buttonactive = true;
      setState(() {
        buttonactive = buttonactive;
      });
    } else {
      buttonactive = false;
      setState(() {
        buttonactive = buttonactive;
      });
    }
  }

  final snackbar = SnackBar(
    content: const Text(
      'Your message has been sent',
      style: TextStyle(color: Colors.white),
    ),
    duration: const Duration(seconds: 2),
    backgroundColor: Colors.green.shade200,
    dismissDirection: DismissDirection.down,
  );
  late TextEditingController _namecontroller = TextEditingController();
  late TextEditingController _emailcontroller = TextEditingController();
  late TextEditingController _subjectcontroller = TextEditingController();
  late TextEditingController _messagecontroller = TextEditingController();
  late TextEditingController controller;
  bool isloading = false;
  bool buttonactive = false;

  @override
  void initState() {
    super.initState();
    _emailcontroller = TextEditingController();
    _emailcontroller.addListener(() {
      validate();
    });
    _subjectcontroller = TextEditingController();
    _subjectcontroller.addListener(() {
      validate();
    });
    _namecontroller = TextEditingController();
    _namecontroller.addListener(() {
      validate();
    });
    _messagecontroller = TextEditingController();
    _messagecontroller.addListener(() {
      validate();
    });
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _messagecontroller.dispose();
    _namecontroller.dispose();
    _subjectcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Future sendemail() async {
    const serviceId = 'service_4lq3fb7';
    const tamplateId = 'template_zj7jeh7';
    const userId = 'K8oCYBf7EcUNxIWr_';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    var response = await http.post(url,
        headers: {
          'origin': 'http:localhost',
          'Content-Type': 'application/json'
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': tamplateId,
          'user_id': userId,
          'template_params': {
            'name': _namecontroller.text,
            'subject': _subjectcontroller.text,
            'reply_to': _emailcontroller.text,
            'message': _messagecontroller.text,
            'to_name': 'Riduan'
          }
        }));
    final snackbar = SnackBar(
      content: Text('${response.body}'),
      duration: const Duration(seconds: 1),
    );
    print(response.body);
    //SnackBar(content: Text('${response.body}', style: TextStyle(color: Colors.white),));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: const Icon(
                Icons.close,
                size: 20,
                color: Colors.white,
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              keyboardType: TextInputType.name,
              cursorHeight: 20,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
              showCursor: true,
              controller: _namecontroller,
              minLines: 1,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: const TextStyle(color: Colors.white70),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2))),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              cursorHeight: 20,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
              showCursor: true,
              controller: _emailcontroller,
              minLines: 1,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  hintStyle: const TextStyle(color: Colors.white70),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2))),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorHeight: 20,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
              showCursor: true,
              controller: _subjectcontroller,
              minLines: 1,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'Subject',
                  hintStyle: const TextStyle(color: Colors.white70),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2))),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorHeight: 20,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
              showCursor: true,
              controller: _messagecontroller,
              minLines: 4,
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: 'Message',
                  hintStyle: const TextStyle(color: Colors.white70),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          buttonactive
              ?
              //true

              InkWell(
                  splashColor: Colors.transparent,
                  onTap: () async {
                    sendemail();

                    const CircularProgressIndicator();
                    if (isloading) return;
                    setState(() {
                      isloading = true;
                    });
                    await Future.delayed(const Duration(seconds: 2));
                    setState(() {
                      isloading = false;
                    });

                    Navigator.of(context).pop();

                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 180),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueGrey),
                    child: Center(
                      child: isloading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              'submit',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                    ),
                  ),
                )
              //false
              : Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 180, vertical: 30),
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey),
                  child: Center(
                    child: isloading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            'Fill the from',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                  ),
                ),
          Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom))
        ],
      ),
    );
  }
}
