const ESCSpecificOne = artifacts.require("ESCSpecificOne");
const assert = require("assert");

contract("ESCSpecificOne", function (accounts) {
  let cntrct;
  beforeEach(async () => {
    cntrct = await ESCSpecificOne.new();
  });

  it("Check deleting a variable", async function () {
    const b = await cntrct.deleteVariable(7);
    assert.equal(b, 0, "deleting a variable failed");
  });

  it("Check get now timestamp", async function () {
    const b = await cntrct.getNow();
    assert.ok(b.toNumber() > 0, "Get now timestamp failed");
  });

  it("Check get msg sender", async function () {
    const b = await cntrct.getMsgSender();
    assert.ok(b, accounts[0], "Get msg sender failed");
  });

  it("Check Adding and then modulus of three numbers", async function () {
    const b = await cntrct.addThree(3, 6, 3);

    assert.equal(
      b.toNumber(),
      0,
      "Adding and then modulus of three numbers failed"
    );
  });

  it("Check Multiplying and then modulus of three numbers", async function () {
    const b = await cntrct.mulThree(10, 2, 3);

    assert.equal(
      b.toNumber(),
      2,
      "Multiplying and then modulus of three numbers failed"
    );
  });

  it("Check Updating initiation date", async function () {
    let b = 0;
    await cntrct.updateInitiatedDate(604799);
    b = await cntrct.initiatedDate();
    assert.equal(b, 604799, "Updating initiation date failed");
  });

  it("Check Updating Status", async function () {
    let b = 0;
    await cntrct.updateStatus(true);
    b = await cntrct.contractStatus();
    assert.equal(b, true, "Updating status failed");
  });

  it("Check Updating Status from account 2", async function () {
    let b = false;
    try {
      await cntrct.updateStatus(true, { from: accounts[2] });
      b = await cntrct.contractStatus();
    } catch (error) {
      assert.equal(false, b, "Updating contract balance failed");
    }
  });
});
