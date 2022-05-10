export default {
  storage: [
    { inputs: [], stateMutability: "nonpayable", type: "constructor" },
    {
      inputs: [{ internalType: "uint256", name: "assetId_", type: "uint256" }],
      name: "getAsset",
      outputs: [{ internalType: "string", name: "", type: "string" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [
        { internalType: "uint256", name: "assetId_", type: "uint256" },
        { internalType: "string", name: "assetString_", type: "string" },
      ],
      name: "setAsset",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function",
    },
  ],
  assemble: [
    {
      inputs: [
        {
          internalType: "address[]",
          name: "assetStorageAddrList_",
          type: "address[]",
        },
      ],
      stateMutability: "nonpayable",
      type: "constructor",
    },
    {
      inputs: [
        { internalType: "address", name: "storageAddr_", type: "address" },
      ],
      name: "addStorage",
      outputs: [{ internalType: "uint256", name: "", type: "uint256" }],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [
        { internalType: "uint256[]", name: "attrs_", type: "uint256[]" },
      ],
      name: "getImage",
      outputs: [{ internalType: "string", name: "", type: "string" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "getStorageCount",
      outputs: [{ internalType: "uint256", name: "", type: "uint256" }],
      stateMutability: "view",
      type: "function",
    },
  ],
  property: [
    {
      inputs: [
        {
          internalType: "address",
          name: "assembleContractAddr_",
          type: "address",
        },
      ],
      stateMutability: "nonpayable",
      type: "constructor",
    },
    {
      inputs: [{ internalType: "uint256", name: "imageId_", type: "uint256" }],
      name: "_setAttr",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [],
      name: "assembleContract",
      outputs: [
        {
          internalType: "contract AssembleInterface",
          name: "",
          type: "address",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [{ internalType: "uint256", name: "imageId_", type: "uint256" }],
      name: "getAttr",
      outputs: [{ internalType: "uint256[]", name: "", type: "uint256[]" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [{ internalType: "uint256", name: "imageId_", type: "uint256" }],
      name: "getImage",
      outputs: [{ internalType: "string", name: "", type: "string" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [
        {
          internalType: "address",
          name: "newAssembleContractAddr_",
          type: "address",
        },
      ],
      name: "setAssembleContract",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function",
    },
  ],
};
