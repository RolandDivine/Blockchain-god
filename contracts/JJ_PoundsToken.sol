pragma solidity ^0.4.11;

import "zeppelin-solidity/contracts/token/PausableToken.sol";
import "zeppelin-solidity/contracts/token/MintableToken.sol";
import "./BurnableToken.sol";

contract JJ_PoundsToken is BurnableToken, PausableToken, MintableToken {

    string public constant symbol = "JJP";

    string public constant name = "JJ_Pounds";

    uint8 public constant decimals = 18;

    function burn(uint256 _value) whenNotPaused public {
        super.burn(_value);
    }
}
