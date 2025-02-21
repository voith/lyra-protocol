//SPDX-License-Identifier: ISC
// interface for FuturesMarketManager

pragma solidity 0.8.16;

interface IFuturesMarketManager {
  function markets(uint index, uint pageSize) external view returns (address[] memory);

  function numMarkets() external view returns (uint);

  function allMarkets() external view returns (address[] memory);

  function marketForKey(bytes32 marketKey) external view returns (address);

  function marketsForKeys(bytes32[] calldata marketKeys) external view returns (address[] memory);

  function totalDebt() external view returns (uint debt, bool isInvalid);

  function addMarkets(address[] calldata marketsToAdd) external;
}
