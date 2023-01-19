import Array "mo:base/Array";
import Nat "mo:base/Nat";
actor {

  public func second_maximum(n : [Nat]) : async Nat {
  var sorted_array : [Nat] = [];
  sorted_array := Array.sort(n, Nat.compare);

  return sorted_array[sorted_array.size() - 2];
  };

}
