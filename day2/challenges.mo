import Text "mo:base/Text";
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

  public func number_of_words(t : Text) : async Nat {
    let words = Text.split(t, #char ' ');
    var word_count : Nat = 0;

    for (word in words) {
      word_count += 1;
    };
 
    return word_count;
  };

  public func find_duplicates(a : [Nat]) : async [Nat] {
    var duplicates : [Nat] = [];
    var find_dup : ?Nat = null;
    for (entry in a.vals()) {

      // check for dupes
      let dupElements = Array.filter<Nat>(a, func x = x == entry);
      if (dupElements.size() > 1) {  

        // if not currently in new array, append entry
        find_dup := Array.find<Nat>(duplicates, func x = x == entry);
        if (find_dup == null) {
          duplicates := Array.append<Nat>(duplicates, [entry]);
        };
      };
    };

    return duplicates;
  };

  public func convert_to_binary(n : Nat) : async Text {

  return "TODO";
  };


}
