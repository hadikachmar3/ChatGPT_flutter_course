import 'package:chatgpt_course/providers/models_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MemorySwitch extends StatefulWidget {
  const MemorySwitch({Key? key}) : super(key: key);

  @override
  State<MemorySwitch> createState() => _MemorySwitchState();
}

class _MemorySwitchState extends State<MemorySwitch> {
  @override
  Widget build(BuildContext context) {
    final modelsProvider = Provider.of<ModelsProvider>(context, listen: false);

    return Switch.adaptive(
      activeColor: Colors.amber,
      activeTrackColor: Colors.cyan,
      splashRadius: 50.0,
      value: modelsProvider.hasMemory,
      onChanged: (value) => setState(() => modelsProvider.setMemoryEnabled(value)),
    );
  }
}
