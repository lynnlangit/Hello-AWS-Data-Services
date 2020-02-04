#  Amazon Blockchain Technologies

There are a number of services available in this area on AWS:
1. Amazon Managed Blockchain - Hyperledger Fabric -> permissioned, private network (shown below)
2. Amazon Managed Blockchain - Ethereum (announced, not yet available) -> public network
3. Amazon Quantum Ledger Database (QLDB) - in private preview - [link](https://aws.amazon.com/qldb/)
4. AWS CF Templates for Blockchain (for Hyperledger or Ethereum) - [link](https://aws.amazon.com/blockchain/templates/getting-started/)
-------
## Key Components

 ![AWS Managed Blockchain Concepts](/images/aws-blockchain.png)

- **Ledger Database** (immutable journal of blocks)
- **Consensus Mechanism** - Hyperledger (private) or Ethereum (public)
- **Smart Contracts** (API for consensus mechanisms above (chaincode)
    - currently can be written in Go_lang, Node.js or Java
    - executes within Docker container on peer nodes  


## More Information

![AWS Managed Blockchain End-to-End Tutorial](/images/end-to-end-blockchain.png)  

 - AWS talk on Managed Blockchain components - [link](https://www.youtube.com/watch?v=Zyv8OXyAdVk)
 - Key concepts - [link](https://docs.aws.amazon.com/managed-blockchain/latest/managementguide/network-components.html)
  - Short Tutorial - [link](https://docs.aws.amazon.com/managed-blockchain/latest/managementguide/managed-blockchain-get-started-tutorial.html)
  - End-to-end Tutorial - key concepts shown above   
        - [link to article](https://aws.amazon.com/blogs/database/build-and-deploy-an-application-for-hyperledger-fabric-on-amazon-managed-blockchain/)  
        - [link to GitHub example code](https://github.com/aws-samples/non-profit-blockchain)
  - AWS Blockchain services pricing - [link](https://aws.amazon.com/managed-blockchain/pricing/)



