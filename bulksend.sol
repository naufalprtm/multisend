
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/*
  This contract shows how to send tokens and ETH to multiple addresses.
  Can easily handle 500 addresses in a single transaction via remix, perhaps more.
  Send ETH and tokens to the contract prior to executing sendOutFunds
*/

contract BulkSend is Ownable {
    address token = 0x7CC1656CA786587D2fC0aA9C6A1EFAC3d464Eb9e; // Token Contract Address (White)
    uint tokenAmount = 100 * 1e18; // 100 tokens
    uint ethAmount = 0; // 0 ETH

    function sendOutFunds(address[] memory _to) public onlyOwner {
        for (uint i = 0; i < _to.length; i++) {
            IERC20(token).transfer(_to[i], tokenAmount);
            payable(_to[i]).transfer(ethAmount);
        }
    }

    function withdraw() public onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    function reclaimToken(IERC20 _token) public onlyOwner {
        require(address(_token) != address(0));
        uint balance = _token.balanceOf(address(this));
        _token.transfer(msg.sender, balance);
    }

    receive() external payable {}
    fallback() external payable {}
}

