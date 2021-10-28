const Arthmetic = artifacts.require("Arthmetic");
const assert = require("assert");

contract("Arthmetic", function () {
  let cntrct;
  beforeEach(async () => {
    cntrct = await Arthmetic.new();
  });

  // Set Data
  it("Check for Set Data", async function () {
    cntrct.setData(20).then(() => {
      cntrct.data().then((d) => {
        assert.equal(20, d, "Set data failed");
      });
    });
  });

  it("Check for Invalid Set Data", async function () {
    cntrct.setData(20).then(() => {
      cntrct.data().then((d) => {
        assert.equal(20, d, "Invalid Set data failed");
      });
    });
  });

  it("Check for add", async function () {
    cntrct.add(20, 20).then(() => {
      cntrct.data().then((d) => {
        assert.equal(40, d, "Invalid Set data failed");
      });
    });
  });

  it("Check for addmod", async function () {
    cntrct.addWithMod(20, 20).then(() => {
      cntrct.data().then((d) => {
        assert.equal(41, d, "Invalid Set data failed");
      });
    });
  });
});
