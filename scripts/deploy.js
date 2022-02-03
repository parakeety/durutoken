async function main() {
  const DuruToken = await ethers.getContractFactory("DuruToken")

  const duruToken = await DuruToken.deploy()
  console.log("Contract deployed to address:", duruToken.address)
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error)
    process.exit(1)
  })

