import 'package:flutter/material.dart';

class CosmeItem extends StatelessWidget {
  const CosmeItem({
    super.key,
    required this.url,
    required this.title,
    required this.maker,
    required this.subTitle,
    required this.lastUsed,
    required this.bestBy,
  });

  final String url;
  final String title;
  final String maker;
  final String subTitle;
  final DateTime lastUsed;
  final DateTime bestBy;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const Scaffold(
              body: Text("Details"),
            ),
          ),
        );
      },
      leading: SizedBox(
        height: 80,
        width: 80,
        child: Image.network(
          url,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            maker,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            subTitle,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            "最終使用日: ${lastUsed.toString()}",
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            "使用期限: ${bestBy.toString()}",
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
      trailing: const Icon(
        Icons.chevron_right_rounded,
        color: Colors.grey,
      ),
    );
  }
}
