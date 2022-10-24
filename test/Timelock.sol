// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Timelock.sol";

contract TimelockTest is Test {
    Timelock timeLock;
    function setUp() public {
        timeLock = new Timelock();
        vm.warp(10_000);
    }

    function testTimelockPassed() external view {
        timeLock.checkLock(9_999);
    }

    function testExactTimestamp() external view {
        timeLock.checkLock(10_000);
    }

    function testTimelockNotPassed() external {
        vm.expectRevert(bytes("Function not yet executable"));
        timeLock.checkLock(10_001);
    }
}
