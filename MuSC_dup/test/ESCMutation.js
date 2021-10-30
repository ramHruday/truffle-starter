const ESCSpecific = artifacts.require("ESCSpecific");
const assert = require("assert");

contract("ESCSpecific", function (accounts) {
  let cntrct;
  beforeEach(async () => {
    cntrct = await ESCSpecific.new(1000);
  });

  // Send Half Balance
  it("Check Sending Half Balance", async function () {
    cntrct.sendHalfBalance(accounts[1]).then((b) => {
      assert.equal(500, b.toNumber(), "Sending Half Balance failed");
    });
  });
});
