// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./EcoToken.sol";
import "./EcoBadge.sol";
import "./AggregatorV3Interface.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract EcoStaking is ReentrancyGuard {
    EcoToken public token;
    EcoBadge public badge;
    AggregatorV3Interface internal priceFeed;

    mapping(address => uint256) public stakingBalance;

    constructor(address _token, address _badge, address _priceFeed) {
        token = EcoToken(_token);
        badge = EcoBadge(_badge);
        priceFeed = AggregatorV3Interface(_priceFeed);
    }

    function stake(uint256 _amount) external nonReentrant {
        require(_amount > 0, "Quantidade deve ser maior que zero");
        token.transferFrom(msg.sender, address(this), _amount);
        stakingBalance[msg.sender] += _amount;
        
        if(stakingBalance[msg.sender] >= 100 * 10**18) {
            badge.safeMint(msg.sender);
        }
    }

    function getLatestPrice() public view returns (int) {
        (,int price,,,) = priceFeed.latestRoundData();
        return price;
    }
}