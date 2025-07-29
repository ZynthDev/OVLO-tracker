import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/components/copy_button.dart';
import '../../../../controllers/chat_bot_controller.dart';
import '../../../../pages/ai_chat_page/_components/chat_bar.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/extensions/color.dart';
import '../../../../utils/components/screen_title.dart';

class ChattingPage extends StatefulWidget {
  final String initialQuestion;
  const ChattingPage({super.key, required this.initialQuestion});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  final double SIZE = 45;
  final List<Map<String, String>> _messages = [];
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  String _animatedText = '';
  String? _fullBotResponse;
  Timer? _typingTimer;

  @override
  void initState() {
    super.initState();
    _sendMessage(widget.initialQuestion);
  }

  Future<void> _sendMessage(String question) async {
    if (question.trim().isEmpty) return;

    setState(() {
      _messages.add({'role': 'user', 'message': question});
      _isLoading = true;
      _animatedText = '';
      _fullBotResponse = null;
    });

    await Future.delayed(Duration(milliseconds: 100));
    _scrollToBottom();

    final response = await getChatResponse(question);

    setState(() {
      _isLoading = false;
      _fullBotResponse = response;
      _animatedText = '';
    });

    _startTypingEffect(response);
  }

  void _startTypingEffect(String fullText) {
    int index = 0;
    _typingTimer?.cancel();

    _typingTimer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      if (index < fullText.length) {
        setState(() {
          _animatedText += fullText[index];
        });
        index++;
        _scrollToBottom();
      } else {
        timer.cancel();
        _typingTimer = null;

        setState(() {
          _messages.add({'role': 'bot', 'message': fullText});
          _animatedText = '';
          _fullBotResponse = null;
        });

        Future.delayed(Duration(milliseconds: 100), _scrollToBottom);
      }
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.chevron_left,
              size: 36,
              color: HexColor.fromHex(AppConstants.primaryText),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 40),
            child: ScreenTitle(title: "Ovlo AI", size: 24, isCenter: true),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildMessage(Map<String, String> msg) {
    final isBot = msg['role'] == 'bot';
    final message = msg['message'] ?? '';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              if (isBot)
                Container(
                  height: SIZE,
                  width: SIZE,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: HexColor.fromHex("#8F8F8F"),
                      width: 2,
                    ),
                  ),
                  child: Image.asset(AppAssets.iconAnya),
                ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: isBot
                        ? HexColor.fromHex("#51075E").withValues(alpha: 0.4)
                        : HexColor.fromHex("FDD8D8"),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message,
                        style: TextStyle(
                          color: isBot ? Colors.white : Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (!isBot) SizedBox(width: 10),
              if (!isBot)
                Container(
                  height: SIZE,
                  width: SIZE,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: HexColor.fromHex("FDD8D8"),
                  ),
                  child: Icon(Icons.person, color: Colors.black54),
                ),

            ],
          ),
          if (isBot) CopyButton(textToCopy: message)
        ],
      ),
    );
  }


  Widget _buildLoadingBubble() {
    return Row(
      children: [
        Container(
          height: SIZE,
          width: SIZE,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: HexColor.fromHex("#8F8F8F"),
              width: 2,
            ),
          ),
          child: Image.asset(AppAssets.iconAnya),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: HexColor.fromHex("#51075E").withValues(alpha: 0.4),
            ),
            child: SizedBox(
              height: 20,
              child: Transform.scale(
                scale: 2.3,
                child: Lottie.asset('assets/animations/chat_typing.json',),
              ),
            )
          ),
        )
      ],
    );
  }

  Widget _buildTypingBubble(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: SIZE,
          width: SIZE,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: HexColor.fromHex("#8F8F8F"),
              width: 2,
            ),
          ),
          child: Image.asset(AppAssets.iconAnya),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: HexColor.fromHex("#51075E").withValues(alpha: 0.4),
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    int extraItemCount = (_isLoading || _fullBotResponse != null) ? 1 : 0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: -140,
              child: IgnorePointer(
                child: Image.asset('assets/gradients/grad_11.png'),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                    itemCount: 1 + _messages.length + extraItemCount, // 1 for header
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return _buildHeader();
                      }

                      final msgIndex = index - 1;

                      if (msgIndex < _messages.length) {
                        return _buildMessage(_messages[msgIndex]);
                      }

                      if (_isLoading) {
                        return _buildLoadingBubble();
                      }

                      if (_fullBotResponse != null) {
                        return _buildTypingBubble(_animatedText);
                      }

                      return SizedBox.shrink();
                    },
                  ),
                ),
                ChatBar(onSearch: (text) => _sendMessage(text)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
