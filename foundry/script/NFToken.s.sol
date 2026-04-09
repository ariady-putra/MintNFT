// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {NFToken} from "../src/NFToken.sol";

contract NFTokenScript is Script {
    NFToken public nft;

    function setUp() public {}

    function run() public {
        string memory nftCollectionName = vm.prompt("NFT Collection Name");
        string memory nftCollectionSymbol = vm.prompt("NFT Collection Symbol");

        vm.startBroadcast();

        nft = new NFToken(nftCollectionName, nftCollectionSymbol);

        vm.stopBroadcast();
    }
}
