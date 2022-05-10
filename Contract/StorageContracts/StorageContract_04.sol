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
        // 57974~81289
        _assetList[
            0
        ] = '<linearGradient inkscape:collect="always" xlink:href="#linearGradient2954" id="linearGradient3912" gradientUnits="userSpaceOnUse" x1="814.44556" y1="742.2583" x2="814.44556" y2="699.93915" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3771" id="linearGradient3917" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1,0,-0.357143,0.821429,258.463,86.94653)" x1="815.54865" y1="721.63739" x2="812.54578" y2="701.04614" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient2957" id="linearGradient3921" gradientUnits="userSpaceOnUse" gradientTransform="matrix(0.945605,-0.217581,0.40526,0.47818,-220.401,581.0172)" x1="815.54865" y1="721.63739" x2="810.40088" y2="701.04645" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3771" id="linearGradient3925" gradientUnits="userSpaceOnUse" x1="815.54865" y1="721.63739" x2="810.40088" y2="701.04645" /><clipPath clipPathUnits="userSpaceOnUse" id="clipPath3932"><path transform="matrix(0.31032,0,5.178125e-2,0.352536,530.9291,471.175)" d="M 898.6478 670.89545 A 84.93766 119.13335 0 1 1728.77248,670.89545 A 84.93766 119.13335 0 1 1898.6478 670.89545 z" sodipodi:ry="119.13335" sodipodi:rx="84.93766" sodipodi:cy="670.89545" sodipodi:cx="813.71014" id="path3895" style="opacity:1;color:black;fill:#fc0000;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:8.22614479;stroke-linecap:butt;stroke-linejoin:round;marker:none;marker-start:none;marker-mid:none;marker-end:none;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;visibility:visible;display:inline;overflow:visible" sodipodi:type="arc" /></clipPath><linearGradient inkscape:collect="always" xlink:href="#linearGradient3937" id="linearGradient3943" x1="809.74945" y1="715.75433" x2="822.82684" y2="711.34198" gradientUnits="userSpaceOnUse" gradientTransform="translate(0.367696,0.367696)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3937" id="linearGradient3947" gradientUnits="userSpaceOnUse" gradientTransform="translate(-11.76626,14.70782)" x1="812.69104" y1="719.43127" x2="822.82684" y2="711.34198" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2830" gradientUnits="userSpaceOnUse" x1="909.77393" y1="748.375" x2="909.77393" y2="799.96875" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3463" id="linearGradient2833" gradientUnits="userSpaceOnUse" x1="812.26624" y1="665.6875" x2="820.95752" y2="739.92749" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2851" gradientUnits="userSpaceOnUse" x1="812.26831" y1="842.35431" x2="814.00519" y2="851.5625" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2855" gradientUnits="userSpaceOnUse" x1="733.65625" y1="696.75964" x2="744.9621" y2="768.34375" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2858" gradientUnits="userSpaceOnUse" x1="847.7276" y1="557.90625" x2="894.53625" y2="619.54285" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2861" gradientUnits="userSpaceOnUse" x1="752.10992" y1="576.96875" x2="752.10992" y2="635.84375" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2864" gradientUnits="userSpaceOnUse" x1="761.6665" y1="621.93903" x2="759.14404" y2="753.24847" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2867" gradientUnits="userSpaceOnUse" x1="773.9549" y1="732.1875" x2="782.68182" y2="850.28198" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2870" gradientUnits="userSpaceOnUse" x1="858.75" y1="748.375" x2="858.01459" y2="865.15143" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2873" gradientUnits="userSpaceOnUse" x1="879.375" y1="642.57867" x2="879.375" y2="744.06262" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2876" gradientUnits="userSpaceOnUse" x1="813.66602" y1="557.90625" x2="813.41272" y2="657.40625" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3599" id="linearGradient2891" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1.220779,0,0.203704,1.382716,-313.0049,-219.993)" x1="819.11285" y1="555.48511" x2="793.83105" y2="790.02881" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2905" gradientUnits="userSpaceOnUse" x1="909.77393" y1="748.375" x2="909.77393" y2="799.96875" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3463" id="linearGradient2908" gradientUnits="userSpaceOnUse" x1="812.26624" y1="665.6875" x2="820.95752" y2="739.92749" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2926" gradientUnits="userSpaceOnUse" x1="812.26831" y1="842.35431" x2="814.00519" y2="851.5625" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2929" gradientUnits="userSpaceOnUse" x1="733.65625" y1="696.75964" x2="744.9621" y2="768.34375" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2932" gradientUnits="userSpaceOnUse" x1="847.7276" y1="557.90625" x2="879.375" y2="601.625" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2935" gradientUnits="userSpaceOnUse" x1="752.10992" y1="576.96875" x2="752.10992" y2="635.84375" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2939" gradientUnits="userSpaceOnUse" x1="761.6665" y1="621.93903" x2="759.14404" y2="714.65625" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2942" gradientUnits="userSpaceOnUse" x1="773.9549" y1="732.1875" x2="782.68182" y2="850.28198" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2945" gradientUnits="userSpaceOnUse" x1="858.75" y1="748.375" x2="858.01459" y2="865.15143" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2948" gradientUnits="userSpaceOnUse" x1="879.375" y1="642.57867" x2="879.375" y2="744.06262" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient4018" id="linearGradient2951" gradientUnits="userSpaceOnUse" x1="813.66602" y1="557.90625" x2="813.41272" y2="657.40625" gradientTransform="matrix(0.490589,0,-1.152337e-2,0.695881,-273.6179,-92.35558)" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3599" id="linearGradient2966" gradientUnits="userSpaceOnUse" gradientTransform="matrix(0.598901,0,8.400139e-2,0.962206,-424.6396,-245.4445)" x1="819.11285" y1="555.48511" x2="793.83105" y2="790.02881" /><radialGradient inkscape:collect="always" xlink:href="#linearGradient3747" id="radialGradient3753" cx="900.87634" cy="429.33759" fx="900.87634" fy="429.33759" r="48.691078" gradientTransform="matrix(1,0,0,0.848475,0,65.71196)" gradientUnits="userSpaceOnUse" /><filter inkscape:collect="always" id="filter3933"><feGaussianBlur inkscape:collect="always" stdDeviation="22.417147" id="feGaussianBlur3935" /></filter><radialGradient inkscape:collect="always" xlink:href="#linearGradient3347" id="radialGradient3380" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1.336911,-6.393033e-3,7.168639e-3,1.499105,-315.1945,-350.4958)" cx="889.67188" cy="707.07434" fx="889.67188" fy="707.07434" r="145.07635" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3337" id="linearGradient3392" gradientUnits="userSpaceOnUse" gradientTransform="translate(-240,0)" x1="1088.0862" y1="752.67523" x2="1070.9225" y2="516.59521" /><radialGradient inkscape:collect="always" xlink:href="#linearGradient3347" id="radialGradient3395" gradientUnits="userSpaceOnUse" gradientTransform="matrix(0.855854,-4.721012e-3,-1.795074e-2,1.107032,-573.9138,-379.4444)" cx="889.67188" cy="707.07434" fx="889.67188" fy="707.07434" r="145.07635" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3337" id="linearGradient3408" gradientUnits="userSpaceOnUse" gradientTransform="matrix(0.640101,0,-1.503523e-2,0.738462,-531.0515,-120.6166)" x1="1088.0862" y1="752.67523" x2="1070.9225" y2="516.59521" /><filter inkscape:collect="always" id="filter4382"><feGaussianBlur inkscape:collect="always" stdDeviation="5.8935163" id="feGaussianBlur4384" /></filter><radialGradient inkscape:collect="always" xlink:href="#linearGradient2980" id="radialGradient2993" gradientUnits="userSpaceOnUse" gradientTransform="matrix(0.945085,0.545627,-0.270591,0.468689,142.3973,-159.4092)" cx="628.70422" cy="407.33719" fx="628.48901" fy="398.23914" r="38.580692" /><filter inkscape:collect="always" x="-0.23653734" width="1.4730747" y="-0.35096824" height="1.7019365" id="filter4877"><feGaussianBlur inkscape:collect="always" stdDeviation="7.6348052" id="feGaussianBlur4879" /></filter><filter inkscape:collect="always" x="-0.17345947" width="1.3469189" y="-0.27603572" height="1.5520714" id="filter4958"><feGaussianBlur inkscape:collect="always" stdDeviation="2.6896932" id="feGaussianBlur4960" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient4970" id="linearGradient4976" x1="627.0163" y1="374.24841" x2="582.94659" y2="386.46796" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient5002" id="linearGradient5008" x1="1105.0763" y1="556.67267" x2="1116.7949" y2="540.26642" gradientUnits="userSpaceOnUse" /><radialGradient inkscape:collect="always" xlink:href="#linearGradient3209" id="radialGradient5012" cx="1217.5303" cy="1610.0789" fx="1217.5303" fy="1610.0789" r="35.931072" gradientTransform="matrix(1.618346,-0.534976,1.718181,1.15679,-3572.63,429.4414)" gradientUnits="userSpaceOnUse" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient5016" id="linearGradient5022" x1="1070.3107" y1="525.81335" x2="1072.6544" y2="544.75861" gradientUnits="userSpaceOnUse" /><filter inkscape:collect="always" x="-0.026605937" width="1.0532119" y="-0.11884383" height="1.2376877" id="filter5154"><feGaussianBlur inkscape:collect="always" stdDeviation="1.9936009" id="feGaussianBlur5156" /></filter><filter inkscape:collect="always" x="-0.058378786" width="1.1167576" y="-0.14122266" height="1.2824453" id="filter5194"><feGaussianBlur inkscape:collect="always" stdDeviation="2.3537535" id="feGaussianBlur5196" /></filter><filter inkscape:collect="always" id="filter5254"><feGaussianBlur inkscape:collect="always" stdDeviation="12.362587" id="feGaussianBlur5256" /></filter><filter inkscape:collect="always" x="-0.33162393" width="1.6632479" y="-0.50389611" height="2.0077922" id="filter5329"><feGaussianBlur inkscape:collect="always" stdDeviation="15.236484" id="feGaussianBlur5331" /></filter><clipPath clipPathUnits="userSpaceOnUse" id="clipPath5339"><use x="0" y="0" xlink:href="#path5198" id="use5337" width="1" height="1" transform="translate(0,-540)" /></clipPath><filter inkscape:collect="always" x="-0.059271395" width="1.1185428" y="-0.2476752" height="1.4953504" id="filter3952"><feGaussianBlur inkscape:collect="always" stdDeviation="6.568345" id="feGaussianBlur3954" /></filter><filter inkscape:collect="always" x="-0.067821837" width="1.1356437" y="-0.13965996" height="1.2793199" id="filter4914"><feGaussianBlur inkscape:collect="always" stdDeviation="7.9175213" id="feGaussianBlur4916" /></filter><filter inkscape:collect="always" id="filter3871"><feGaussianBlur inkscape:collect="always" stdDeviation="6.9266087" id="feGaussianBlur3873" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient3877" id="linearGradient3875" gradientUnits="userSpaceOnUse" x1="1843.3077" y1="1139.8347" x2="1798.4442" y2="1145.3904" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3877" id="linearGradient2949" gradientUnits="userSpaceOnUse" x1="1332.6165" y1="1341.6736" x2="1329.6609" y2="1290.606" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3838" id="linearGradient3844" x1="1306.5068" y1="1474.1163" x2="1334.7703" y2="1533.567" gradientUnits="userSpaceOnUse" /><filter inkscape:collect="always" x="-0.284216" width="1.568432" y="-0.23374538" height="1.4674908" id="filter3912"><feGaussianBlur inkscape:collect="always" stdDeviation="12.342325" id="feGaussianBlur3914" /></filter><clipPath clipPathUnits="userSpaceOnUse" id="clipPath3918"><use x="0" y="0" xlink:href="#path3144" id="use3916" width="1" height="1" /></clipPath><filter inkscape:collect="always" id="filter4167"><feGaussianBlur inkscape:collect="always" stdDeviation="1.164557" id="feGaussianBlur4169" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient2957" id="linearGradient4211" gradientUnits="userSpaceOnUse" x1="1059.4688" y1="542.11444" x2="1044.2227" y2="593.19513" /><filter inkscape:collect="always" id="filter4217"><feGaussianBlur inkscape:collect="always" stdDeviation="10.108017" id="feGaussianBlur4219" /></filter><filter inkscape:collect="always" x="-0.21888952" width="1.437779" y="-0.19940901" height="1.398818" id="filter4259"><feGaussianBlur inkscape:collect="always" stdDeviation="12.615137" id="feGaussianBlur4261" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient4263" id="linearGradient4269" x1="1182.5635" y1="429.21915" x2="1247.7144" y2="430.47183" gradientUnits="userSpaceOnUse" /><filter inkscape:collect="always" x="-0.050900629" width="1.1018013" y="-0.10984331" height="1.2196866" id="filter4601"><feGaussianBlur inkscape:collect="always" stdDeviation="9.025964" id="feGaussianBlur4603" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient3059" id="linearGradient4607" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1,0,0,4.496947,0,-822.1609)" x1="839.81659" y1="215.09087" x2="836.30078" y2="153.0452" /><filter inkscape:collect="always" id="filter4653"><feGaussianBlur inkscape:collect="always" stdDeviation="8.6485882" id="feGaussianBlur4655" /></filter><filter inkscape:collect="always" x="-0.10894429" width="1.2178886" y="-0.17668761" height="1.3533752" id="filter4826"><feGaussianBlur inkscape:collect="always" stdDeviation="1.9101588" id="feGaussianBlur4828" /></filter><filter inkscape:collect="always" x="-0.1440634" width="1.2881268" y="-0.21936503" height="1.4387301" id="filter5032"><feGaussianBlur inkscape:collect="always" stdDeviation="1.7103122" id="feGaussianBlur5034" /></filter><filter inkscape:collect="always" x="-0.30684853" width="1.6136971" y="-0.20180214" height="1.4036043" id="filter5106"><feGaussianBlur inkscape:collect="always" stdDeviation="5.8270206" id="feGaussianBlur5108" /></filter><filter inkscape:collect="always" x="-0.094454055" width="1.1889081" y="-0.14074299" height="1.281486" id="filter5200"><feGaussianBlur inkscape:collect="always" stdDeviation="5.3388835" id="feGaussianBlur5202" /></filter><filter inkscape:collect="always" x="-0.12801512" width="1.2560302" y="-0.3464887" height="1.6929774" id="filter5304"><feGaussianBlur inkscape:collect="always" stdDeviation="3.7809852" id="feGaussianBlur5306" /></filter><filter inkscape:collect="always" x="-0.035006558" width="1.0700131" y="-0.14665898" height="1.293318" id="filter6393"><feGaussianBlur inkscape:collect="always" stdDeviation="6.4832538" id="feGaussianBlur6395" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient6405" id="linearGradient6403" x1="931.52002" y1="872.21838" x2="1079.7725" y2="885.69226" gradientUnits="userSpaceOnUse" /><filter inkscape:collect="always" id="filter3915"><feGaussianBlur inkscape:collect="always" stdDeviation="3.0141434" id="feGaussianBlur3917" /></filter><radialGradient inkscape:collect="always" xlink:href="#linearGradient3332" id="radialGradient3919" gradientUnits="userSpaceOnUse" gradientTransform="matrix(1.200899,0.579174,-0.2156105,0.4470627,8.8637985,-8.9711893)" cx="347.41388" cy="303.43369" fx="347.41388" fy="303.43369" r="154.43303" /><filter inkscape:collect="always" x="-0.097929535" width="1.1958591" y="-0.11166643" height="1.2233329" id="filter3927"><feGaussianBlur inkscape:collect="always" stdDeviation="1.8517745" id="feGaussianBlur3929" /></filter><clipPath clipPathUnits="userSpaceOnUse" id="clipPath3946"><path style="opacity:1;color:#000000;fill:url(#linearGradient3949);fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:3.79999995;stroke-linecap:round;stroke-linejoin:round;marker:none;marker-start:none;marker-mid:none;marker-end:none;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;visibility:visible;display:inline;overflow:visible" id="path3944" sodipodi:nodetypes="csscsccsc" d="M 544.28571,615.14286 C 502.85714,590.85714 445.71429,549.42857 421.42857,533.71429 C 397.14286,518 368.57143,493.71429 354.28571,479.42857 C 340,465.14286 317.14286,445.14286 312.85714,435.14286 C 290,446.57143 297.14286,456.57143 295.71429,462.28571 C 294.28571,468 291.42857,472.28571 291.42857,472.28571 L 218.57143,436.57143 C 218.57143,436.57143 348.57143,509.42857 364.28571,518 C 380,526.57143 548.57143,619.42857 544.28571,615.14286 z " /></clipPath><linearGradient inkscape:collect="always" xlink:href="#linearGradient3931" id="linearGradient3949" gradientUnits="userSpaceOnUse" gradientTransform="translate(0,50)" x1="321.67255" y1="442.76962" x2="325.79459" y2="409.21478" /><clipPath clipPathUnits="userSpaceOnUse" id="clipPath3953"><path style="opacity:1;color:#000000;fill:url(#linearGradient3956);fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:3.79999995;stroke-linecap:round;stroke-linejoin:round;marker:none;marker-start:none;marker-mid:none;marker-end:none;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;visibility:visible;display:inline;overflow:visible" id="path3951" sodipodi:nodetypes="csscsccsc" d="M 544.28571,615.14286 C 502.85714,590.85714 445.71429,549.42857 421.42857,533.71429 C 397.14286,518 368.57143,493.71429 354.28571,479.42857 C 340,465.14286 317.14286,445.14286 312.85714,435.14286 C 290,446.57143 297.14286,456.57143 295.71429,462.28571 C 294.28571,468 291.42857,472.28571 291.42857,472.28571 L 218.57143,436.57143 C 218.57143,436.57143 348.57143,509.42857 364.28571,518 C 380,526.57143 548.57143,619.42857 544.28571,615.14286 z " /></clipPath><linearGradient inkscape:collect="always" xlink:href="#linearGradient3931" id="linearGradient3956" gradientUnits="userSpaceOnUse" gradientTransform="translate(0,50)" x1="321.67255" y1="442.76962" x2="325.79459" y2="409.21478" /><filter inkscape:collect="always" id="filter3982"><feGaussianBlur inkscape:collect="always" stdDeviation="1.2477499" id="feGaussianBlur3984" /></filter><filter inkscape:collect="always" id="filter4008"><feGaussianBlur inkscape:collect="always" stdDeviation="2.5339087" id="feGaussianBlur4010" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient3156" id="linearGradient4012" gradientUnits="userSpaceOnUse" gradientTransform="translate(18.081772,0)" x1="198.10001" y1="362.28571" x2="276.1857" y2="362.28571" /><linearGradient inkscape:collect="always" xlink:href="#linearGradient3156" id="linearGradient4016" gradientUnits="userSpaceOnUse" gradientTransform="translate(84,0)" x1="198.10001" y1="362.28571" x2="276.1857" y2="362.28571" /><filter inkscape:collect="always" id="filter4022"><feGaussianBlur inkscape:collect="always" stdDeviation="1.0729348" id="feGaussianBlur4024" /></filter><filter inkscape:collect="always" id="filter4070"><feGaussianBlur inkscape:collect="always" stdDeviation="1.2671386" id="feGaussianBlur4072" /></filter><filter inkscape:collect="always" x="-0.04195043" width="1.0839009" y="-0.14643413" height="1.2928683" id="filter4097"><feGaussianBlur inkscape:collect="always" stdDeviation="2.7365391" id="feGaussianBlur4099" /></filter><linearGradient inkscape:collect="always" xlink:href="#linearGradient3230" id="linearGradient4101" gradientUnits="userSpaceOnUse" gradientTransform="translate(2.14286,-1045.1974)" x1="260" y1="1203" x2="185" y2="1170.1428" /><filter inkscape:collect="always" x="-0.038803903" width="1.0776078" y="-0.1411126" height="1.2822252" id="filter4119"><feGaussianBlur inkscape:collect="always" stdDeviation="2.419179" id="feGaussianBlur4121" /></filter><filter inkscape:collect="always" id="filter4139"><feGaussianBlur inkscape:collect="always" stdDeviation="5.6950996" id="feGaussianBlur4141" /></filter><filter inkscape:collect="always" id="filter4161"><feGaussianBlur inkscape:collect="always" stdDeviation="4.9493976" id="feGaussianBlur4163" /></filter></defs><sodipodi:namedview id="base" pagecolor="#ffffff" bordercolor="#666666" borderopacity="1.0" gridtolerance="10000" guidetolerance="10" objecttolerance="10" inkscape:pageopacity="0.0" inkscape:pageshadow="2" inkscape:zoom="0.48036041" inkscape:cx="851.92362" inkscape:cy="521.2444" inkscape:document-units="px" inkscape:current-layer="layer3" width="1901px" height="1018px" inkscape:window-width="900" inkscape:window-height="687" inkscape:window-x="10" inkscape:window-y="20" showguides="true" inkscape:guide-bbox="true" showborder="false" /><metadata id="metadata7"><rdf:RDF><cc:Work rdf:about=""><dc:format>image/svg+xml</dc:format><dc:type rdf:resource="http://purl.org/dc/dcmitype/StillImage" /><dc:title>Lamborghini Gallardo</dc:title><dc:date>10.25.2006</dc:date><dc:creator><cc:Agent><dc:title>Michael Grosberg</dc:title></cc:Agent></dc:creator><dc:description>A traced Lamborghini Gallardo.The source image can be found at:http://en.wikipedia.org/wiki/Image:Lamborghini_Gallardo_silver.jpg</dc:description><cc:license rdf:resource="http://creativecommons.org/licenses/by-nc-sa/2.5/" /></cc:Work><cc:License rdf:about="http://creativecommons.org/licenses/by-nc-sa/2.5/"><cc:permits rdf:resource="http://web.resource.org/cc/Reproduction" /><cc:permits rdf:resource="http://web.resource.org/cc/Distribution" /><cc:requires rdf:resource="http://web.resource.org/cc/Notice" /><cc:requires rdf:resource="http://web.resource.org/cc/Attribution" /><cc:prohibits rdf:resource="http://web.resource.org/cc/CommercialUse" /><cc:permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" /><cc:requires rdf:resource="http://web.resource.org/cc/ShareAlike" /></cc:License></rdf:RDF></metadata>';
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