const polka = artifacts.require("PolkaBridge");
const assert = require("assert");
function tokens(n) {
  return web3.utils.toWei(n, "ether");
}

contract("polka", function (accounts) {
  const NAME = "PolkaBridge";
  const SYMBOLS = "PBR";
  const DECIMALS = "18";

  let pB;
  beforeEach(async () => {
    pB = await polka.new(999999);
    await pB.transferWithoutDeflationary(accounts[0], 3000);
    await pB.transferWithoutDeflationary(accounts[1], 3000);
    await pB.transferWithoutDeflationary(accounts[2], 3000);
    await pB.transferWithoutDeflationary(accounts[3], 3000);
    await pB.transferWithoutDeflationary(accounts[5], 3000);
  });

  // it("Check for Valid name value", async function () {
  //   pB.name().then((n) => {
  //     assert.equal(n, NAME, "Name check failed");
  //   });
  // });

  // it("Check for Valid symbols value", async function () {
  //   pB.symbol().then((s) => {
  //     assert.equal(s, SYMBOLS, "Symbol check failed");
  //   });
  // });

  // it("Check for Valid decimals value", async function () {
  //   pB.decimals().then((d) => {
  //     assert.equal(d, DECIMALS, "Decimal check failed");
  //   });
  // });

  it("Check for valid deflation date setting", async function () {
    var date = 1635292470;
    pB.setBeginDeflationFarming(date).then(() => {
      pB.getBeginDeflationary().then((d) => {
        assert.equal(date, d, "Deflation farming date setting failed");
      });
    });
  });

  it("Check for valid reward pool addition", async function () {
    pB.addRewardPool(accounts[1]).then(() => {
      pB.getRewardPool(0).then((a) => {
        assert.equal(a, accounts[1], "Vaild Reward pool failed");
      });
    });
  });

  it("Check for increase and decrease allowance with Valid account", async function () {
    pB.increaseAllowance(accounts[2], 20).then(() => {
      pB.decreaseAllowance(accounts[2], 2).then(() => {
        pB.allowance(accounts[0], accounts[2]).then((b) => {
          assert.equal(b.toNumber(), 0, "Decrease allowance failed");
        });
      });
    });
  });

  it("Check for Valid Transfer from acount", async function () {
    pB.totalSupply().then((t) => {
      pB.addWhitelistTransfer(accounts[1], "acc1")
        .then(() => {
          pB.increaseAllowance(accounts[2], 500000).then(() => {
            pB.transferWithoutDeflationary(accounts[2], 1000);
            pB.transferWithoutDeflationary(accounts[1], 1000);
          });
        })
        .then(() => {
          pB.balanceOf(accounts[2]).then((b) => {
            pB.transferFrom(accounts[2], accounts[1], 0, { from: accounts[1] });
            pB.balanceOf(accounts[1]).then((bal) => {
              assert.equal(0, bal.toNumber(), "50 wasn't in the first account");
            });
          });
        });
    });
  });

  it("Check for aproval from approve function", async function () {
    pB.approve(accounts[5], 30).then(() => {
      pB.allowance(accounts[0], accounts[5]).then((b) => {
        assert.equal(b.toNumber(), 30, "Valid Burning failed");
      });
    });
  });

  // it("Check for Valid burn amount", async function () {
  //   pB.increaseAllowance(accounts[0], 100).then(() => {
  //     pB.transfer(accounts[1], 40).then(() => {
  //       pB.transfer(accounts[2], 40).then(() => {
  //         pB.transfer(accounts[0], 40).then(() => {
  //           pB.burn(40).then(() => {
  //             pB.balanceOf(accounts[2]).then((acc1Balance) => {
  //               assert.equal(
  //                 3040,
  //                 acc1Balance.toNumber(),
  //                 "100 wasn't in the first account"
  //               );
  //             });
  //           });
  //         });
  //       });
  //     });
  //   });
  // });

  it("Check for Valid empty transfer, lower farming date, reward pool", async function () {
    var date = 1008431966;
    await pB.setBeginDeflationFarming(date);
    await pB.transfer(accounts[1], 200);
    await pB.addRewardPool(accounts[1]);
    await pB.addRewardPool(accounts[3]);
    await pB.addRewardPool(accounts[2]);
    await pB.removeRewardPool(accounts[3]);
    await pB.removeRewardPool(accounts[2]);
    await pB.removeWhitelistTransfer(accounts[1]);
    await pB.transfer(accounts[1], 2000);
    const r = await pB.countActiveRewardPool();
    await pB.transfer(accounts[1], 20000);
    pB.balanceOf(accounts[1]).then((b) => {
      assert.equal(b.toNumber(), 25189, "Empty transfer failed");
    });
  });

  it("Check for Valid empty transfer, lower farming date, reward pool but whitelisted transfer", async function () {
    var date = 1635292470;
    await pB.setBeginDeflationFarming(date);
    await pB.addRewardPool(accounts[1]);
    await pB.addRewardPool(accounts[3]);
    await pB.addRewardPool(accounts[2]);
    await pB.addWhitelistTransfer(accounts[1], "acc1");
    await pB.transfer(accounts[1], 200);
    const b = await pB.balanceOf(accounts[1]);
    assert.equal(b, 3200, "Empty white listed transfer failed");
  });

  // it("Check for burnFrom using approve with accounts1", async function () {
  //   await pB.approve(accounts[0], 200, { from: accounts[1] });
  //   await pB.burnFrom(accounts[1], 200);
  //   const b = await pB.balanceOf(accounts[1]);
  //   assert.equal(b, 2800, "Empty white listed transfer failed");
  // });
});
