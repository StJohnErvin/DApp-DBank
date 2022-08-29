import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Floar "mo:base/Float";

actor DBank {
 stable var currentValue: Float = 300;

 let startTime = Time.now();
 Debug.print(debug_show(startTime));

 let id = 1564162156145156;

 public func topUp(amount: Float){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Float){
    let tempValue: Float = currentValue - amount;
    if (tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    }
    else {
      Debug.print("Amount not available")
    }
  };

  public query func checkBalance(): async Float{
    return currentValue;
  };
  // topUp();

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
 };
}  
