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
        // 44108~57974
        _assetList[
            0
        ] = '<linearGradient inkscape:collect="always" xlink:href="#linearGradient3197" id="linearGradient3203" x1="1369.8599" y1="336.50003" x2="1482.9082" y2="336.50003" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3172" id="linearGradient3237" gradientUnits="userSpaceOnUse" gradientTransform="translate(-30,-50)" x1="1529.6799" y1="370.94003" x2="1540.0798" y2="370.16003" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3254" id="linearGradient3263" x1="1410.1123" y1="317.54004" x2="1411.583" y2="326.91629" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3254" id="linearGradient3267" gradientUnits="userSpaceOnUse" x1="1442.1018" y1="321.95239" x2="1506.8162" y2="339.2341" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3254" id="linearGradient3271" gradientUnits="userSpaceOnUse" x1="1288.0374" y1="342.54333" x2="1289.5081" y2="358.90579" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3254" id="linearGradient3275" gradientUnits="userSpaceOnUse" x1="1410.1123" y1="327.46783" x2="1413.0538" y2="343.46259" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3254" id="linearGradient3283" gradientUnits="userSpaceOnUse" x1="1065.2139" y1="356.88348" x2="1065.9492" y2="373.79745" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3361" id="linearGradient3367" x1="1684.7999" y1="745.52002" x2="1694.1599" y2="771.52002" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3371" id="linearGradient3377" gradientUnits="userSpaceOnUse" x1="1684.7999" y1="745.52002" x2="1694.1599" y2="771.52002" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3276" id="linearGradient3380" gradientUnits="userSpaceOnUse" x1="1501.2399" y1="852.64001" x2="1506.4399" y2="875" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3314" id="linearGradient3389" gradientUnits="userSpaceOnUse" gradientTransform="translate(0,-80)" x1="1253.1063" y1="937.10699" x2="1841.4191" y2="776.79175" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3232" id="linearGradient3400" gradientUnits="userSpaceOnUse" gradientTransform="translate(0,-50)" x1="1738.3599" y1="851.60004" x2="1528.7999" y2="935.32001" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3208" id="linearGradient3404" gradientUnits="userSpaceOnUse" gradientTransform="translate(-30,0)" x1="1853.7999" y1="719.00006" x2="1847.5599" y2="727.32001" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3221" id="linearGradient3407" gradientUnits="userSpaceOnUse" gradientTransform="translate(-30,0)" x1="1813.7599" y1="765.79999" x2="1807.5199" y2="772.56" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3293" id="linearGradient3411" gradientUnits="userSpaceOnUse" x1="1392.5599" y1="917.12006" x2="1314.5599" y2="926.47998" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3254" id="linearGradient3415" x1="1640.6" y1="754.88" x2="1645.7999" y2="789.72003" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3419" id="linearGradient3425" x1="1492.1084" y1="880.48187" x2="1510.4932" y2="874.59875" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3475" id="linearGradient3481" x1="1499.6799" y1="290.52005" x2="1138.7999" y2="91.360046" gradientUnits="userSpaceOnUse" gradientTransform="translate(0,10)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3483" id="linearGradient3489" x1="1127.8799" y1="219.26003" x2="1477.3199" y2="219.26003" gradientUnits="userSpaceOnUse" gradientTransform="translate(0,-20)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3495" id="linearGradient3501" x1="1499.6799" y1="300.40002" x2="1490.3199" y2="293.90002" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3452" id="linearGradient3504" gradientUnits="userSpaceOnUse" x1="1410.7599" y1="202.90004" x2="1402.96" y2="209.14005" gradientTransform="translate(-40,0)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3240" id="linearGradient3507" gradientUnits="userSpaceOnUse" x1="1394.86" y1="194.71004" x2="1409.1599" y2="214.47005" gradientTransform="translate(-40,0)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3512" id="linearGradient3510" gradientUnits="userSpaceOnUse" x1="1391.3207" y1="192.83658" x2="1397.4015" y2="207.39658" gradientTransform="translate(-40,0)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3452" id="linearGradient3522" gradientUnits="userSpaceOnUse" gradientTransform="translate(-40,0)" x1="1370.4598" y1="179.65312" x2="1381.8999" y2="194.58005" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3556" id="linearGradient3618" gradientUnits="userSpaceOnUse" gradientTransform="translate(-30,0)" x1="1775.2339" y1="510.5802" x2="1781.8524" y2="517.19873" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3535" id="linearGradient3620" gradientUnits="userSpaceOnUse" gradientTransform="translate(-20,0)" x1="1736.2582" y1="481.16455" x2="1757.0873" y2="498.28571" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3582" id="linearGradient3622" gradientUnits="userSpaceOnUse" x1="1593.2843" y1="384.09293" x2="1627.7415" y2="384.09293" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3592" id="linearGradient3624" gradientUnits="userSpaceOnUse" x1="1615.6399" y1="384.64005" x2="1607.84" y2="378.40002" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3602" id="linearGradient3626" gradientUnits="userSpaceOnUse" gradientTransform="translate(-30,0)" x1="1626.0399" y1="366.96002" x2="1639.3199" y2="356.30002" /><radialGradient inkscape:collect="always" xlink:href="#linearGradient3651" id="radialGradient3670" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1,-2.449946e-5,3.26177e-5,1.331364,-9.189301e-3,-92.83615)" cx="337.68991" cy="281.73077" fx="337.69009" fy="281.73068" r="26.197193" /><radialGradient inkscape:collect="always" xlink:href="#linearGradient3660" id="radialGradient3672" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1.184925,0.291241,-0.244616,0.995229,5.770674,-93.65263)" cx="337.68951" cy="278.87592" fx="337.68961" fy="278.87601" r="30.057995" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3617" x1="782.83337" y1="799.42517" x2="864.77716" y2="577.03143" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3623" gradientUnits="userSpaceOnUse" x1="911.05261" y1="548.50476" x2="771.66034" y2="777.76068" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3627" gradientUnits="userSpaceOnUse" x1="911.05261" y1="548.50476" x2="771.66034" y2="777.76068" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3631" gradientUnits="userSpaceOnUse" x1="911.05261" y1="548.50476" x2="771.66034" y2="777.76068" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3635" gradientUnits="userSpaceOnUse" x1="911.05261" y1="548.50476" x2="771.66034" y2="777.76068" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3640" gradientUnits="userSpaceOnUse" x1="911.05261" y1="548.50476" x2="771.66034" y2="777.76068" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3852" gradientUnits="userSpaceOnUse" x1="751.09253" y1="735" x2="732.11664" y2="745.52069" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3854" gradientUnits="userSpaceOnUse" x1="743.77771" y1="577.80316" x2="760.22034" y2="597.8407" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3856" gradientUnits="userSpaceOnUse" x1="867.10388" y1="601.625" x2="850.70032" y2="613.44067" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3858" gradientUnits="userSpaceOnUse" x1="912.13434" y1="738.04584" x2="892.15674" y2="785.84998" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3860" gradientUnits="userSpaceOnUse" x1="823.10938" y1="833.45209" x2="823.10938" y2="858.61041" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3422" id="linearGradient3711" x1="799.76501" y1="597.83502" x2="814.95313" y2="814.15497" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3611" id="linearGradient3769" gradientUnits="userSpaceOnUse" x1="911.05261" y1="548.50476" x2="793.18713" y2="793.88776" /><radialGradient inkscape:collect="always" xlink:href="#linearGradient3771" id="radialGradient3777" cx="819.57001" cy="681.40497" fx="819.57001" fy="681.40497" r="89.050735" gradientTransform="matrix(1.76434,-2.35869e-2,0.426816,1.801459,-928.0471,-507.7961)" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3422" id="linearGradient3823" gradientUnits="userSpaceOnUse" x1="837.68555" y1="796.52527" x2="780.84125" y2="572.90417" /><radialGradient inkscape:collect="always" xlink:href="#linearGradient3463" id="radialGradient3825" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1,0,0,1.402597,0,-270.1008)" cx="828.16028" cy="706.72321" fx="828.16028" fy="706.72321" r="84.93766" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3146" id="linearGradient3827" gradientUnits="userSpaceOnUse" x1="823.68597" y1="611.11115" x2="806.85175" y2="711.99713" /><clipPath clipPathUnits="userSpaceOnUse" id="clipPath3833"><path style="color:black;fill:white;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:7.03952456;stroke-linecap:butt;stroke-linejoin:round;marker:none;marker-start:none;marker-mid:none;marker-end:none;stroke-miterlimit:4;stroke-dashoffset:0;stroke-opacity:1;visibility:visible;display:inline;overflow:visible" d="M 959.1425,564.82625 C 958.9956,564.82625 958.8509,564.85409 958.705,564.8575 C 961.2854,564.93481 963.8642,565.51476 966.3925,566.57625 C 954.3198,572.32964 947.5839,591.64301 950.8613,614.57625 C 954.1381,637.50677 966.3961,656.82032 980.1113,662.57625 C 977.8891,663.63465 975.4796,664.21731 972.9238,664.295 C 973.0707,664.29841 973.2143,664.32625 973.3613,664.32625 C 990.1318,664.32625 1000.5676,642.0416 996.6425,614.57625 C 992.7175,587.11092 975.913,564.82627 959.1425,564.82625 z M 927.6738,573.51375 C 927.3371,573.69114 927.0075,573.89192 926.6738,574.07625 C 926.7234,578.55327 926.3543,582.80673 925.6113,586.7325 C 919.4843,593.25496 914.1454,601.22202 909.7363,610.38875 C 909.9551,610.48576 910.173,610.57965 910.3925,610.67 C 908.1368,611.726 905.6807,612.32482 903.08,612.38875 C 903.2563,612.39364 903.4348,612.38875 903.6113,612.38875 C 918.2837,612.38875 928.0972,595.68484 927.6738,573.51375 z M 907.1113,624.38875 C 906.9645,624.38875 906.8195,624.41667 906.6738,624.42 C 909.2562,624.49606 911.8301,625.06603 914.3613,626.1075 C 902.3011,631.72743 895.5873,650.58123 898.8613,672.9825 C 902.1345,695.37929 914.3493,714.23337 928.0488,719.8575 C 925.828,720.89233 923.4162,721.46813 920.8613,721.545 C 921.008,721.54833 921.152,721.57625 921.2988,721.57625 C 938.0517,721.57625 948.4696,699.81075 944.5488,672.9825 C 940.6278,646.15426 923.8643,624.38876 907.1113,624.38875 z M 1026.2363,642.76375 C 1026.0897,642.76375 1025.9444,642.79173 1025.7988,642.795 C 1028.3705,642.87004 1030.9296,643.43172 1033.455,644.45125 C 1020.76,650.25663 1013.6554,670.40681 1017.08,694.3575 C 1020.5058,718.3161 1033.3753,738.46594 1047.7363,744.26375 C 1045.4992,745.28674 1043.1036,745.84538 1040.5488,745.92 C 1040.6953,745.92327 1040.8397,745.95125 1040.9863,745.95125 C 1058.3863,745.95125 1069.1835,722.83766 1065.1113,694.3575 C 1061.0389,665.87733 1043.6362,642.76378 1026.2363,642.76375 z M 937.2363,739.1075 C 937.0865,739.1075 936.9475,739.1352 936.7988,739.13875 C 939.3775,739.21619 941.9607,739.7971 944.4863,740.8575 C 932.4421,746.61998 925.7459,765.90143 929.0175,788.795 C 932.291,811.70197 944.5042,831.01373 958.205,836.76375 C 955.9853,837.82106 953.5716,838.40468 951.0175,838.4825 C 951.1643,838.48591 951.3082,838.51375 951.455,838.51375 C 968.208,838.51375 978.6259,816.23209 974.705,788.795 C 970.7841,761.35788 953.9893,739.1075 937.2363,739.1075 z M 1010.0488,755.295 C 1009.9022,755.295 1009.7569,755.32298 1009.6113,755.32625 C 1012.183,755.40129 1014.7421,755.96297 1017.2675,756.9825 C 1004.5739,762.78928 997.4681,782.93954 1000.8925,806.88875 C 1004.3184,830.84781 1017.2187,850.99762 1031.58,856.795 C 1029.3699,857.80582 1026.9794,858.36539 1024.455,858.45125 C 1024.5702,858.45327 1024.6835,858.4825 1024.7988,858.4825 C 1042.1988,858.4825 1053.0273,835.36894 1048.955,806.88875 C 1044.8826,778.40858 1027.4487,755.295 1010.0488,755.295 z M 977.83,841.7325 C 977.6941,841.7325 977.5588,841.76088 977.4238,841.76375 C 979.983,841.84501 982.5447,842.42434 985.0488,843.45125 C 981.1116,845.30446 977.7441,848.58583 975.1113,852.92 C 984.5554,858.6399 994.3582,862.32873 1004.2363,863.63875 C 1001.955,863.95668 999.6342,864.13326 997.2675,864.17 C 1000.3379,864.17 1003.3416,863.95003 1006.2675,863.4825 C 998.9144,850.38461 988.3818,841.73252 977.83,841.7325 z " id="path3535" sodipodi:nodetypes="cccsccsscccccccsccccsccssccccsccssccccsccssccccsccssccccccccc" /></clipPath>';
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
