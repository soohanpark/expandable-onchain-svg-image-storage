// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import {AssembleInterface} from "./AssembleInterface.sol";

/**
 * @title PropertyContract
 * @notice A contract that stores property values.
 */
contract PropertyContract {
    /**
     * @notice A variable that stores the object of `AssembleContract`.
     */
    AssembleInterface public assembleContract;

    // Storing property values corresponding to each number of storage. (imageId -> attr[])
    mapping(uint256 => uint256[]) private _attrs;

    constructor(address assembleContractAddr_) {
        setAssembleContract(assembleContractAddr_);
    }

    /**
     * @dev See {AssembleInterface-getImage}
     */
    function getImage(uint256 imageId_)
        public
        view
        virtual
        returns (string memory)
    {
        return assembleContract.getImage(_attrs[imageId_]);
    }

    /**
     * @param newAssembleContractAddr_ Address value of `AssembleContract` to be changed.
     * @dev If later changes or extensions are unnecessary, write directly to `constructor` without implementing the function.
     */
    function setAssembleContract(address newAssembleContractAddr_)
        public
        virtual
    {
        assembleContract = AssembleInterface(newAssembleContractAddr_);
    }

    /**
     * @param imageId_ The token ID for which you want to set the attribute value.
     * @dev Set the attribute value of the corresponding `imageId_` sequentially according to the number of asset storage.
     */
    function _setAttr(uint256 imageId_) public virtual {
        for (uint256 idx = 0; idx < assembleContract.getStorageCount(); idx++) {
            uint256 newValue = 0;

            /// @dev Implement the property value setting logic.

            _attrs[imageId_].push(newValue);
        }
    }

    // temp
    function getAttr(uint256 imageId_)
        public
        view
        virtual
        returns (uint256[] memory)
    {
        return _attrs[imageId_];
    }
}
