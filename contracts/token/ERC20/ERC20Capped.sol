pragma solidity ^0.5.2;

import "./ERC20Mintable.sol";

/**
 * @title Capped token
 * @dev Mintable token with a token cap.
 */
contract ERC20Capped is ERC20Mintable {
    int256 private _cap;

    constructor (int256 cap) public {
        require(cap > 0);
        _cap = cap;
    }

    /**
     * @return the cap for the token minting.
     */
    function cap() public view returns (int256) {
        return _cap;
    }

    function _mint(address account, int256 value) internal {
        require(totalSupply().add(value) <= _cap);
        super._mint(account, value);
    }
}
