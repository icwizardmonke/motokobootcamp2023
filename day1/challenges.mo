actor {

  public query func multiply(n : Nat, m : Nat) : async Nat {
  let product : Nat = n*m;
    return product;
  };

  public query func volume(n : Nat) : async Nat {
  let volume : Nat = n*n*n;
    return volume;
  };


};
