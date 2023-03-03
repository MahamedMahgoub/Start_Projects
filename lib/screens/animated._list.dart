import 'package:flutter/material.dart';

class Animated_List extends StatefulWidget {
  const Animated_List({Key? key}) : super(key: key);

  @override
  State<Animated_List> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated_List> {
  final items = [];
  final GlobalKey<AnimatedListState> keyList = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Animated List'),
        elevation: 0,
      ),
      body: AnimatedList(
          key: keyList,
          initialItemCount: 0,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index, animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: Card(
                key: UniqueKey(),
                margin: const EdgeInsets.all(8),
                elevation: 10,
                color: Colors.blue,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(7),
                  title: Text(
                    items[index],
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () => removeItem(index),
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: const Icon(Icons.add),
      ),
    );
  }

  void addItem() {
    items.insert(0, 'item ${items.length + 1}');
    keyList.currentState!
        .insertItem(0, duration: const Duration(milliseconds: 500));
  }

  void removeItem(int index) {
    keyList.currentState!.removeItem(
      index,
      (context, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(8),
            elevation: 10,
            color: Colors.redAccent,
            child: ListTile(
              contentPadding: EdgeInsets.all(7),
              title: Text(
                'Removing',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 500),
    );
    items.removeAt(index);
  }
}
