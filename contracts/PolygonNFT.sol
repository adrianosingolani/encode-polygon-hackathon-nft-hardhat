// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract PolygonNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("EncodePolygonHackathon", "ExP_Hack") {}

    function mint() public returns (uint256) {
        string memory tokenURI = "https://bafybeiboqc2a4pfymeyv4zn2lscu6qjvoze5xuprcqjyge2px6lr2e22je.ipfs.dweb.link/metadata.json";

        uint256 newItemId = _tokenIds.current();
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        _tokenIds.increment();

        return newItemId;
    }
}