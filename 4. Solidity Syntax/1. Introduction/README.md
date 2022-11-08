# 1. Solidity 简介

Solidity 是一门面向合约的、为实现智能合约而创建的高级编程语言。这门语言受到了 C++，Python 和 Javascript 语言的影响，设计的目的是能在以太坊虚拟机（EVM）上运行。

这门语言是在2014年时，以太坊的其中一个主要创始人 Gavin Wood 提出的，之后以太坊开发团队设立了一个小组，在 Christian Reitwiessner 的带领下进行了 Solidity 语言的开发。

学会了 Solidity，我们便能编写智能合约用作投票、众筹、秘密竞价（盲拍）、多重签名的钱包以及其他应用创建合约，让我们在后续能进行区块链的开发。学好 Solidity 对这门课后续将会有很大的帮助。

以下是一个 Solidity 代码的简单例子。别担心，我们会解释这段代码的含义。这个阶段，我们还不需要完全了解代码所有的细节：
```solidity
pragma solidity ^0.8.10;

contract Intro {
    string public hello = "Hello World!";   // 字符串
    uint public x = 100;                    // 不带符号整型
    int public y = -100;                    // 带符号整型

    /*
     * @param x 被加的数 
     * @return x + 10 的结果
     */
    function addTen(uint x) public view returns (uint) {
        return x + 10;
    }
}
```
THUBA DAO版权所有，盗用必究
通过这个代码可以观察到的是，Solidity 的语法和 C++ 以及 JavaScript 非常相似，都使用了括号。

Solidity 代码在第一行可以注明要使用的 Solidity 编译器版本，这一个代码的第一行 `^0.8.10` 是指版本 0.8.10 或以上的意思。有时候，由于较新的编译器版本会有些破坏性的改动 (breaking change)，那么编译器也会在版本不匹配的时候停止编译这一些代码。虽然注明版本并不是必须的，但这是一个良好的习惯。

每一个 Solidity 必定会有一个合约 `contract`。如果你有学习过其他语言，`contract` 其实就类似于其他语言的类 (class)。每一个 `contract` 中都可以有变量和成员函数。例如，以上的代码有一个叫做 `hello` 的字符串变量，不带符号的整数 `x` 变量，还有带符号整数 `y` 变量。最后，这个合约当中也有一个叫做 addTen 的函数，接受一个不带符号整数作为参数，返回对参数进行 +10 后的数。

最后，我们也可以用 // 来进行单行注释和 /* 一些注释 */ 进行多行注释。

这就是 Solidity 的简单介绍，下一章我们将开始学习 Solidity 的变量。

参考资料：https://solidity-cn.readthedocs.io/zh/develop/index.html
THUBA DAO版权所有，盗用必究
