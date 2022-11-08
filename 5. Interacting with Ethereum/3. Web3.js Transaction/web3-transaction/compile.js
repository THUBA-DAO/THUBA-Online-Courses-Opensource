const fs = require('fs');
const solc = require('solc');
const source = fs.readFileSync("Number.sol", "utf8");
//THUBA DAO版权所有，盗用必究
const input = {
    language: "Solidity",
    sources: {
      "Number.sol": {
        content: source,
      },
    },
    settings: {
      outputSelection: {
        "*": {
          "*": ["*"],
        },
      },
    },
  };
  
const tempFile = JSON.parse(solc.compile(JSON.stringify(input)));
const contractFile = tempFile.contracts["Number.sol"]["Number"];

module.exports = contractFile