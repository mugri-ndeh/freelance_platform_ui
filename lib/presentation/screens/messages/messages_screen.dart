import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:freelance_platform_ui/data/models/chat.dart';
import 'package:freelance_platform_ui/presentation/screens/widgets/top_app_bar.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({Key? key}) : super(key: key);

  final List<Chat> chats = [
    Chat(
        username: 'Alex Marchal',
        recentMessage: 'I have some questions about...',
        image: 'assets/images/avatar2.png'),
    Chat(
        username: 'Norma Wilson',
        recentMessage: 'http://www.warephase.com',
        image: 'assets/images/avatar1.png'),
    Chat(
        username: 'Morris Murphy',
        recentMessage: 'Hope it will work in the week...',
        image: 'assets/images/avatar3.png'),
    Chat(
        username: 'Kylie Lane',
        recentMessage: 'Thank you! It really shine with...',
        image: 'assets/images/avatar4.png'),
    Chat(
        username: 'Ted Steward',
        recentMessage: 'Yes I know',
        image: 'assets/images/avatar5.png'),
    Chat(
        username: 'Wade Mccoy',
        recentMessage: 'It will be online in 2 days',
        image: 'assets/images/avatar6.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopAppBar(title: 'Messages', subtitle: ''),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return ChatWidget(
                      color:
                          index % 2 == 0 ? Palette.scaffoldBg : Palette.white,
                      chat: chats[index],
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
    required this.color,
    required this.chat,
  }) : super(key: key);

  final Color color;
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: EdgeInsets.all(10.w),
        style: ListTileStyle.list,
        leading: CircleAvatar(
          backgroundImage: AssetImage(chat.image),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        title: Text(
          chat.username,
          style: Theme.of(context).textTheme.headline4,
        ),
        subtitle: Text(chat.recentMessage,
            style: Theme.of(context).textTheme.caption),
      ),
    );
  }
}
