import { ethers } from "ethers";
import fs from "fs";
import rpcProvider from "./config/rpcProvider.js";
import abiList from "./config/abi.js";
import addressList from "./config/addressList.js";

// Set Network Provider
const provider = new ethers.providers.JsonRpcProvider(
  rpcProvider,
  4 // rinkeby
);

// Set Contracts (Property)
const EOSIS = new ethers.Contract(
  addressList.property,
  abiList.property,
  provider
);

// Get Image
const imageId = 0;

EOSIS.getImage(imageId).then((result) => {
  fs.writeFileSync("./assembled.svg", result, { encoding: "utf-8" });
});
