pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BounToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BounToken(address _owner)  UpgradeableToken(_owner) {
    name = "BounToken";
    symbol = "BOUN";
    totalSupply = 10000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}