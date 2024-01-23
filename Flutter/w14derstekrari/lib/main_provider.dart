//Providere
//uygulama durumu yönetimini kolaylaştırmak, paylaşılan veriye erişimi düzenlemek ve widget ağacı üzerindeki widget'lara bu veriye erişim imkanı sağlamak için kullanılır.

/*import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//emitter
class Counter with ChangeNotifier {
  //ChangeNotifier bir uygulamanın durumunu (state) izleyen ve durumunda değişiklik olduğunda dinleyicilere haber veren bir yapı sağlar.

  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) {
      return Counter();
    },
    child: CounterExamplePage(),
  ));
}

class CounterExamplePage extends StatelessWidget {
  const CounterExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Provider - ${counter.count}"),
        ),
        body: Center(
          child: Text(
            "${counter.count}",
            style: TextStyle(fontSize: 36),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
*/