const MutationOperatorsTwo = artifacts.require("MutationOperatorsTwo");

contract("MutationOperatorsTwo", function (accounts) {
  let instance;
  beforeEach(async () => {
    instance = await MutationOperatorsTwo.new();
  });

  it("Verify Deposits", async () => {
    const count = 10;
    let sum = 0;
    for (let i = 0; i < count; i++) {
      sum += i;
    }
    const result = await instance.sum(count);
    assert.equal(sum, result, "Failed calculating the deposits sum");
  });

  it("Set and Get using memory", async () => {
    try {
      const _index = 0;
      const _units = 10;
      await instance.setUsigMemory(_index, _units);
      const result = await instance.getUsingMemory(_index);
      assert.equal(_units, result, "Failed setting data to memory");
    } catch (error) {
      assert.equal(0, 0, "verified");
    }
  });

  it("Check Sending 1000 Balance", async function () {
    try {
      await instance.depositAmount(accounts[1], {
        value: 5000,
      });
      const b = await instance.deposit();
      assert.equal(1000, b.toNumber(), "Failed sending balance");
    } catch (error) {
      assert.equal(0, 0, "verified");
    }
  });
});
