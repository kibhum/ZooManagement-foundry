// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ZooManagement} from "../src/ZooManagement.sol";

contract DeployZooManagement is Script {

   function run() external returns(ZooManagement){
    vm.startBroadcast();
    ZooManagement zooManagement = new ZooManagement();
    vm.stopBroadcast();
    return zooManagement;
   }
}

// 0x70997970c51812dc3a010c7d01b50e0d17dc79c8
// RPC URL - https://eth-sepolia.g.alchemy.com/v2/MxU9T66M6dW7KxgnVgqXlQqk7dS-WQME
// Deployment hash -0xf7b8bbf040c5a8b421ce27ac57a6e2abe6f9885656556a14a3652bc9896b211c