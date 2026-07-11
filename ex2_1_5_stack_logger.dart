
mixin Loggable {
  void log(String msg) {
    DateTime now = DateTime.now();
    print("[$now] LOG: $msg");
  }
}

class Stack<T> with Loggable {
 
  final List<T> _storage = [];


  void push(T element) {
    _storage.add(element);
    log("Pushed element: $element | Current Stack: $_storage");
  }

  
  T? pop() {
    if (_storage.isEmpty) {
      log("Failed to pop: Stack is empty!");
      return null;
    }
    T lastElement = _storage.removeLast();
    log("Popped element: $lastElement | Current Stack: $_storage");
    return lastElement;
  }
}

void main() {
  print("Test123");

  Stack<String> namesStack = Stack<String>();

  namesStack.push("Biw");
  namesStack.push("Mew");
  namesStack.push("ChaLee");

  print("");

  namesStack.pop();
  namesStack.pop();
  namesStack.pop();
  namesStack.pop();
}