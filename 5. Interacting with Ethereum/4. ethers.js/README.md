# Ethers.js 介绍

这里将介绍另一个很热门的 JS 库，叫做 ethers.js

## 安装
在项目文件夹中执行以下命令：
```bash
npm i ethers
```

## 初始化
```javascript
const { ethers } = require('ethers');
const provider = new ethers.providers.JsonRpcProvider('https://goerli.infura.io/v3/' + infuraId);
const wallet = new ethers.Wallet(privateKey, provider)
```
以上做了三件事情
1. 导入 ethers 对象
2. 构造 RpcProvider 对象，要传入 Infura 的网址和 ID
3. 构造钱包对象，要传入钱包 privateKey 和以上构造的 Provider

## 调用 `get` 和 `add`

先定义一个 `trans` 函数:
```javascript
const trans = async () => { ... }
```

当中，我们必须先构造一个合约对象
```javascript
const contract = new ethers.Contract(contractAddress, abi, provider);
```
当中的 `contractAddress` 和 `abi` 都是我们之前部署的 `Number.sol`

### 调用 `get`
```javascript
const number1 = await contract.get();
console.log('Number is ' + number1);
```

### 调用 `add`
```javascript
const contractWithWallet = contract.connect(wallet);
const tx = await contractWithWallet.add(10);
await tx.wait();
console.log(tx);
```
首先必须连接到钱包，并通过钱包签署后调用 `add` 函数。

## Web3.js vs Ethers.js

web3.js 和 ethers.js 都可以实现的任务基本一致，不同点在于这两个库的开发背景和使用方式，以下会作一些简单的比较。

### 开发情况

截至2022年6月的 GitHub 数据：
|            | Web3.js | ethers.js |
|------------|--------| ---------- |
| 最初发布时间 | 2015年2月 | 2016年7月 |
| GitHub 星数 | 15.3k | 5.1k |
| 贡献者人数 | 288 | 14 |

可以看出，Web3.js 由于发布时间更早，参与其开发的人数也更多。

### 使用方式

比较我们在前两个小节所写的代码，可以观察这两个库的差别

### 1. 初始化

web3.js 会初始化一个 `web3` 对象，之后的操作都会通过这个对象的成员函数实现。

ethers.js 会初始化一个 `provider` 对象，连接到我们的 JSON RPC。在之后的操作（如：构造合约对象）必须先传入 `provider`。

```javascript
// web3.js
const web3 = new Web3('https://goerli.infura.io/v3/' + infuraId);

// ethers.js
const provider = new ethers.providers.JsonRpcProvider('https://goerli.infura.io/v3/' + infuraId);
```

### 2. 构造合约对象

```javascript
// web3.js
const contract = new web3.eth.Contract(abi, contractAddress);

// ethers.js
const contract = new ethers.Contract(contractAddress, abi, provider);
```

### 3. 调用 `get` 函数

```javascript
// web3.js
const num = await contract.methods.get().call();

// ethers.js
const num = await contract.get();
```

### 4. 调用 `add` 函数

```javascript
// web3.js
const add = number.methods.add(10);
const transaction = await web3.eth.accounts.signTransaction(
    {
        to: contractAddress,
        data: add.encodeABI(),
        gas: 8000000,
    },
    account.privateKey
);
const receipt = await web3.eth.sendSignedTransaction(
    transaction.rawTransaction
);

// ethers.js
const wallet = new ethers.Wallet(privateKey, provider)
const contractWithWallet = contract.connect(wallet);
const transaction = await contractWithWallet.add(10);
await transaction.wait();
```

参考资料
1. https://github.com/dappuniversity/ethers_examples/tree/master/examples
2. https://dev.to/lparvinsmith/web3js-vs-ethersjs-a-comparison-of-web3-libraries-2ap5

THUBA DAO版权所有，盗用必究