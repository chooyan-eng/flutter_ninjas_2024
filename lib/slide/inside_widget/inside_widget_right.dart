import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/main.dart';

class InsideWidgetRight extends StatelessWidget {
  const InsideWidgetRight({super.key});

  @override
  Widget build(BuildContext context) {
    final highlightedCode = highlighter.highlight(_code);

    return Material(
      color: Colors.black87,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text.rich(
            highlightedCode,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

const _code = '''
@immutable
abstract class Widget extends DiagnosticableTree {
    const Widget({ this.key });

    final Key? key;

    @protected
    @factory
    Element createElement();

    @override
    String toStringShort() {
        final String type = objectRuntimeType(this, 'Widget');
        return key == null ? type : '\$type-\$key';
    }

    @override
    void debugFillProperties(DiagnosticPropertiesBuilder properties) {
        super.debugFillProperties(properties);
        properties.defaultDiagnosticsTreeStyle = DiagnosticsTreeStyle.dense;
    }

    @override
    @nonVirtual
    bool operator ==(Object other) => super == other;

    @override
    @nonVirtual
    int get hashCode => super.hashCode;

    static bool canUpdate(Widget oldWidget, Widget newWidget) {
        return oldWidget.runtimeType == newWidget.runtimeType
                && oldWidget.key == newWidget.key;
    }

    static int _debugConcreteSubtype(Widget widget) {
        return widget is StatefulWidget ? 1 :
                     widget is StatelessWidget ? 2 :
                     0;
    }
}
''';
