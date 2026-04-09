require("dotenv").config();

const { PinataSDK } = require("pinata");
new PinataSDK({ pinataJwt: process.env.PINATA_JWT }).upload.public
  .json({
    name: "My First NFT",
    attributes: [
      {
        trait_type: "Peace",
        value: 10,
      },
      {
        trait_type: "Love",
        value: 100,
      },
      {
        trait_type: "Web3",
        value: 1000,
      }
    ],
    image: "ipfs://bafkreic3b7disuepelejuxytka5lrk7mgifqkgubwsiqcf4ye7pzwwf7uq",
    description: "Web3 Peace and Love!",
  })
  .name("my1stnft.json")
  .then(console.log)
  .catch(console.error);
