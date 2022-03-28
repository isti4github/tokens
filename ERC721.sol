
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT721 is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("IAT721", "IA721") {}

    function CreateNFT(address owner, string memory tokenURI) public returns (uint256)
    {
        _tokenIds.increment();

        uint256 newid = _tokenIds.current();
        _mint(owner, newid);
        _setTokenURI(newid, tokenURI);

        return newid;
    }
}


//https://www.youtube.com/watch?v=xxjzjHlFB-E&t=298s
