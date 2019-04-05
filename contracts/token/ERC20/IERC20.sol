pragma solidity ^0.5.2;

/**
 * @title ERC20 interface
 * @dev see https://eips.ethereum.org/EIPS/eip-20
 */
interface IERC20 {
    function transfer(address to, int256 value) external returns (bool);

    function approve(address spender, int256 value) external returns (bool);

    function transferFrom(address from, address to, int256 value) external returns (bool);

    function totalSupply() external view returns (int256);

    function balanceOf(address who) external view returns (int256);

    function allowance(address owner, address spender) external view returns (int256);

    event Transfer(address indexed from, address indexed to, int256 value);

    event Approval(address indexed owner, address indexed spender, int256 value);
}
