import 'package:chatgpt_course/widgets/memory_switch.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/drop_down.dart';
import '../widgets/text_widget.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: scaffoldBackgroundColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                      child: TextWidget(
                        label: "Chosen Model:",
                        fontSize: 16,
                      ),
                    ),
                    Flexible(flex: 2, child: ModelsDrowDownWidget()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                      flex: 3,
                      child: TextWidget(
                        label: "Memory (consumes lots of tokens):",
                        fontSize: 16,
                      ),
                    ),
                    Flexible(flex: 1, child: MemorySwitch()),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
