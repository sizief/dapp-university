//SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.7.0;

contract Runner {
  uint[31] private records;
  // mapping (uint => uint) private records;

  function store(uint date, uint duration) public{
    require(date<=30 && date >=0);

    records[date] = duration;
  }

  function all() public view returns (uint[31] memory) {
    return records;
  }

  function record(uint index) public view returns (uint) {
    return records[index];
  }
}
