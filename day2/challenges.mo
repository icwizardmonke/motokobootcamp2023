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
}
