// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import {AssembleInterface} from "./AssembleInterface.sol";
import {StorageInterface} from "./StorageInterface.sol";

/**
 * @title AssembleContract
 * @notice A contract that assembles SVG image.
 */
contract AssembleContract is AssembleInterface {
    /**
     * @dev Asset storage structure. Stores the contract address value and the corresponding object.
     */
    struct AssetStorage {
        address addr;
        StorageInterface stock;
    }

    AssetStorage[] private _assets;

    /**
     * @dev Register address values of `StorageContract`. Pay attention to the order when registering.
     */
    constructor(address[] memory assetStorageAddrList_) {
        for (uint256 i = 0; i < assetStorageAddrList_.length; i++) {
            addStorage(assetStorageAddrList_[i]);
        }
    }

    /**
     * @dev See {IAssembleContract-getImage}
     */
    function getImage(uint256[] memory attrs_)
        external
        view
        virtual
        override
        returns (string memory)
    {
        string memory imageString = "";

        imageString = string(
            abi.encodePacked(
                imageString,
                // "<svg version='1.1' xmlns='http://www.w3.org/2000/svg'>"
                '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'
                '<svg xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://web.resource.org/cc/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" width="1901" height="1018" viewBox="0 0 1901 1018" id="svg2" sodipodi:version="0.32" inkscape:version="0.44+devel" version="1.0" sodipodi:docbase="/home/d/ink/inkscape/share/examples" sodipodi:docname="gallardo.svgz" inkscape:export-filename="C:Documents and SettingsMichaelGMy DocumentsMy Picturesgallardo.png" inkscape:export-xdpi="90" inkscape:export-ydpi="90" inkscape:output_extension="org.inkscape.output.svgz.inkscape" sodipodi:modified="true">'
            )
        );

        for (uint256 i = 0; i < attrs_.length; i++) {
            imageString = string(
                abi.encodePacked(
                    imageString,
                    _assets[i].stock.getAsset(attrs_[i])
                )
            );
        }

        imageString = string(abi.encodePacked(imageString, "</svg>"));

        return imageString;
    }

    /**
     * See {IAssembleContract-getStorageCount}
     */
    function getStorageCount()
        external
        view
        virtual
        override
        returns (uint256)
    {
        return _assets.length;
    }

    /**
     * @param storageAddr_ Address of `StorageContract`.
     * @dev If later changes or extensions are unnecessary, write directly to `constructor` without implementing the function.
     */
    function addStorage(address storageAddr_) public virtual returns (uint256) {
        _assets.push(
            AssetStorage({
                addr: storageAddr_,
                stock: StorageInterface(storageAddr_)
            })
        );
        return _assets.length - 1; // index
    }
}
