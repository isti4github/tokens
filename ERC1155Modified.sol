// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract GameItems is ERC1155, Ownable {
    
    uint256 public constant CHARIZARD = 0;
    uint256 public constant IVYSAUR = 1;
    uint256 public constant VENUSAUR = 2;
    uint256 public constant CHARMANDER = 3;
    
    mapping (uint256 => string) private _uris;

    constructor() public ERC1155("https://bafybeihul6zsmbzyrgmjth3ynkmchepyvyhcwecn2yxc57ppqgpvr35zsq.ipfs.dweb.link/{id}.json") {
        _mint(msg.sender, CHARIZARD, 100, "");
        _mint(msg.sender, IVYSAUR, 100, "");
        _mint(msg.sender, VENUSAUR, 100, "");
        _mint(msg.sender, CHARMANDER, 100, "");
    }
    
    //when you upload your files togather
    function uri(uint256 tokenId) override public view returns (string memory) {
        return(
            
            string(abi.encodePacked("https://bafybeihul6zsmbzyrgmjth3ynkmchepyvyhcwecn2yxc57ppqgpvr35zsq.ipfs.dweb.link/", Strings.toString(tokenId),".json"))
            
            );
    }


    /*
      function uri(uint256 tokenId) override public view returns (string memory) {
        return(_uris[tokenId]);
    }
 
    
    //if you want to set uri for each token then you ma use following function but the you have to write the uri functuion as  above
    function setTokenUri(uint256 tokenId, string memory uri) public onlyOwner {
        require(bytes(_uris[tokenId]).length == 0, "Cannot set uri twice"); 
        _uris[tokenId] = uri; 
    }
   */
}


/*
URI details info video
For decentralized uri you can upload your file to follow site using following video:
https://www.youtube.com/watch?v=19SSvs32m8I

First Upload json to the following site.
https://car.ipfs.io/
Then Download Zip and upload to the following site, you will get a link for your json file.
Upload Zip to the following site.
https://nft.storage/files/
If you click on foles you will get the link of json that is your json file link.
For the Images You will do the same. And get the link to put inside your Json.
After running your smart contract. Just upload your contract to Mobile wallet NFT section by Token ID
Imahe upload hints to following site
https://stackoverflow.com/questions/69239521/unable-to-display-pokemon-image-from-pokeapi-co
Following site have images you can just use the link and image name, but you can also use your pinata for image upload
https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png

*/
//https://www.youtube.com/watch?v=19SSvs32m8I
//https://www.youtube.com/watch?v=J4p1sdo3Rz4
//https://www.youtube.com/watch?v=19SSvs32m8I\
//After deployment if you click on GOLD/Silver it will just return ID of that token
//We can check balance using balenceOf
// we have to overwrite the uri function, because the Opensea does not support the default format of uri



