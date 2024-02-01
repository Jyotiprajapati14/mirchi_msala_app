import 'dart:convert';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mirchi_msala_app/Near_by.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();
  List mags = [];
  bool isTyping = false;

  void sendMsg() async {
    String text = controller.text;
    String apiKey = "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";
    controller.clear();
    try {
      if (text.isNotEmpty) {
        setState(() {
          mags.insert(0, (true, text));
          isTyping = true;
        });
        scrollController.animateTo(0.0,
            duration: const Duration(seconds: 1), curve: Curves.easeOut);
        var response = await http.post(
            Uri.parse("https://api.openai.com/v1/chat/completions"),
            headers: {
              "Authorization": "Bearer $apiKey",
              "Content-Type": "application/json"
            },
            body: jsonEncode({
              "model": "gpt-3.5-turbo",
              "messages": [
                {"role": "user", "content": text}
              ]
            }));
        if (response.statusCode == 200) {
          var json = jsonDecode(response.body);
          setState(() {
            isTyping = false;
            mags.insert(0, (
              false,
              json["choices"][0]["message"]["content"].toString().trimLeft()
            ));
          });
          scrollController.animateTo(0.0,
              duration: const Duration(seconds: 1), curve: Curves.easeOut);
        }
      }
    } on Exception {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Some error occurred, please try again!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "Chat Box",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NearByScreen()),
                  );
                },
                child: Icon(Icons.arrow_back));
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
                controller: scrollController,
                itemCount: mags.length,
                shrinkWrap: true,
                reverse: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: isTyping && index == 0
                        ? Column(
                            children: [
                              Bubble(
                                shadowColor: Colors.red,
                                elevation: 2,
                                alignment: Alignment.topRight,
                                nip: BubbleNip.rightTop,
                                color: Color.fromARGB(255, 225, 255, 199),
                                child: Text('Hello, World!'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 4),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Typing...")),
                              )
                            ],
                          )
                        : Bubble(
                            shadowColor: Colors.red,
                            elevation: 2,
                            alignment: Alignment.topRight,
                            nip: BubbleNip.rightTop,
                            color: Color.fromARGB(255, 225, 255, 199),
                            child: Text('Hello, World!'),
                          ),
                  );
                }),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        controller: controller,
                        textCapitalization: TextCapitalization.sentences,
                        onSubmitted: (value) {
                          sendMsg();
                        },
                        textInputAction: TextInputAction.send,
                        showCursor: true,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: "Enter text"),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  sendMsg();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
