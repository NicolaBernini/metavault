// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./IManager.sol";

interface ICanonicalVault {
    function available(address _token) external view returns (uint256);
    function balance() external view returns (uint256);
    function deposit(address _token, uint256 _amount) external;
    function depositAll(address[] calldata _tokens, uint256[] calldata _amount) external;
    function earn(address _token) external;
    function getPricePerFullShare() external view returns (uint256);
    function getTokens() external view returns (address[] memory);
    function manager() external view returns (IManager);
    function withdraw(uint256 _amount, address _output) external;
    function withdrawAll(address _output) external;
    function withdrawFee(uint256 _amount) external view returns (uint256);
}
