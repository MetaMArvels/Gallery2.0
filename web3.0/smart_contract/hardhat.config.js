// https://eth-sepolia.g.alchemy.com/v2/M2BsV1A-SrCX2hJZWNqOkdzEoI9Jm5jS

require('@nomiclabs/hardhat-waffle')

module.exports = {
  solidity: '0.8.0' ,
  networks:{
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/M2BsV1A-SrCX2hJZWNqOkdzEoI9Jm5jS" ,
      accounts: ["ab7106193e5666ba194876b34e71e76b015ab373c6fd85a308218e85600ab104"]
    }
  }
}