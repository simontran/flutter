import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardBody extends StatelessWidget {
  CardBody({
    super.key,
    required this.item,
    required this.index,
    required this.deleteTask,
  });

  dynamic item;
  dynamic index;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: ((index % 2 == 0)
              ? const Color(0xffDFDFDF)
              : const Color(0xffF9C800)),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 20, color: Color(0xff4B4B4B)),
            ),
            InkWell(
              onTap: () async {
                if (await confirm(context)) {
                  deleteTask(item.id);
                }
                return;
              },
              child: const Icon(
                Icons.delete_outline,
                color: Color(0xff4B4B4B),
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
