import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 1564162156145156;

  Debug.print(debug_show(currentValue));
}  
