import Array "mo:base/Array";

actor {

  public func average_array(array : [Int]) : async Int {
    var sum : Int = 0;
    var index : Int = 0;
    for (element in array.vals()) {
      sum += element;
      index += 1;
    };

    let average : Int = (sum/index);
    return (average);
  };

  public func count_character(t : Text, c : Char) : async Nat {
    var count : Nat = 0;
    for (char in t.chars() ) {
      if (char == c) {
        count += 1;
      }
    };
  return (count)
  };

  public func factorial(n : Nat) : async Nat {
    var index : Nat = n - 1;
    var result : Nat = 1;
    while (index > 0) {
      result += index*result;
      index -= 1;
    };
    return result;
  };

}
