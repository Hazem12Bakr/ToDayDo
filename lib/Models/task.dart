class Task{
  final String name;
  bool isDone;
  Task({required this.name,this.isDone = false});

// this method to reverse the value of the variable 
// if it false it will be true and vice versa
  void donechange(){
    isDone =! isDone;
  }

}