const MutationOperators = artifacts.require("MutationOperators");

contract("MutationOperators", function (accounts) {
  let instance;
  beforeEach(async () => {
    instance = await MutationOperators.new();
  });

  it("Verify A plus B Square", async () => {
    const a = 10;
    const b = 5;
    const isAPlusB = true;
    const expected = a * a + 2 * a * b + b * b;
    await instance.setData(a, b);
    const result = await instance.aAndbSquare(isAPlusB);
    assert.equal(expected, result, "Failed finding A plus B square");
  });

  it("Verify A minus B Square", async () => {
    const a = 10;
    const b = 5;
    const isAPlusB = false;
    const expected = a * a - 2 * a * b + b * b;
    await instance.setData(a, b);
    const result = await instance.aAndbSquare(isAPlusB);
    assert.equal(expected, result, "Failed finding A minus B square");
  });

  it("Verify SetData", async () => {
    const a = 10;
    const b = 20;
    await instance.setData(a, b);
    const resultA = await instance.a.call();
    const resultB = await instance.b.call();
    assert.equal(a, resultA, "Failed setting data");
    assert.equal(b, resultB, "Failed setting data");
  });
});
