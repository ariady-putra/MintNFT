// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {NFToken} from "../src/NFToken.sol";

contract NFTokenTest is Test {
    NFToken public nft;
    address private immutable _EOA = makeAddr("EOA");

    function setUp() public {
        nft = new NFToken("MyToken", "MTK");
    }

    function test_Mint() public {
        uint256 id = nft.safeMint(_EOA, "ipfs://QmbCwoJB7g9b86BfEahsjzyzzNx3WEu7Jc1opXWgeTXFgb");
        assertEq(id, 0);
    }

    function testFuzz_Mint(string memory metadataURI) public {
        uint256 id = nft.safeMint(_EOA, metadataURI);
        assertEq(nft.tokenURI(id), metadataURI);
    }
}
