const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Fazendo deploy com a conta:", deployer.address);

  const EcoToken = await ethers.getContractFactory("EcoToken");
  const token = await EcoToken.deploy();
  console.log("EcoToken implantado em:", token.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});