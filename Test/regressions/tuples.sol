pragma solidity ^0.4.24;

contract Tuple {
   function testTuple() public pure{
      // (uint a, uint b) = (1, 3); //cannot handle multiple declarations in tuples
      uint a;
      uint b;
      (a,  b) = (1, 3);
      assert (a == 1);
      assert (b == 3);
      (a, b) = returnTuple();
      assert (a == 4);
      assert (b == 40);
      (a, b) = returnTupleByName();
      assert (a == 5);
      assert (b == 55);
   }
   
   function returnTuple() private pure returns (uint, uint){
      return (4, 40); 
   }

   function returnTupleByName() private pure returns (uint a, uint b){
      a = 5;
      b = 55;
      return; 
   }
}
