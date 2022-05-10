// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import {StorageInterface} from "./StorageInterface.sol";

/**
 * @title StorageContract
 * @notice A contract that stores XML tags of SVG image.
 * @dev See {IStorageContract}
 */
contract StorageContract is StorageInterface {
    // Asset list
    mapping(uint256 => string) private _assetList;

    /**
     * @dev Write the values of assets (XML tags of SVG image) to be stored in this `StorageContract`.
     */
    constructor() {
        // Setting Assets such as  _assetList[1234] = "<circle ...";
    }

    /**
     * @dev See {IStorageContract-getAsset}
     */
    function getAsset(uint256 assetId_)
        external
        view
        override
        returns (string memory)
    {
        return _assetList[assetId_];
    }

    function setAsset(uint256 assetId_, string memory assetString_) external {
        _assetList[assetId_] = assetString_;
    }
}
