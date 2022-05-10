// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import {StorageInterface} from "../StorageInterface.sol";

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
        // 297671~301355 (end)
        _assetList[
            0
        ] = '<path style="fill:#5b6879;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;opacity:0.23043478" d="M 487.89301,308.72039 C 488.3326,300.80774 491.4635,295.31127 491.4635,295.31127 C 491.4635,295.31127 501.13452,293.11331 499.81575,297.50923 C 498.49697,301.90515 494.98024,306.74065 497.1782,306.74065 C 499.37615,306.74065 505.53044,305.42188 505.53044,305.42188 C 505.53044,305.42188 512.78213,307.83806 512.78213,310.03602 C 512.78213,312.23398 487.45342,308.72039 487.89301,308.72039 z " id="path4956" sodipodi:nodetypes="ccsscsc" /><path style="fill:#000000;fill-opacity:1;fill-rule:evenodd;stroke:#000000;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;filter:url(#filter3927);opacity:0.27391304" d="M 292.19051,471.87988 C 294.6394,467.05863 286.53648,469.6405 284.16343,463.44555 C 280.55878,454.03548 311.62618,435.19934 312.40474,435.78326 C 313.79552,436.82635 332.5711,458.20965 330.65877,456.47117 C 328.74645,454.73269 302.01065,468.12376 292.19051,471.87988 z " id="path3921" sodipodi:nodetypes="csssc" clip-path="url(#clipPath3953)" /><use x="0" y="0" xlink:href="#path4956" id="use4958" style="opacity:1;filter:url(#filter5032)" /><path style="fill:#080000;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;filter:url(#filter5304)" d="M 1501.9565,338.98683 C 1498.1548,339.12763 1478.721,343.40924 1476.0457,341.8604 C 1473.3704,340.31156 1471.2584,342.14201 1471.2584,342.14201 L 1465.063,340.17075 C 1465.063,340.17075 1447.6033,353.2655 1437.4655,357.20801 C 1427.3276,361.15051 1417.7347,368.3163 1417.7347,368.3163 C 1417.7347,368.3163 1450.1378,357.63042 1451.8275,356.9264 C 1453.5171,356.22238 1466.3302,350.87184 1467.8791,350.59023 C 1469.4279,350.30862 1483.5689,346.80325 1485.5401,346.66244 C 1487.5114,346.52164 1501.9565,339.26844 1501.9565,338.98683 z " id="path5282" sodipodi:nodetypes="csccscsssc" /><path sodipodi:nodetypes="csssc" id="path3942" d="M 292.19051,471.87988 C 294.6394,467.05863 286.53648,469.6405 284.16343,463.44555 C 280.55878,454.03548 311.62618,435.19934 312.40474,435.78326 C 313.79552,436.82635 322.74618,448.20609 320.83385,446.46761 C 318.92153,444.72913 302.01065,468.12376 292.19051,471.87988 z " style="fill:#000000;fill-opacity:1;fill-rule:evenodd;stroke:#000000;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;filter:url(#filter3927);opacity:0.33913043" clip-path="url(#clipPath3946)" /><path style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:#b2d1fd;stroke-width:3;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;filter:url(#filter3982)" d="M 323.69746,231.50388 L 405.14932,213.56953" id="path3960" sodipodi:nodetypes="cc" /><path id="path4075" d="M 294.07695,144.22375 C 265.79267,135.13235 244.57947,133.11205 231.44749,135.13235 C 218.3155,137.15265 208.21398,132.10185 198.11245,132.10185 C 188.01093,132.10185 163.76727,134.12215 163.76727,134.12215 C 163.76727,134.12215 179.92971,139.17295 195.082,146.24405 C 210.23428,153.31505 239.52871,169.47755 239.52871,169.47755 C 239.52871,169.47755 263.77237,155.33535 270.84344,152.30495 C 277.9145,149.27445 296.09725,143.21355 294.07695,144.22375 z " style="opacity:0.92173911;color:#000000;fill:url(#linearGradient4101);fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;marker:none;marker-start:none;marker-mid:none;marker-end:none;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;visibility:visible;display:inline;overflow:visible;filter:url(#filter4097)" /></g>';
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
}
