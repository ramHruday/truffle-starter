const Arthmetic = artifacts.require("Arthmetic");
const assert = require("assert");

contract("Arthmetic", function () {
  let cntrct;
  beforeEach(async () => {
    cntrct = await Arthmetic.new();
  });

  it("Check for pwr", async () => {
    cntrct.pwr(3, 2).then(() => {
      cntrct.data().then((d) => {
        assert.equal(9, d, "Invalid pwr failed ");
      });
    });
  });

  it("Check to String", async () => {
    cntrct.turnToString(0).then(() => {
      cntrct.data().then((d) => {
        assert.equal("0", d, "toString failed ");
      });
    });
  });
  it("Check contains", async () => {
    cntrct.contains(8).then(() => {
      cntrct.data().then((d) => {
        assert.equal(1, d.toNumber(), "Contains failed ");
      });
    });
  });
  it("Check concat", async function () {
    cntrct.concati().then(() => {
      cntrct.array3(1).then((d) => {
        assert.equal(7, d.toNumber(), "concat failed");
      });
    });
  });
  it("Check Compare Sums", async () => {
    await cntrct.compareSums();
    d = await cntrct.data();
    assert.equal(2, d.toNumber(), "compare sums failed ");
  });
  // it("Check for pwr2", async () => {
  //   cntrct.pwr(3, 2).then(() => {
  //     cntrct.data().then((d) => {
  //       assert.equal(9, d.toNumber(), "Invalid pwr failed ");
  //     });
  //   });
  // });
});
