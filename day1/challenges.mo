actor {
  var counter : Nat = 0;

  public query func multiply(n : Nat, m : Nat) : async Nat {
  let product : Nat = n*m;
    return product;
  };

  public query func volume(n : Nat) : async Nat {
  let volume : Nat = n*n*n;
    return volume;
  };

  public query func hours_to_minutes(n : Nat) : async Nat {
  let minutes : Nat = n*60;
    return minutes ;
  };

  public query func set_counter(n : Nat) : async () {
    counter := n;
    return;
  };

  public query func get_counter() : async Nat {
    return counter;
  };

  public query func test_divide(n: Nat, m : Nat) : async Bool {
    return (n % m == 0);
  };

  public query func is_even(n: Nat) : async Bool {
    return (n % 2 == 0);
  };



};
