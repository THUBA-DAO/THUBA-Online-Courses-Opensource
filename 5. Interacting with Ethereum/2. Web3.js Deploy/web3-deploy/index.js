const contractFile = require('./compile');
const bytecode = contractFile.evm.bytecode.object;
const abi = contractFile.abi;
//THUBA DAO版权所有，盗用必究
require('dotenv').config();
const privateKey = process.env.PRIVATE_KEY;
const infuraId = process.env.INFURA_ID;

const Web3 = require('web3');
const web3 = new Web3('https://goerli.infura.io/v3/' + infuraId);
const account = web3.eth.accounts.privateKeyToAccount(privateKey);
//THUBA DAO版权所有，盗用必究
const deploy = async() => {
    const contract = new web3.eth.Contract(abi);
    const deployContract = contract.deploy({
        data: bytecode,
        arguments: [10],
    });
    const transaction = await web3.eth.accounts.signTransaction(
        {
            data: deployContract.encodeABI(),
            gas: 8000000,
        },
        account.privateKey
    );
    const receipt = await web3.eth.sendSignedTransaction(
        transaction.rawTransaction
    );
    console.log(`Contract address: ${receipt.contractAddress}`);
}

deploy()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });