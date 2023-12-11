// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Storage {

    // keccak256(key . slot)
    mapping(uint => uint) public aa; // slot 0
    mapping(address => uint) public bb; // slot 1

    // keccak256(slot) + index of the item
    uint[] public cc; // slot 2

    uint8 public a = 7; // 1byte
    uint16 public b = 10; // 2bytes
    address public c = 0xfaAaa39456C95a05B3eF2CBA3C0408EA53Cd6ef2; // 20bytes
    bool d = true; // 1byte
    uint64 public e = 15; // 8bytes
    // 32bytes, all values stored in slot 3
    // Calling this slot returns (hex) of values in reverse order (space indication): '0x 0f 01 faaaa39456c95a05b3ef2cba3c0408ea53cd6ef2 000a 07'


    uint256 public f = 200; //32bytes --> slot 4

    uint8 public g = 40; // 1byte --> slot 5

    uint256 public h = 789; //32bytes --> slot 6

    constructor() {
        cc.push(1);
        cc.push(10);
        cc.push(100);

        aa[2] = 4;
        aa[3] = 10;
        bb [0x72787509560814742c674664c83ed821b82eb985] = 100;
    }
}

// The key for aa[2] -> 0x0000000000000000000000000000000000000000000000000000000000000002 (for key value) + 0000000000000000000000000000000000000000000000000000000000000000 (for slot)
// 0x00000000000000000000000072787509560814742c674664c83ed821b82eb9850000000000000000000000000000000000000000000000000000000000000001
// Make sure to use a Keccak256 Hex dehash for the entire number above (128 characters)

