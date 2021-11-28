const TraditionalOne = artifacts.require("TraditionalOne");
const assert = require("assert");

contract("TraditionalOne", function () {
  let cntrct;
  beforeEach(async () => {
    cntrct = await TraditionalOne.new();
  });

  // it("Check Sort", async function () {
  //   cntrct.sort().then(() => {
  //     cntrct.arr(1).then((d) => {
  //       assert.equal(7, d.toNumber(), "Set data failed");
  //     });
  //   });
  // });

  // it("Check for IndexoOInt", async function () {
  //   cntrct.indexOfInt(9).then(() => {
  //     cntrct.data().then((d) => {
  //       assert.equal(2, d, "IndexofInt failed");
  //     });
  //   });
  // });

  it("Check for getRange", async function () {
    cntrct.getRange().then(() => {
      cntrct.data().then((d) => {
        assert.equal(4, d, "IndexofInt failed");
      });
    });
  });

  it("Check for Index of", async function () {
    cntrct.indexOf("Hello World", "World").then(() => {
      cntrct.data().then((d) => {
        assert.equal("0", d.toString(), "Index of failed");
      });
    });
  });
  /*
  it("Check getUInt", async function () {
    cntrct.getUint8FromByte32().then(() => {
      cntrct.data().then((d) => {
        assert.equal(10, d, "Invalid getUInt failed");
      });
    });
  });*/
  // it("Check Sort2", async function () {
  //   cntrct.sort().then(() => {
  //     cntrct.arr(1).then((d) => {
  //       assert.equal(7, d.toNumber(), "Set data failed");
  //     });
  //   });
  // });
});
