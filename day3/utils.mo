import Array "mo:base/Array";
import Int "mo:base/Int";
actor {

  public func second_maximum(n : [Int]) : async Int {
  var sorted_array : [Int] = [];
  sorted_array := Array.sort(n, Int.compare);

  return sorted_array[sorted_array.size() - 2];
  };

  public func remove_event(array : [Nat]) : async [Nat] {
    var odd_array : [Nat] = [];
    for (entry in array.vals()) {
      if (entry % 2 > 0) {
       odd_array := Array.append<Nat>(odd_array, [entry]); 
      };
    };
    return odd_array;
  };
}
